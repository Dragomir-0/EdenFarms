using System;
using System.IO;
using System.Threading;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EdenFarmsServer.BLL
{
    class FileDirectoryWatcher
    {
        private string dir = "";

        private FileSystemWatcher watcher = new FileSystemWatcher();

        public FileDirectoryWatcher()
        {
            Thread FDWThread = new Thread(getDirectory);
            FDWThread.Start();
        }

        public void getDirectory()
        {

            bool loop = true;

            while (loop == true)
            {
                //Console.WriteLine("Enter the directory to be monitored:");

                string input = "D:\\Documents\\1.Check This";//Console.ReadLine();

                try
                {
                    if (Directory.Exists(input))
                    {
                        //Console.WriteLine("Monitoring:" + input);
                        dir = input;
                        loop = false;
                    }
                    else
                    {
                        //Console.WriteLine("Directory does not exist...");
                        throw new DirectoryNotFoundException();
                    }
                }
                catch (DirectoryNotFoundException dnfe)
                {

                }
            }
            startWatching();
        }

        public void startWatching()
        {
            watcher.Path = dir;

            watcher.Filter = "*.*";

            watcher.Changed += OnChanged;
            watcher.Created += OnChanged;
            watcher.Deleted += OnChanged;
            watcher.Renamed += OnRenamed;

            watcher.EnableRaisingEvents = true;

            Console.WriteLine("Press 'q' to quit the sample.");
            while (Console.Read() != 'q') ;

        }

        public void OnChanged(object sender, FileSystemEventArgs e)
        {
            sendInfo($"File: {e.FullPath} {e.ChangeType}");
        }

        public void OnRenamed(object sender, RenamedEventArgs re)
        {
            sendInfo($"File: {re.OldFullPath} renamed to {re.FullPath}");
        }

        public void sendInfo(string data)
        {

        }
    }
}
