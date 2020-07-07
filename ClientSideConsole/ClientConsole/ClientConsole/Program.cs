using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClientConsole
{
    class Program
    {
        static void Main(string[] args)
        {

            List<Reading> itemsToDisplay = new List<Reading>();


            while (true)
            {
                //Used to disdplay info from the sensors and actions
                foreach (Reading readingItem in itemsToDisplay)
                {
                    Console.ForegroundColor = ConsoleColor.DarkMagenta;
                    Console.WriteLine(" {0}");
                    Console.ForegroundColor = ConsoleColor.DarkMagenta;
                    Console.WriteLine(" {0}");
                    Console.ForegroundColor = ConsoleColor.DarkMagenta;
                    Console.WriteLine(" {0}");
                    Console.ForegroundColor = ConsoleColor.DarkMagenta;
                    Console.WriteLine("This is for demonstation purposes only");
                    Console.ForegroundColor = ConsoleColor.DarkMagenta;
                }
                
            }
        }
        
        public static void UpdateEnviroment(int test)
        {
            switch (test)
            {
                case 0:
                    Console.ForegroundColor = ConsoleColor.Cyan;
                    break;
                case 1:
                    Console.ForegroundColor = ConsoleColor.Green;
                    break;
                case 2:
                    Console.ForegroundColor = ConsoleColor.Red;
                    break;
                default:
                    break;
            }
        }

    }
}
