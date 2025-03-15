using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OrginLANServer
{
    class ServerLog
    {
        public static string logFile = "ServerLog.txt";
        public static void Clear()
        {
            if (File.Exists(logFile))
                File.Delete(logFile);
        }

        public static void Write(string s)
        {
            File.AppendAllText(logFile, s);
        }
    }
}
