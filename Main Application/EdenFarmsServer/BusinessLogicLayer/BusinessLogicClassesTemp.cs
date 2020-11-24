using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Collections;
using Data_Access_Layer;
using DataAccessLayer;

namespace BusinessLogicLayer
{
    public class User
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

        public User(int userIDPrm, string usernamePrm, string passwordPrm, string vatIDNumberPrm, string contactNumberPrm, string emailaddressPrm, string userAddressPrm)
        {
            this.UserID = userIDPrm;
            this.Username = usernamePrm;
            this.VatIDNumber = vatIDNumberPrm;
            this.ContactNumber = contactNumberPrm;
            this.Emailaddress = emailaddressPrm;
            this.UserAddress = userAddressPrm;
        }

        public User(string usernamePrm, string passwordPrm, string vatIDNumberPrm, string contactNumberPrm, string emailaddressPrm, string userAddressPrm)
        {
            this.Username = usernamePrm;
            this.VatIDNumber = vatIDNumberPrm;
            this.ContactNumber = contactNumberPrm;
            this.Emailaddress = emailaddressPrm;
            this.UserAddress = userAddressPrm;
        }
        //does not include ID

        public User() { }

        #region Methodes
        public DataTable readUser(int id)
        {
            DBAccess dba = new DBAccess();
            DataTable data = new DataTable();
            data = dba.spSelectUsers(id);
            return data;
        }

        public void deleteUser(int id)
        {
            DBAccess dba = new DBAccess();
            dba.spDeleteUsers(id);
        }

        public void updateUser(int roleid, string usernamePrm, string passwordPrm, string vatIDNumberPrm, string contactNumberPrm, string emailaddressPrm, string userAddressPrm, int userid)
        {
            DBAccess dba = new DBAccess();
            dba.spUpdateUsers(roleid, usernamePrm, passwordPrm, vatIDNumberPrm, contactNumberPrm, emailaddressPrm, userAddressPrm, userid);
        }

        public void insertUser(int roleid, string usernamePrm, string passwordPrm, string vatIDNumberPrm, string contactNumberPrm, string emailaddressPrm, string userAddressPrm)
        {
            DBAccess dba = new DBAccess();
            dba.spInserThetUsers(roleid, usernamePrm, passwordPrm, vatIDNumberPrm, contactNumberPrm, emailaddressPrm, userAddressPrm);
        }

        public bool LoginCheck(string user, string pass)
        {
            DBAccess dba = new DBAccess();
            DataTable data = dba.getLoginDetails();
            bool allGood = false;
            foreach (DataRow item in data.Rows)
            {
                if (item["UserName"].ToString() == user)
                {
                    if (item["UserPassword"].ToString() == pass)
                    {
                        allGood = true;
                    }
                    else
                    {
                        allGood = false;
                    }
                }
                else
                {
                    allGood = false;
                }
            }
            return allGood;
        }

        public DataTable returnDetails()
        {
            DBAccess dba = new DBAccess();
            DataTable data = dba.getLoginDetails();
            return data;
        }

        public DataTable returnSpecific(int id)
        {
            DBAccess dba = new DBAccess();
            DataTable dt = new DataTable();
            dt = dba.SelectSpecificClient(id);
            return dt;
        }
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
    public class Farm
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

        public Farm(string farmNamePrm, string farmLocationPrm, string locationAliasPrm)
        {
            this.FarmName = farmNamePrm;
            this.FarmLocation = farmLocationPrm;
            this.LocationAlias = locationAliasPrm;
        }
        //does not include ID

        public Farm() { }

        #region Methodes
        public DataTable readFarm()
        {
            DBAccess dba = new DBAccess();
            DataTable data = new DataTable();
            data = dba.spSelectFarm();
            return data;
        }

        public void deleteFarm(int id)
        {
            DBAccess dba = new DBAccess();
            dba.spDeleteFarm(id);
        }

        public void updateFarm(ArrayList list, int id)
        {
            DBAccess dba = new DBAccess();
            dba.spUpdateFarm(list, id);
        }

        public void insertFarm(ArrayList list)
        {
            DBAccess dba = new DBAccess();
            dba.spInsertFarm(list);
        }
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
    public class Plot  // {Concept}
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

        public Plot(int farmIDPrm, int plant, string user, string performance)
        {
            this.FarmID = farmIDPrm;
            this.PlantID = plant;
            this.UserOverride = user;
            this.PerformanceReview = performance;
        }
        //without plot ID

        public Plot() { }

        #region Methodes
        public DataTable readPlot(int id)
        {
            DBAccess dba = new DBAccess();
            DataTable data = new DataTable();
            data = dba.spSelectPlots(id);
            return data;
        }

        public void deletePlot(int id)
        {
            DBAccess dba = new DBAccess();
            dba.spDeletePlots(id);
        }

        public void updatePlot(int farmIDPrm, int plant, string user, string performance, int id)
        {
            DBAccess dba = new DBAccess();
            dba.spUpdatePlots(farmIDPrm, plant, user, performance, id);
        }

