using System;
using System.Security.Cryptography;
using System.Text;
using System.Windows;
using System.Net.Sockets;
using System.Net.Security;
using System.IO;
using System.Threading.Tasks;
using System.Security.Cryptography.X509Certificates;

namespace LANOrigin
{
    /// <summary>
    /// MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }
        private async void LoginButton_Click(object sender, RoutedEventArgs e)
        {
            string username = UsernameBox.Text;
            string password = PasswordBox.Password;
            string hashedPassword = ComputeMD5Hash(password);

            string response = await SendLoginRequest(username, hashedPassword);

            if (response == "success")
            {
                MessageBox.Show("Login successful!", "successful", MessageBoxButton.OK, MessageBoxImage.Information);
                GamesWindow gamesWindow = new GamesWindow();
                gamesWindow.Show();

                this.Close();
            }
            else
            {
                MessageBox.Show("Incorrect login details!", "error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private async Task<string> SendLoginRequest(string username, string passwordHash)
        {
            try
            {
                using (TcpClient client = new TcpClient("127.0.0.1", 5000))
                using (SslStream sslStream = new SslStream(client.GetStream(), false, new RemoteCertificateValidationCallback(ValidateServerCertificate)))
                {
                    await sslStream.AuthenticateAsClientAsync("localhost");

                    string loginData = username + ":" + passwordHash;
                    byte[] dataToSend = Encoding.UTF8.GetBytes(loginData + "\n");
                    await sslStream.WriteAsync(dataToSend, 0, dataToSend.Length);
                    await sslStream.FlushAsync();

                    byte[] buffer = new byte[1024];
                    int bytesRead = await sslStream.ReadAsync(buffer, 0, buffer.Length);
                    return Encoding.UTF8.GetString(buffer, 0, bytesRead).Trim();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Server error: " + ex.Message, "error", MessageBoxButton.OK, MessageBoxImage.Error);
                return "error";
            }
        }

        public static bool ValidateServerCertificate(object sender, X509Certificate certificate, X509Chain chain, SslPolicyErrors sslPolicyErrors)
        {
            return true;
        }


        private string ComputeMD5Hash(string input)
        {
            using (MD5 md5 = MD5.Create())
            {
                byte[] inputBytes = Encoding.UTF8.GetBytes(input);
                byte[] hashBytes = md5.ComputeHash(inputBytes);

                StringBuilder sb = new StringBuilder();
                foreach (byte b in hashBytes)
                {
                    sb.Append(b.ToString("x2"));
                }
                return sb.ToString();
            }
        }

    }
}