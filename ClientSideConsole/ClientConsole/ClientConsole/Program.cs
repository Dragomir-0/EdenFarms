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
            ReadingsDec readingHandler = new ReadingsDec();
            List<ReadingsDec> itemsToDisplay = readingHandler.ReturnReadings();


            while (true)
            {
                //Used to disdplay info from the sensors and actions
                foreach (ReadingsDec readingItem in itemsToDisplay)
                {
                    int test = readingItem.GenerateTest();
                    Console.ForegroundColor = ConsoleColor.White;
                    Console.Write    ("Property:   ");
                    Console.ForegroundColor = ConsoleColor.Blue;
                    Console.WriteLine(readingItem.ReadingName);
                    Console.ForegroundColor = ConsoleColor.DarkMagenta;
                    Console.ForegroundColor = ConsoleColor.White;
                    Console.Write    ("Optimal:    ");
                    Console.ForegroundColor = ConsoleColor.Green;
                    Console.WriteLine(readingItem.ReadingOptimal);
                    Console.ForegroundColor = ConsoleColor.DarkMagenta;
                    Console.ForegroundColor = ConsoleColor.White;
                    Console.Write    ("True Value: ");
                    UpdateEnviroment(test);
                    Console.WriteLine(readingItem.ReadingValue);
                    Console.ForegroundColor = ConsoleColor.DarkMagenta;
                    Console.ForegroundColor = ConsoleColor.White;
                    Console.WriteLine();
                    Console.Write    ("Action:     ");
                    UpdateEnviroment(test);
                    Console.WriteLine(readingItem.Action[test]);
                    
                    Console.ForegroundColor = ConsoleColor.DarkMagenta;
                    Console.WriteLine("----------------------------------");
                    Console.WriteLine();
                }
                Console.ForegroundColor = ConsoleColor.DarkGray;
                Console.WriteLine("This is for demonstation purposes only");
                Console.ReadKey();
                Console.Clear();
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
                    Console.ForegroundColor = ConsoleColor.Yellow;
                    break;
                default:
                    Console.ForegroundColor = ConsoleColor.Red;
                    break;
            }
        }

    }
}
