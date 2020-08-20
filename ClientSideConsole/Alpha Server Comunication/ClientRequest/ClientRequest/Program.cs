using System;
using HelperLib;
using BusinessLogicLayer;

namespace ClientRequest
{
    class Program
    {
        static void Main(string[] args)
        {

            Console.WriteLine("Booted Succesfully");
            Console.ReadKey();
            
            SerializableObject testFarm = new SerializableObject("FarmVille 367", "Plot located Here, Update");
                ClientObject clientSocket = new ClientObject();
            while (true)
            {
                clientSocket.SendToServer(testFarm);
                Console.WriteLine("Request Sent");
                Console.ReadLine();
            }
                
            
            
        }
    }
}
