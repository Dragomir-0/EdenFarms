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

        public ReadingStr(string readingNamePrm, string readingOptimalPrm, string readingValuePrm) : base(readingNamePrm)
        {
            this.ReadingValue = readingValuePrm;
            this.ReadingOptimal = readingOptimalPrm;
        }

        public ReadingStr()
        {

        }

        public string ReadingValue { get => readingValue; set => readingValue = value; }
        public string ReadingOptimal { get => readingOptimal; set => readingOptimal = value; }
    }
}
