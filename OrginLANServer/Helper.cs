using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Security;
using System.Net.Sockets;
using System.Text;
using System.Threading.Tasks;
using System.Diagnostics;
using System.Windows.Forms;

namespace OrginLANServer
{
    public static class Helper
    {
        public static byte[] ReadContentSSL(SslStream sslStream)
        {
            MemoryStream res = new MemoryStream();
            byte[] buff = new byte[0x10000];
            sslStream.ReadTimeout = 100;
            int bytesRead;
            try
            {
                while ((bytesRead = sslStream.Read(buff, 0, 0x10000)) > 0)
                    res.Write(buff, 0, bytesRead);
            }
            catch { }
            sslStream.Flush();
            return res.ToArray();
        }
        public static byte[] ReadContentTCP(NetworkStream Stream)
        {
            MemoryStream res = new MemoryStream();
            byte[] buff = new byte[0x10000];
            Stream.ReadTimeout = 100;
            int bytesRead;
            try
            {
                while ((bytesRead = Stream.Read(buff, 0, 0x10000)) > 0)
                    res.Write(buff, 0, bytesRead);
            }
            catch { }
            Stream.Flush();
            return res.ToArray();
        }
    }
}
