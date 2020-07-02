using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClientConsole
{
    abstract class Reading
    {
        #region Fields
        //Name of the Var
        private string readingName;

        //Optimal Recorded
        private string readingOptimal;
        #endregion

        public Reading(string readingNamePrm, string readingOptimalPrm)
        {
            this.ReadingName = readingNamePrm;
            this.ReadingOptimal = readingOptimalPrm;
        }

        public Reading()
        {

        }

        #region Properties
        public string ReadingName { get => readingName; set => readingName = value; }
        public string ReadingOptimal { get => readingOptimal; set => readingOptimal = value; }
        #endregion

    }
}
