using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Security;
using System.Net.Sockets;
using System.Security.Authentication;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace OrginLANServer
{
    public static class SSLServer
    {
        public static readonly object _sync = new object();
        public static bool _exit;
        public static bool useSSL;
        public static RichTextBox box = null;
        public static TcpListener lSSLServer = null;
        public static bool basicMode = false;

        public static void Start()
        {
            useSSL=true;
            SetExit(false);
            Log("");
            Log("Starting SSL Server...");
            new Thread(tSSLServerMain).Start();
            for (int i = 0; i < 10; i++)
            {
                Thread.Sleep(10);
                Application.DoEvents();
            }
        }

        public static void Stop()
        {
            Log("Backend stopping...");
            if (lSSLServer != null) lSSLServer.Stop();
            SetExit(true);
            Log("Done.");
        }

        public static void tSSLServerMain(object obj)
        {
            X509Certificate2 cert = null;
            try
            {
                Log("[SSL] Server starting...");
                lSSLServer = new TcpListener(IPAddress.Parse(ProviderInfo.backendIP), 5000);
                Log("[SSL] Server bound to  " + ProviderInfo.backendIP + ":5000");
                lSSLServer.Start();
                if (useSSL)
                {
                    Log("[SSL] Loading Cert...");
                    string exeDirectory = AppDomain.CurrentDomain.BaseDirectory;
                    string pfxFilePath = Path.Combine(exeDirectory, "cert.pfx");
                    cert = new X509Certificate2(pfxFilePath, "123456");
                }
                Log("[SSL] Server listening...");
                TcpClient client;
                while (!GetExit())
                {
                    client = lSSLServer.AcceptTcpClient();
                    Log("[SSL] Client connected");
                    if (useSSL)
                    {
                        SslStream sslStream = new SslStream(client.GetStream(), false);
                        sslStream.AuthenticateAsServer(cert, false, SslProtocols.Ssl3 | SslProtocols.Default | SslProtocols.None | SslProtocols.Ssl2| SslProtocols.Tls| SslProtocols.Tls11| SslProtocols.Tls12, false);
                        byte[] data = Helper.ReadContentSSL(sslStream);

                        if (!basicMode)
                        {
                            Log("[SSL] Recvdump:\n" + Encoding.ASCII.GetString(data));
                        }

                        try
                        {
                            ProcessSSLData(Encoding.ASCII.GetString(data), sslStream);
                        }
                        catch
                        {

                        }


                        //sslStream.Write(data);
                        //sslStream.Flush();
                        client.Close();
                    }
                    else
                    {
                        NetworkStream stream = client.GetStream();
                        byte[] data = Helper.ReadContentTCP(stream);

                        if (!basicMode)
                        {
                            Log("[SSL] Recvdump:\n" + Encoding.ASCII.GetString(data));
                        }

                        try
                        {
                            ProcessData(Encoding.ASCII.GetString(data), stream);
                        }
                        catch
                        {

                        }


                        //stream.Write(data, 0, data.Length);
                        //stream.Flush();
                        client.Close();
                    }
                }
            }
            catch (Exception ex)
            {
                LogError("SSL", ex);
            }
        }

        public static void ProcessData(string data, Stream s)
        {
        }


        public static void ProcessSSLData(string data, SslStream s)
        {

            byte[] datas = Encoding.ASCII.GetBytes("success");
            s.Write(datas);
            s.Flush();
        }


        public static void SetExit(bool state)
        {
            lock (_sync)
            {
                _exit = state;
            }
        }

        public static bool GetExit()
        {
            bool result;
            lock (_sync)
            {
                result = _exit;
            }
            return result;
        }

        public static void Log(string s)
        {
            if (box == null) return;
            try
            {
                box.Invoke(new Action(delegate
                {
                    string stamp = DateTime.Now.ToShortDateString() + " " + DateTime.Now.ToLongTimeString() + " : ";
                    box.AppendText(stamp + s + "\n");
                    ServerLog.Write(stamp + s + "\n");
                    box.SelectionStart = box.Text.Length;
                    box.ScrollToCaret();
                }));
            }
            catch { }
        }

        public static void LogError(string who, Exception e, string cName = "")
        {
            string result = "";
            if (who != "") result = "[" + who + "] " + cName + " ERROR: ";
            result += e.Message;
            if (e.InnerException != null)
                result += " - " + e.InnerException.Message;
            Log(result);
        }
    }
}
