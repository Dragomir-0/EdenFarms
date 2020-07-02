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

        public ReadingsDec(string readingNamePrm, decimal readingOptimalPrm, decimal readingValuePrm) :base(readingNamePrm)
        {
            this.ReadingValue = readingValuePrm;
            this.ReadingOptimal = readingOptimalPrm;
        }

        public ReadingsDec()
        {

        }

        public decimal ReadingValue { get => readingValue; set => readingValue = value; }
        public decimal ReadingOptimal { get => readingOptimal; set => readingOptimal = value; }
    }
}
