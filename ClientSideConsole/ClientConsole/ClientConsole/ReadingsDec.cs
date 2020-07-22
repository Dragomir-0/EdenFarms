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

    }

}
