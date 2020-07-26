using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BusinessLogicLayer;

namespace EdenFarmsServer
{
    class Program
    {
        static void Main(string[] args)
        {
            Login lg = new Login();
            Console.WriteLine("Enter username");
            string username = Console.ReadLine();
            Console.WriteLine("Enter password");
            string password = Console.ReadLine();
            Console.WriteLine(lg.AttemptLogin(username, password));
            Console.ReadLine();
        }
    }
}
