using System;
using System.Collections.Generic;
using System.Text;
using DataAccessLayer;

namespace BusinessLogicLayer
{
    public class Plot
    {
        private string plotName;
        private string farmName;
        private string plant;
        private List<ReadingsDec> readings;

        

        public Plot(string farmNamePrm, string plotNamePrm, string plantPrm, List<ReadingsDec> readingsPrm)
        {
            this.PlotName = plotNamePrm;
            this.FarmName = farmNamePrm;
            this.Plant = plantPrm;
            this.Readings = readingsPrm;
        }
        public Plot()
        {

        }
        
        public string PlotName { get => plotName; set => plotName = value; }
        public string FarmName { get => farmName; set => farmName = value; }
        public string Plant { get => plant; set => plant = value; }
        public List<ReadingsDec> Readings { get => readings; set => readings = value; }

        public List<Plot> ReturnListOfPlots()
        {
            List<Plot> plots = new List<Plot>();
            //List<string> rawData = RetriveData();
            List<string> rawData = RetriveData("Test");
            ReadingsDec readingHelper = new ReadingsDec();
            int dataRows = rawData.Count;
            for (int i = 1; i < dataRows; i++)
            {
                string[] itemData = rawData[i].Split(',');
                plots.Add(new Plot(rawData[0], itemData[0], itemData[9], readingHelper.ReturnReadings(Convert.ToDouble(itemData[1]), Convert.ToDouble(itemData[2]), Convert.ToDouble(itemData[3]), Convert.ToDouble(itemData[4]),
                                                                                    Convert.ToDouble(itemData[5]), Convert.ToDouble(itemData[6]), Convert.ToDouble(itemData[7]), Convert.ToDouble(itemData[8]))));
            }

            return plots;
        }

        List<string> RetriveData()
        {
            FileHandler handler = new FileHandler("/Data.csv");
            List<string> rawData = handler.ReadDataFromCSV();
            return rawData;
        }

        List<string> RetriveData(string test)
        {
            List<string> rawData = new List<string>();
            rawData.Add("FarmVille 2");
            rawData.Add("Green,43,23,2.3,32,3.4,23,43,54,Tamato");
            rawData.Add("Yellow,52,45,67,78,73,68,69,74,67,Beans");
            rawData.Add("Stripes,37,37,35,78,45,35,17,64,64,73,Pomegrate");

            return rawData;
        }
    }
}
