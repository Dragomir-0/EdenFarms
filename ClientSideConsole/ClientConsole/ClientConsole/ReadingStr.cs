using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClientConsole
{
    class ReadingStr : Reading
    {
        private string readingValue;

        public ReadingStr(string readingNamePrm, string readingOptimalPrm, string readingValuePrm) : base(readingNamePrm, readingOptimalPrm)
        {
            this.ReadingValue = readingValuePrm;
        }

        public ReadingStr():base()
        {

        }

        public string ReadingValue { get => readingValue; set => readingValue = value; }
    }
}
