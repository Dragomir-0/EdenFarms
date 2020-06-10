using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogicLayer
{
    class User
    {
        #region Fields
        private int userID;
        private string username;
        private string vatIDNumber;
        private string contactNumber;
        private string emailaddress;
        private string userAddress;
        #endregion

        public User()
        {

        }

        #region Properties
        private int UserID { get => userID; set => userID = value; }
        public string Username { get => username; set => username = value; }
        public string VatIDNumber { get => vatIDNumber; set => vatIDNumber = value; }
        public string ContactNumber { get => contactNumber; set => contactNumber = value; }
        public string Emailaddress { get => emailaddress; set => emailaddress = value; }
        public string UserAddress { get => userAddress; set => userAddress = value; }
        #endregion

        #region Methodes

        #endregion

        #region Overrrides
        public override bool Equals(object obj)
        {
            return base.Equals(obj);
        }

        public override int GetHashCode()
        {
            return base.GetHashCode();
        }

        public override string ToString()
        {
            return base.ToString();
        }

        #endregion
    }
    class Farm
    {
        #region Fields
        private int farmID;
        private string farmName;
        private string farmLocation;
        private string locationAlias;
        #endregion

        public Farm()
        {

        }

        #region Properties
        public int FarmID { get => farmID; set => farmID = value; }
        public string FarmName { get => farmName; set => farmName = value; }
        public string FarmLocation { get => farmLocation; set => farmLocation = value; }
        public string LocationAlias { get => locationAlias; set => locationAlias = value; }
        #endregion

        #region Methodes

        #endregion

        #region Overrrides
        public override bool Equals(object obj)
        {
            return base.Equals(obj);
        }

        public override int GetHashCode()
        {
            return base.GetHashCode();
        }

        public override string ToString()
        {
            return base.ToString();
        }

        #endregion
    }
    class Plot
    {
        #region Fields
        private int plotID;
        private int farmID;
        private int plantID;
        private string userOverride;
        private string preformanceReview;
        #endregion
        public Plot()
        {

        }

        #region Properties
        public int PlotID { get => plotID; set => plotID = value; }
        public int FarmID { get => farmID; set => farmID = value; }
        public int PlantID { get => plantID; set => plantID = value; }
        public string UserOverride { get => userOverride; set => userOverride = value; }
        public string PreformanceReview { get => preformanceReview; set => preformanceReview = value; }
        #endregion

        #region Methodes

        #endregion

        #region Overrrides
        public override bool Equals(object obj)
        {
            return base.Equals(obj);
        }

        public override int GetHashCode()
        {
            return base.GetHashCode();
        }

        public override string ToString()
        {
            return base.ToString();
        }

        #endregion
    }
    class Plant
    {
        #region Fields
        private int plantID;
        private string plantCategory;
        private string plantName;
        private decimal optimalAmbientTemp;
        private decimal optimalAmbientHumidity;
        private string optimalAmbientLight;
        private decimal optimalInternalTemp;
        private decimal optimalInternalHumidity;
        private string optimalInternalLight;
        private decimal optimalInternalOxygen;
        private decimal optimalNitrogen;
        private decimal otimalPhosphorus;
        private decimal optimalPotassium;
        #endregion
        public Plant()
        {

        }

        #region Properties
        public int PlantID { get => plantID; set => plantID = value; }
        public string PlantCategory { get => plantCategory; set => plantCategory = value; }
        public string PlantName { get => plantName; set => plantName = value; }
        public decimal OptimalAmbientTemp { get => optimalAmbientTemp; set => optimalAmbientTemp = value; }
        public decimal OptimalAmbientHumidity { get => optimalAmbientHumidity; set => optimalAmbientHumidity = value; }
        public string OptimalAmbientLight { get => optimalAmbientLight; set => optimalAmbientLight = value; }
        public decimal OptimalInternalTemp { get => optimalInternalTemp; set => optimalInternalTemp = value; }
        public decimal OptimalInternalHumidity { get => optimalInternalHumidity; set => optimalInternalHumidity = value; }
        public string OptimalInternalLight { get => optimalInternalLight; set => optimalInternalLight = value; }
        public decimal OptimalInternalOxygen { get => optimalInternalOxygen; set => optimalInternalOxygen = value; }
        public decimal OptimalNitrogen { get => optimalNitrogen; set => optimalNitrogen = value; }
        public decimal OtimalPhosphorus { get => otimalPhosphorus; set => otimalPhosphorus = value; }
        public decimal OptimalPotassium { get => optimalPotassium; set => optimalPotassium = value; }
        #endregion

        #region Methodes

        #endregion

        #region Overrrides
        public override bool Equals(object obj)
        {
            return base.Equals(obj);
        }

        public override int GetHashCode()
        {
            return base.GetHashCode();
        }

        public override string ToString()
        {
            return base.ToString();
        }

        #endregion
    }
}