        public void insertPlot(int farmIDPrm, int plant, string user, string performance)
        {
            DBAccess dba = new DBAccess();
            dba.spInsertPlots(farmIDPrm, plant, user, performance);
        }

        public DataTable returnSpecific(int id)
        {
            DBAccess dba = new DBAccess();
            DataTable dt = new DataTable();
            dt = dba.SelectSpecificPlot(id);
            return dt;
        }
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
    public class Plant
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

        public Plant(int plantIDPrm, string plantCategoryPrm, string nm, decimal optAmbTemp, decimal optAmbHum, string optAmbLight, decimal optIntTemp, decimal optIntHum, string optIntLight, decimal optIntOxy, decimal optNit, decimal optPhos, decimal optPotass)
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
            this.OptimalInternalOxygen = optIntOxy;
            this.OptimalNitrogen = optNit;
            this.OptimalPhosphorus = optPhos;
            this.OptimalPotassium = optPotass;
        }
        //the main plant constructor

        public Plant(string plantCategoryPrm, string nm, decimal optAmbTemp, decimal optAmbHum, string optAmbLight, decimal optIntTemp, decimal optIntHum, string optIntLight, decimal optIntOxy, decimal optNit, decimal optPhos, decimal optPotass)
        {
            this.PlantCategory = plantCategoryPrm;
            this.PlantName = nm;
            this.OptimalAmbientTemp = optAmbTemp;
            this.OptimalAmbientHumidity = optAmbHum;
            this.OptimalAmbientLight = optAmbLight;
            this.OptimalInternalTemp = optIntTemp;
            this.OptimalInternalHumidity = optIntHum;
            this.OptimalInternalLight = optIntLight;
            this.OptimalInternalOxygen = optIntOxy;
            this.OptimalNitrogen = optNit;
            this.OptimalPhosphorus = optPhos;
            this.OptimalPotassium = optPotass;
        }
        //for inserting. This constructor does not include the PlantID, as these are automatically assigned by the DB

        public Plant() { }

        #region Methodes
        public DataTable readPlant()
        {
            DBAccess dba = new DBAccess();
            DataTable data = new DataTable();
            data = dba.spSelectPlant();
            return data;
        }

        public void deletePlant(int id)
        {
            DBAccess dba = new DBAccess();
            dba.spDeletePlant(id);
        }

        public void updatePlant(string plantCategoryPrm, string nm, decimal optAmbTemp, decimal optAmbHum, string optAmbLight, decimal optIntTemp, decimal optIntHum, string optIntLight, decimal optIntOxy, decimal optNit, decimal optPhos, decimal optPotass, int id)
        {
            DBAccess dba = new DBAccess();
            dba.spUpdatePlant(plantCategoryPrm, nm, optAmbTemp, optAmbHum, optAmbLight, optIntTemp, optIntHum, optIntLight, optIntOxy, optNit, optPhos, optPotass, id);
        }

        public void insertPlant(string plantCategoryPrm, string nm, decimal optAmbTemp, decimal optAmbHum, string optAmbLight, decimal optIntTemp, decimal optIntHum, string optIntLight, decimal optIntOxy, decimal optNit, decimal optPhos, decimal optPotass)
        {
            DBAccess dba = new DBAccess();
            dba.spInserPlant(plantCategoryPrm, nm, optAmbTemp, optAmbHum, optAmbLight, optIntTemp, optIntHum, optIntLight, optIntOxy, optNit, optPhos, optPotass);
        }

        public DataTable readPlantCategory()
        {
            DBAccess dba = new DBAccess();
            DataTable data = new DataTable();
            data = dba.spSelectPlantCategory();
            return data;
        }

        public void deletePlantCategory(int id)
        {
            DBAccess dba = new DBAccess();
            dba.spDeletePlantCategory(id);
        }

        public void updatePlantCategory(ArrayList list, int id)
        {
            DBAccess dba = new DBAccess();
            dba.spUpdatePlantcategory(list, id);
        }

        public void insertPlantCategory(ArrayList list)
        {
            DBAccess dba = new DBAccess();
            dba.spInserPlantcategory(list);
        }

        public DataTable SpecificPlant(int plantid)
        {
            DBAccess dba = new DBAccess();
            DataTable output = new DataTable();
            output = dba.SelectSpecificPlant(plantid);
            return output;
        }
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
    public class Login
    {
        private string username;
        private string password;

        public string Username
        {
            get { return username; }
            set { username = value; }
        }

        public string Password
        {
            get { return password; }
            set { password = value; }
        }

        public Login(string u, string p)
        {
            this.Username = u;
            this.Password = p;
        }

        public Login() { }

        public bool AttemptLogin(string username, string password)
        {
            string uname = "admin";
            string pword = "admin";
            bool isValid = false;
            if (uname.Equals(username))
            {
                if (pword.Equals(password))
                {
                    isValid = true;
                }
            }
            return isValid;
        }
    }
}
