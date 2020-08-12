using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogicLayer
{
    public class ReadingsDec : Reading
    {
        //Value retrived from sensors
        private double readingValue;

        //Optimal Recorded
        private double readingOptimal;

        public ReadingsDec(string readingNamePrm, List<string> actionsPrm, double readingOptimalPrm, double readingValuePrm) : base(readingNamePrm, actionsPrm)
        {
            this.ReadingValue = readingValuePrm;
            this.ReadingOptimal = readingOptimalPrm;
        }

        public ReadingsDec()
        {

        }

        public double ReadingValue { get => readingValue; set => readingValue = value; }
        public double ReadingOptimal { get => readingOptimal; set => readingOptimal = value; }

        public override List<string> CheckInfo()
        {
            List<string> returnThis = new List<string>();
            if (this.readingValue > this.readingOptimal)
            {
                returnThis.Add(this.Action[0]);
                returnThis.Add("0");
            }
            else if (this.readingValue == this.readingOptimal) 
            {
                returnThis.Add(this.Action[1]);
                returnThis.Add("1");
            }
            else if (this.readingValue < this.readingOptimal)
            {
                returnThis.Add(this.Action[2]);
                returnThis.Add("2");
            }
            else
            {
                returnThis.Add("Check Hardware!");
                returnThis.Add("3");
            }

            return returnThis;
        }

        public List<ReadingsDec> ReturnReadings()
        {
            List<ReadingsDec> readings = new List<ReadingsDec>();

            readings.Add(new ReadingsDec("AmbientTemp",      new List<string> { "Activate heat Lamps",           "Stable -No Action", "Deactivate heatlamps" , "Check Hardware!" },  28,30));
            readings.Add(new ReadingsDec("AmbientHumidity",  new List<string> { "Increae Flow rate",             "Stable -No Action", "Increase Air Flow"    , "Check Hardware!" },  55, 60));
            readings.Add(new ReadingsDec("InternalTemp",     new List<string> { "Activate HeatLamps",            "Stable -No Action", "Deactivcate Heatlamps", "Check Hardware!" },  20, 24));
            readings.Add(new ReadingsDec("InternalHumidity", new List<string> { "Give more water",               "Stable -No Action", "Increase Air Flow"    , "Check Hardware!" },  40, 29));
            readings.Add(new ReadingsDec("InternalOxygen",   new List<string> { "Increase oxygen level",         "Stable -No Action", "Irrelevant"           , "Check Hardware!" },  36, 30));
            readings.Add(new ReadingsDec("Nitrogen",         new List<string> { "Increase Nitrogen docage",      "Stable -No Action", "Montior Non-Critical" , "Check Hardware!" },  4, 5));
            readings.Add(new ReadingsDec("Phosphorus",       new List<string> { "Increase Phosphorus docage",    "Stable -No Action", "Montior Non-Critical" , "Check Hardware!" },  40, 62));
            readings.Add(new ReadingsDec("Potassium",        new List<string> { "Increase Potassium docage",     "Stable -No Action", "Montior Non-Critical" , "Check Hardware!" },  7, 4));

            return readings;
        }

        public List<ReadingsDec> ReturnReadings(double optiOne, double optiTwo, double optiThree, double optiFour, double optiFive, double optiSix, double optiSeven, double optiEight)
        {
            List<ReadingsDec> readings = new List<ReadingsDec>();

            readings.Add(new ReadingsDec("AmbientTemp", new List<string> { "Activate heat Lamps", "Stable -No Action", "Deactivate heatlamps", "Check Hardware!" }, optiOne, 30));
            readings.Add(new ReadingsDec("AmbientHumidity", new List<string> { "Increae Flow rate", "Stable -No Action", "Increase Air Flow", "Check Hardware!" }, optiTwo, 60));
            readings.Add(new ReadingsDec("InternalTemp", new List<string> { "Activate HeatLamps", "Stable -No Action", "Deactivcate Heatlamps", "Check Hardware!" }, optiThree, 24));
            readings.Add(new ReadingsDec("InternalHumidity", new List<string> { "Give more water", "Stable -No Action", "Increase Air Flow", "Check Hardware!" }, optiFour, 29));
            readings.Add(new ReadingsDec("InternalOxygen", new List<string> { "Increase oxygen level", "Stable -No Action", "Irrelevant", "Check Hardware!" }, optiFive, 30));
            readings.Add(new ReadingsDec("Nitrogen", new List<string> { "Increase Nitrogen docage", "Stable -No Action", "Montior Non-Critical", "Check Hardware!" }, optiSix, 5));
            readings.Add(new ReadingsDec("Phosphorus", new List<string> { "Increase Phosphorus docage", "Stable -No Action", "Montior Non-Critical", "Check Hardware!" }, optiSeven, 62));
            readings.Add(new ReadingsDec("Potassium", new List<string> { "Increase Potassium docage", "Stable -No Action", "Montior Non-Critical", "Check Hardware!" }, optiEight, 4));

            return readings;
        }

        void GetRandomDec()
        {
            
            double minimum = (Convert.ToInt32(this.ReadingOptimal) * 0.8);
            double maximum = (Convert.ToInt32(this.ReadingOptimal) * 1.2);
            Random randomGen = new Random();
            this.ReadingValue = randomGen.NextDouble() * (maximum - minimum) + minimum;
            
        }

        public int GenerateTest()
        {
            this.GetRandomDec();
            if (this.ReadingValue > this.ReadingOptimal)
            {
                return 0;
            }
            else if (this.ReadingValue == this.ReadingOptimal)
            {
                return 1;
            }
            else if (this.ReadingValue < this.ReadingOptimal)
            {
                return 2;
            }
            
            
            return 3;
            
        }
    }

}
