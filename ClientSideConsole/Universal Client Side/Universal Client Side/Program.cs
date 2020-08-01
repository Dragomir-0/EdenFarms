using System;
using System.Collections.Generic;
using System.Threading;
using BusinessLogicLayer;

namespace Universal_Client_Side
{
    class Program
    {
        static void Main(string[] args)
        {
            Plot plotHandler = new Plot();
            List<Plot> plotsToView = plotHandler.ReturnListOfPlots();


            while (true)
            {

                foreach (var plotItem in plotsToView)
                {
                    Console.WriteLine("|====================================================================|");
                    Console.ForegroundColor = ConsoleColor.Blue;
                    Console.Write("Plot: {0}:  ", plotItem.PlotName);
                    Console.WriteLine("Plant: {0}", plotItem.Plant);
                    Console.ForegroundColor = ConsoleColor.Magenta;
                    Console.Write("Property:        "); Console.Write("Optimal:    "); Console.Write("   True Value:     "); Console.WriteLine("Action:     ");
                    //Used to disdplay info from the sensors and actions
                    foreach (ReadingsDec readingItem in plotItem.Readings)
                    {
                        
                        int test = readingItem.GenerateTest();

                        Console.ForegroundColor = ConsoleColor.White;
                        Console.Write("{0} | ", readingItem.ReadingName.ToNameString());
                    
                        Console.ForegroundColor = ConsoleColor.Green;
                        Console.Write(" {0}\t\t", readingItem.ReadingOptimal);
                        UpdateEnviroment(test);
                        Console.WriteLine(" {0}\t\t| {1}",readingItem.ReadingValue.ToString().Substring(0,4), readingItem.Action[test]);

                        Console.ForegroundColor = ConsoleColor.DarkMagenta;
                        Console.WriteLine("----------------------------------------------------------------------");
                        Console.WriteLine();

                    }
                }
                Console.ForegroundColor = ConsoleColor.DarkGray;
                Console.WriteLine("This is for demonstation purposes only");
                Thread.Sleep(20000);
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
