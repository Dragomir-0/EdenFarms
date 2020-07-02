using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClientConsole
{
    class ReadingsDec : Reading
    {
        private decimal readingValue;

        public ReadingsDec(string readingNamePrm, string readingOptimalPrm, decimal readingValuePrm) :base(readingNamePrm, readingOptimalPrm)
        {
            this.ReadingValue = readingValuePrm;
        }

        public ReadingsDec()
        {

        }

        public decimal ReadingValue { get => readingValue; set => readingValue = value; }
    }
}
