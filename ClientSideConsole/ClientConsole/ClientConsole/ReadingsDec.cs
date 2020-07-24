using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClientConsole
{
    class ReadingsDec : Reading
    {
        //Value retrived from sensors
        private decimal readingValue;

        //Optimal Recorded
        private decimal readingOptimal;

        public ReadingsDec(string readingNamePrm, decimal readingOptimalPrm, decimal readingValuePrm) : base(readingNamePrm)
        {
            this.ReadingValue = readingValuePrm;
            this.ReadingOptimal = readingOptimalPrm;
        }

        public ReadingsDec()
        {

        }

        public decimal ReadingValue { get => readingValue; set => readingValue = value; }
        public decimal ReadingOptimal { get => readingOptimal; set => readingOptimal = value; }

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

            readings.Add(new ReadingsDec("OptimalAmbientTemp", "Set cooling system lower to 25", Convert.ToDecimal(28), Convert.ToDecimal(30)));
            readings.Add(new ReadingsDec("OptimalAmbientHumidity", "Slow down fog water mist sprayers", Convert.ToDecimal(55), Convert.ToDecimal(60)));
            readings.Add(new ReadingsDec("OptimalInternalTemp", "Set internal cooling system lower to 19", Convert.ToDecimal(20), Convert.ToDecimal(24)));
            readings.Add(new ReadingsDec("OptimalInternalHumidity", "Give more water", Convert.ToDecimal(40), Convert.ToDecimal(29)));
            readings.Add(new ReadingsDec("OptimalInternalOxygen", "Increase oxygen level", Convert.ToDecimal(36), Convert.ToDecimal(30)));
            readings.Add(new ReadingsDec("OptimalNitrogen", "Reduce Nitrogen docage", Convert.ToDecimal(4), Convert.ToDecimal(5)));
            readings.Add(new ReadingsDec("OptimalPhosphorus", "Reduce Phosphorus docage", Convert.ToDecimal(40), Convert.ToDecimal(62)));
            readings.Add(new ReadingsDec("OptimalPotassium", "Increase Potassium docage", Convert.ToDecimal(7), Convert.ToDecimal(4)));

            return readings;
        }

    }

}
