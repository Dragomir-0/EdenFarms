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
        #endregion

        public Reading(string readingNamePrm, string readingOptimalPrm)
        {
            this.ReadingName = readingNamePrm;
        }

        public Reading()
        {

        }

        #region Properties
        public string ReadingName { get => readingName; set => readingName = value; }
        #endregion

    }
}
