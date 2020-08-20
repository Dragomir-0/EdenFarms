using System;
using System.Collections.Generic;
using System.Net;
using System.Net.Sockets;
using System.Text;
using HelperLib;
using BusinessLogicLayer;
using System.Threading;

namespace ClientRequest
{
    public class ClientObject
    {
        IPHostEntry host;
        IPAddress ipAddress;
        IPEndPoint remoteEndPoint;
        Socket clientSocket;
        Thread recievingThread;

        /// <summary>
        /// Create Connection from Client
        /// </summary>
        public ClientObject()
        {
            ClientInitialize();
            StartClient();
        }

        public void ClientInitialize()
        {
            host = Dns.Resolve("172.16.3.189");
            ipAddress = host.AddressList[3];
            remoteEndPoint = new IPEndPoint(ipAddress, ChangableVariables.portNumber);

            clientSocket = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);
        }

        public void StartClient()
        {
            clientSocket.Connect(remoteEndPoint);
        }

        public void StopClient()
        {
            clientSocket.Shutdown(SocketShutdown.Both);
            clientSocket.Close();
        }

        /// <summary>
        /// Requests a file for client to update
        /// </summary>
        /// <param name="connectionRequest">Connection Request Object</param>
        public void SendToServer(SerializableObject connectionRequest)
        {
            byte[] dataToSent = connectionRequest.BinarySerialization();
            clientSocket.Send(dataToSent);
            //clientSocket.Listen(10);
            //Socket server = clientSocket.Accept();

            recievingThread = new Thread(() => RecieveServerData(clientSocket));
            recievingThread.Start();
            Console.WriteLine("Server Conencted");
        }

        public void RecieveServerData(Socket server)
        {
            while (true)
            {
                byte[] buffer = new byte[server.ReceiveBufferSize];
                server.Receive(buffer);

                SerializableObject connectionReply = (SerializableObject)buffer.BinaryDeserialization();

                Console.WriteLine(connectionReply.ToConsoleString());

            }
        }
    }
}
