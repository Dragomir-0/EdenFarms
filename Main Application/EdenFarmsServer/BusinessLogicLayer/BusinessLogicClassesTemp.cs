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

        #region Properties
        private int UserID { get => userID; set => userID = value; }
        public string Username { get => username; set => username = value; }
        public string VatIDNumber { get => vatIDNumber; set => vatIDNumber = value; }
        public string ContactNumber { get => contactNumber; set => contactNumber = value; }
        public string Emailaddress { get => emailaddress; set => emailaddress = value; }
        public string UserAddress { get => userAddress; set => userAddress = value; }
        #endregion

        public User(int userIDPrm, string usernamePrm, string vatIDNumberPrm, string contactNumberPrm, string emailaddressPrm, string userAddressPrm)
        {
            this.UserID = userIDPrm;
            this.Username = usernamePrm;
            this.VatIDNumber = vatIDNumberPrm;
            this.ContactNumber = contactNumberPrm;
            this.Emailaddress = emailaddressPrm;
            this.UserAddress = userAddressPrm;
        }

        public User() { }

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


        #region Properties
        public int FarmID { get => farmID; set => farmID = value; }
        public string FarmName { get => farmName; set => farmName = value; }
        public string FarmLocation { get => farmLocation; set => farmLocation = value; }
        public string LocationAlias { get => locationAlias; set => locationAlias = value; }
        #endregion

        public Farm(int farmIDPrm, string farmNamePrm, string farmLocationPrm, string locationAliasPrm)
        {
            this.FarmID = farmIDPrm;
            this.FarmName = farmNamePrm;
            this.FarmLocation = farmLocationPrm;
            this.LocationAlias = locationAliasPrm;
        }

        public Farm() { }

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
    class Plot  // {Concept}
    {
        #region Fields
        private int plotID;
        private int farmID;
        private int plantID;
        private string userOverride;
        private string performanceReview;
        #endregion

        #region Properties
        public int PlotID { get => plotID; set => plotID = value; }
        public int FarmID { get => farmID; set => farmID = value; }
        public int PlantID { get => plantID; set => plantID = value; }
        public string UserOverride { get => userOverride; set => userOverride = value; }
        public string PerformanceReview { get => performanceReview; set => performanceReview = value; }
        #endregion

        public Plot(int plotIDPrm, int farmIDPrm, int plant, string user, string performance)
        {
            this.PlotID = plotIDPrm;
            this.FarmID = farmIDPrm;
            this.PlantID = plant;
            this.UserOverride = user;
            this.PerformanceReview = performance;
        }

        public Plot() { }

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
        private string plantCategory; //Holds the name of a catagory 
        private string plantName;
        private decimal optimalAmbientTemp;
        private decimal optimalAmbientHumidity;
        private string optimalAmbientLight;
        private decimal optimalInternalTemp;
        private decimal optimalInternalHumidity;
        private string optimalInternalLight;
        private decimal optimalInternalOxygen;
        private decimal optimalNitrogen;
        private decimal optimalPhosphorus;
        private decimal optimalPotassium;
        #endregion
        

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
        public decimal OptimalPhosphorus { get => optimalPhosphorus; set => optimalPhosphorus = value; }
        public decimal OptimalPotassium { get => optimalPotassium; set => optimalPotassium = value; }
        #endregion

        public Plant(int plantIDPrm, string plantCategoryPrm, string nm, decimal optAmbTemp, decimal optAmbHum, string optAmbLight, decimal optIntTemp, decimal optIntHum, string optIntLight, decimal optNit, decimal optPhos, decimal optPotass)
        {
            this.PlantID = plantIDPrm;
            this.PlantCategory = plantCategoryPrm;
            this.PlantName = nm;
            this.OptimalAmbientTemp = optAmbTemp;
            this.OptimalAmbientHumidity = optAmbHum;
            this.OptimalAmbientLight = optAmbLight;
            this.OptimalInternalTemp = optIntTemp;
            this.OptimalInternalHumidity = optIntHum;
            this.OptimalInternalLight = optIntLight;
            this.OptimalNitrogen = optNit;
            this.OptimalPhosphorus = optPhos;
            this.OptimalPotassium = optPotass;
        }

        public Plant() { }

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
