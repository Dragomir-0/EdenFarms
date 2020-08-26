using System;
using System.Collections.Generic;
using System.Text;


namespace BusinessLogicLayer
{
    [Serializable]
    public class SerializableObject
    {
        //Use to display farm target 
        private string farm;
        //used to Data
        private List<string> plotData;
        //requset conenction
        private string connectionRequest;


        /// <summary>
        /// Used to send data to farm.
        /// </summary>
        /// <param name="farmPrm">Farm ID according to Database</param>
        /// <param name="plotDataPrm">Data to send to farm</param>
        public SerializableObject(string farmPrm, List<string> plotDataPrm)
        {
            Farm = farmPrm;
            PlotData = plotDataPrm;
        }

        /// <summary>
        /// Request update from Farm to Server
        /// </summary>
        /// <param name="farmPrm">Farm ID</param>
        /// <param name="connectionRequestPrm">Connection data {WIP}</param>
        public SerializableObject(string farmPrm, string connectionRequestPrm)
        {
            Farm = farmPrm;
            ConnectionRequest = connectionRequestPrm;
        }
        
        public string Farm { get => farm; set => farm = value; }
        public List<string> PlotData { get => plotData; set => plotData = value; }
        public string ConnectionRequest { get => connectionRequest; set => connectionRequest = value; }

        public override bool Equals(object obj)
        {
            return base.Equals(obj);
        }

        public override int GetHashCode()
        {
            return base.GetHashCode();
        }

        public override string ToString()
        {
            return this.Farm + " " + this.ConnectionRequest;
        }

        public string ToConsoleString()
        {
            string listData = this.PlotData[0];
            int lengthOfList = this.PlotData.Count;
            for (int i = 1; i < lengthOfList; i++)
            {
                listData += ", " + this.PlotData[i];
            }
            return this.Farm + ":   " + listData;
        }
    }
}
