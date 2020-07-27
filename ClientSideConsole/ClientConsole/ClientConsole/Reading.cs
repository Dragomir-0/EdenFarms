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
        private List<string> action;
        #endregion

        public Reading(string readingNamePrm, List<string> actionPrm)
        {
            this.ReadingName = readingNamePrm;
            this.Action = actionPrm;
        }

        public Reading()
        {

        }

        #region Properties
        public string ReadingName { get => readingName; set => readingName = value; }
        public List<string> Action { get => action; set => action = value; }
        #endregion

        #region Methodes 
        abstract public List<string> CheckInfo();
        //abstract public void ();

        #endregion
    }
}
