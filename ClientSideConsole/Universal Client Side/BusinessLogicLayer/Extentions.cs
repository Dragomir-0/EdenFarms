using System;
using System.Collections.Generic;
using System.Text;

namespace BusinessLogicLayer
{
    public static class Extentions
    {
        public static string ToNameString(this string info)
        {
            int test = info.Length;
            if(test==15) return info + " ";
            if (test > 7 && test < 15) 
            {
                return info + "\t";
            }
            else if(test < 8)
            {
                return info + "\t\t";
            }
            else
            {
                return info;
            }

        }
    }
}



