using System;
using System.Collections.Generic;
using System.Net;
using System.Net.Sockets;
using System.Text;
using System.Threading;
using BusinessLogicLayer;
using HelperLib;

namespace EdenFarmsServer
{
    public class ServerObject
    {
        List<Socket> clients = new List<Socket>();
        IPHostEntry host;
        IPAddress iPAddress;
        IPEndPoint endPoint;
        Socket serverSocket;
        Thread acceptingThread;
        Thread recievingThread;

        public ServerObject()
        {
            ServerInitialize();
            StartServer();
        }

        public void ServerInitialize()
        {
            
            host = Dns.Resolve("172.16.3.189"); //DNS
            iPAddress = host.AddressList[3]; //0
            endPoint = new IPEndPoint(iPAddress, ChangableVariables.portNumber);

            serverSocket = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);
            Console.WriteLine("Server setting up............");
            Thread.Sleep(1000);
        }

        public void StartServer()
        {
            serverSocket.Bind(endPoint);
            serverSocket.Listen(10);

            acceptingThread = new Thread(() => AllowConnections());
            acceptingThread.Start();
            Console.WriteLine("Server Started............");
            Thread.Sleep(1000);
        }

        public void AllowConnections()
        {
            while (true)
            {
                Socket client = serverSocket.Accept();
                clients.Add(client);
                recievingThread = new Thread(() => RecieveClientData(client));
                recievingThread.Start();
                Console.WriteLine("Connection Found............");
                Thread.Sleep(1000);
            }
        }

        public void RecieveClientData(Socket client)
        {
            while (true)
            {
                byte[] buffer = new byte[client.ReceiveBufferSize];
                client.Receive(buffer);

                SerializableObject connectionRequest = (SerializableObject)buffer.BinaryDeserialization();

                Console.WriteLine(connectionRequest.ToString());
                List<string> tesData = new List<string> { "One", "Two", "Three" };
                client.Send(new SerializableObject(connectionRequest.Farm, tesData).BinarySerialization());
                
            }
        }

        public void SendFileTest()
        {

        }

        public void StopServer()
        {
        }
    }
}
