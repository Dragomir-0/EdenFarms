using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClientConsole
{
    class ReadingStr : Reading
    {
        //Value retrived from sensors
        private string readingValue;

        //Optimal Recorded
        private string readingOptimal;

        public ReadingStr(string readingNamePrm, string readingOptimalPrm, string readingValuePrm) : base(readingNamePrm, new List<string> { })
        {
            this.ReadingValue = readingValuePrm;
            this.ReadingOptimal = readingOptimalPrm;
        }

        public ReadingStr()
        {

        }

        public string ReadingValue { get => readingValue; set => readingValue = value; }
        public string ReadingOptimal { get => readingOptimal; set => readingOptimal = value; }
        
        public override List<string> CheckInfo()
        {

            
            List<string> returnThis = new List<string>();
            /*
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
            */
            return returnThis;
        }
    }
}
