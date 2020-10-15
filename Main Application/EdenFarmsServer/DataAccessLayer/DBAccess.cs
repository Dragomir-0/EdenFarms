using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Collections;
using System.Data.SqlClient;
using System.Data;
using System.Windows.Forms;

namespace Data_Access_Layer
{
    //Data Source=DESKTOP-U0KREVI\SQLEXPRESS;Initial Catalog=EdenFarmsDB;Integrated Security=True
    public class DBAccess
    {
        SqlConnectionStringBuilder connection = new SqlConnectionStringBuilder();
        public DBAccess()
        {
            connection.DataSource = @"DESKTOP-U0KREVI\SQLEXPRESS"; //the data source of the connection
            connection.InitialCatalog = @"EdenFarmsDB"; //the inital catalog of the connection
            connection.IntegratedSecurity = true; //the integrated security of the connection
        }

        //READ METHODS

        //public DataTable ReadData(string storedProcedureName) //a method to read any table from the database using a stored procedure
        //{
        //    SqlConnection conn = new SqlConnection(connection.ToString());
        //    DataTable output = new DataTable(); //this will be needed for storing the data from a database table
        //    SqlDataAdapter sda = new SqlDataAdapter();
        //    try //to prevent a crash if it cannot connect
        //    {
        //        conn.Open();
        //        SqlCommand cmd = new SqlCommand(storedProcedureName, conn); //a command is generated using the stored procedude name and the table name
        //        cmd.CommandType = CommandType.StoredProcedure; //letting the code know that it is a stored procedude
        //        sda.SelectCommand = cmd;
        //        sda.FillSchema(output, SchemaType.Source);
        //        sda.Fill(output);
        //    }
        //    catch (SqlException e) //for if an error occurs
        //    {
        //        MessageBox.Show(e.Message); //this error message will be displayed instead of the application crashing
        //    }
        //    finally //regardless of a crash or not
        //    {
        //        if (conn.State == ConnectionState.Open) //if the connection is still open
        //        {
        //            conn.Close(); //closes the connection
        //        }
        //    }
        //    return output; //returns the datatable
        //}
        public DataTable spSelectFarm() 
        {
            SqlConnection conn = new SqlConnection(connection.ToString());
            DataTable output = new DataTable(); 
            SqlDataAdapter sda = new SqlDataAdapter();
            try 
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("spSelectFarm", conn); 
                cmd.CommandType = CommandType.StoredProcedure; 
                sda.SelectCommand = cmd;
                sda.FillSchema(output, SchemaType.Source);
                sda.Fill(output);
            }
            catch (SqlException e) 
            {
                MessageBox.Show(e.Message); 
            }
            finally 
            {
                if (conn.State == ConnectionState.Open) 
                {
                    conn.Close(); 
                }
            }
            return output;
        }
        public DataTable spSelectPlant()
        {
            SqlConnection conn = new SqlConnection(connection.ToString());
            DataTable output = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter();
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM tblPlant", conn);
                sda.SelectCommand = cmd;
                sda.FillSchema(output, SchemaType.Source);
                sda.Fill(output);
            }
            catch (SqlException e)
            {
                MessageBox.Show(e.Message);
            }
            finally
            {
                if (conn.State == ConnectionState.Open)
                {
                    conn.Close();
                }
            }
            return output;
        }
        public DataTable spSelectPlantCategory()
        {
            SqlConnection conn = new SqlConnection(connection.ToString());
            DataTable output = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter();
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("spSelectPlantCategory", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                sda.SelectCommand = cmd;
                sda.FillSchema(output, SchemaType.Source);
                sda.Fill(output);
            }
            catch (SqlException e)
            {
                MessageBox.Show(e.Message);
            }
            finally
            {
                if (conn.State == ConnectionState.Open)
                {
                    conn.Close();
                }
            }
            return output;
        }
        public DataTable spSelectPlots()
        {
            SqlConnection conn = new SqlConnection(connection.ToString());
            DataTable output = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter();
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("spSelectPlots", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                sda.SelectCommand = cmd;
                sda.FillSchema(output, SchemaType.Source);
                sda.Fill(output);
            }
            catch (SqlException e)
            {
                MessageBox.Show(e.Message);
            }
            finally
            {
                if (conn.State == ConnectionState.Open)
                {
                    conn.Close();
                }
            }
            return output;
        }
        public DataTable spSelectUsers()
        {
            SqlConnection conn = new SqlConnection(connection.ToString());
            DataTable output = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter();
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("spSelectUsers", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                sda.SelectCommand = cmd;
                sda.FillSchema(output, SchemaType.Source);
                sda.Fill(output);
            }
            catch (SqlException e)
            {
                MessageBox.Show(e.Message);
            }
            finally
            {
                if (conn.State == ConnectionState.Open)
                {
                    conn.Close();
                }
            }
            return output;
        }

        //INSERT METHODS

        //public void InsertData(string storedProc, string tableName)
        //{
        //    SqlConnection conn = new SqlConnection(connection.ToString());
        //    try
        //    {

        //    }
        //    catch (SqlException e)
        //    {

        //    }
        //    finally
        //    {

        //    }
        //}
        public void spInsertFarm(ArrayList list)
        {
            SqlConnection conn = new SqlConnection(connection.ToString());
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("spInsertFarm", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@UserID", list[0]);
                cmd.Parameters.AddWithValue("@FarmName", list[1]);
                cmd.Parameters.AddWithValue("@FarmLocation", list[2]);
                cmd.Parameters.AddWithValue("@LocationAlias", list[3]);

                cmd.ExecuteNonQuery();
            }
            catch (SqlException e)
            {
                MessageBox.Show(e.Message);
            }
            finally
            {
                if (conn.State == ConnectionState.Open)
                {
                    conn.Close();
                }
            }
        }
        public void spInserPlant(string plantCategoryPrm, string nm, decimal optAmbTemp, decimal optAmbHum, string optAmbLight, decimal optIntTemp, decimal optIntHum, string optIntLight, decimal optIntOxy, decimal optNit, decimal optPhos, decimal optPotass)
        {
            SqlConnection conn = new SqlConnection(connection.ToString());
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("spInserPlant", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@PlantCategoryID", plantCategoryPrm);
                cmd.Parameters.AddWithValue("@PlantName", nm);
                cmd.Parameters.AddWithValue("@OptimalAmbientTemp", optAmbTemp);
                cmd.Parameters.AddWithValue("@OptimalAmbientHumidity", optAmbHum);
                cmd.Parameters.AddWithValue("@OptimalAmbientLight", optAmbLight);
                cmd.Parameters.AddWithValue("@OptimalInternalTemp", optIntTemp);
                cmd.Parameters.AddWithValue("@OptimalInternalHumidity", optIntHum);
                cmd.Parameters.AddWithValue("@OptimalInternalLight", optIntLight);
                cmd.Parameters.AddWithValue("@OptimalInternalOxygen", optIntOxy);
                cmd.Parameters.AddWithValue("@OptimalNitrogen", optNit);
                cmd.Parameters.AddWithValue("@OptimalPhosphorus", optPhos);
                cmd.Parameters.AddWithValue("@OptimalPotassium", optPotass);
                cmd.ExecuteNonQuery();
            }
            catch (SqlException e)
            {
                MessageBox.Show(e.Message);
            }
            finally
            {
                if (conn.State == ConnectionState.Open)
                {
                    conn.Close();
                }
            }
        }
        public void spInserPlantcategory(ArrayList list)
        {
            SqlConnection conn = new SqlConnection(connection.ToString());
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("spInserPlantcategory", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@CategoryName", list[0]);
                cmd.Parameters.AddWithValue("@CategoryDescription", list[1]);

                cmd.ExecuteNonQuery();
            }
            catch (SqlException e)
            {
                MessageBox.Show(e.Message);
            }
            finally
            {
                if (conn.State == ConnectionState.Open)
                {
                    conn.Close();
                }
            }
        }
        public void spInsertPlots(int farmIDPrm, int plant, string user, string performance)
        {
            SqlConnection conn = new SqlConnection(connection.ToString());
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("spInsertPlots", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@FarmID", farmIDPrm);
                cmd.Parameters.AddWithValue("@PlantID", plant);
                cmd.Parameters.AddWithValue("@UserOverride", user);
                cmd.Parameters.AddWithValue("@PerformanceReview", performance);
                cmd.ExecuteNonQuery();
            }
            catch (SqlException e)
            {
                MessageBox.Show(e.Message);
            }
            finally
            {
                if (conn.State == ConnectionState.Open)
                {
                    conn.Close();
                }
            }
        }
        public void spInserThetUsers(string usernamePrm, string passwordPrm, string vatIDNumberPrm, string contactNumberPrm, string emailaddressPrm, string userAddressPrm)
        {
            SqlConnection conn = new SqlConnection(connection.ToString());
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("spInserThetUsers", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@UserName", usernamePrm);
                cmd.Parameters.AddWithValue("@UserPassword", passwordPrm);
                cmd.Parameters.AddWithValue("@VatIDNumber", vatIDNumberPrm);
                cmd.Parameters.AddWithValue("@ContactNumber", contactNumberPrm);
                cmd.Parameters.AddWithValue("@Email", emailaddressPrm);
                cmd.Parameters.AddWithValue("@Address", userAddressPrm);
                cmd.ExecuteNonQuery();
            }
            catch (SqlException e)
            {
                MessageBox.Show(e.Message);
            }
            finally
            {
                if (conn.State == ConnectionState.Open)
                {
                    conn.Close();
                }
            }
        }

        //UPDATE METHODS

        //public void UpdateData(string storedProcName, string tableName)
        //{
        //    SqlConnection conn = new SqlConnection(connection.ToString());
        //    try
        //    {

        //    }
        //    catch (SqlException e)
        //    {

        //    }
        //    finally
        //    {

        //    }
        //}
        public void spUpdateFarm(ArrayList list, int farmid)
        {
            SqlConnection conn = new SqlConnection(connection.ToString());
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("spUpdateFarm", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@FarmID", farmid);
                cmd.Parameters.AddWithValue("@UserID", list[0]);
                cmd.Parameters.AddWithValue("@FarmName", list[1]);
                cmd.Parameters.AddWithValue("@FarmLocation", list[2]);
                cmd.Parameters.AddWithValue("@LocationAlias", list[3]);
                cmd.ExecuteNonQuery();
            }
            catch (SqlException e)
            {
                MessageBox.Show(e.Message);
            }
            finally
            {
                if (conn.State == ConnectionState.Open)
                {
                    conn.Close();
                }
            }
        }
        public void spUpdatePlant(string plantCategoryPrm, string nm, decimal optAmbTemp, decimal optAmbHum, string optAmbLight, decimal optIntTemp, decimal optIntHum, string optIntLight, decimal optIntOxy, decimal optNit, decimal optPhos, decimal optPotass, int plantid)
        {
            SqlConnection conn = new SqlConnection(connection.ToString());
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("spUpdatePlant", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@PlantID", plantid);
                cmd.Parameters.AddWithValue("@PlantCategoryID", plantCategoryPrm);
                cmd.Parameters.AddWithValue("@PlantName", nm);
                cmd.Parameters.AddWithValue("@OptimalAmbientTemp", optAmbTemp);
                cmd.Parameters.AddWithValue("@OptimalAmbientHumidity", optAmbHum);
                cmd.Parameters.AddWithValue("@OptimalAmbientLight", optAmbLight);
                cmd.Parameters.AddWithValue("@OptimalInternalTemp", optIntTemp);
                cmd.Parameters.AddWithValue("@OptimalInternalHumidity", optIntHum);
                cmd.Parameters.AddWithValue("@OptimalInternalLight", optIntLight);
                cmd.Parameters.AddWithValue("@OptimalInternalOxygen", optIntOxy);
                cmd.Parameters.AddWithValue("@OptimalNitrogen", optNit);
                cmd.Parameters.AddWithValue("@OptimalPhosphorus", optPhos);
                cmd.Parameters.AddWithValue("@OptimalPotassium", optPotass);
                cmd.ExecuteNonQuery();
            }
            catch (SqlException e)
            {
                MessageBox.Show(e.Message);
            }
            finally
            {
                if (conn.State == ConnectionState.Open)
                {
                    conn.Close();
                }
            }
        }
        public void spUpdatePlantcategory(ArrayList list, int categoryid)
        {
            SqlConnection conn = new SqlConnection(connection.ToString());
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("spUpdatePlantcategory", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@PlantCategoryID", categoryid);
                cmd.Parameters.AddWithValue("@CategoryName", list[0]);
                cmd.Parameters.AddWithValue("@CategoryDescription", list[1]);
                cmd.ExecuteNonQuery();
            }
            catch (SqlException e)
            {
                MessageBox.Show(e.Message);
            }
            finally
            {
                if (conn.State == ConnectionState.Open)
                {
                    conn.Close();
                }
            }
        }
        public void spUpdatePlots(int farmIDPrm, int plant, string user, string performance, int plotid)
        {
            SqlConnection conn = new SqlConnection(connection.ToString());
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("spUpdatePlots", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@PlotID", plotid);
                cmd.Parameters.AddWithValue("@FarmID", farmIDPrm);
                cmd.Parameters.AddWithValue("@PlantID", plant);
                cmd.Parameters.AddWithValue("@UserOverride", user);
                cmd.Parameters.AddWithValue("@PerformanceReview", performance);
                cmd.ExecuteNonQuery();
            }
            catch (SqlException e)
            {
                MessageBox.Show(e.Message);
            }
            finally
            {
                if (conn.State == ConnectionState.Open)
                {
                    conn.Close();
                }
            }
        }
        public void spUpdateUsers(string usernamePrm, string passwordPrm, string vatIDNumberPrm, string contactNumberPrm, string emailaddressPrm, string userAddressPrm, int userid)
        {
            SqlConnection conn = new SqlConnection(connection.ToString());
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("spUpdateUsers", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@userID", userid);
                cmd.Parameters.AddWithValue("@UserName", usernamePrm);
                cmd.Parameters.AddWithValue("@UserPassword", passwordPrm);
                cmd.Parameters.AddWithValue("@VatIDNumber", vatIDNumberPrm);
                cmd.Parameters.AddWithValue("@ContactNumber", contactNumberPrm);
                cmd.Parameters.AddWithValue("@Email", emailaddressPrm);
                cmd.Parameters.AddWithValue("@Address", userAddressPrm);
                cmd.ExecuteNonQuery();
            }
            catch (SqlException e)
            {
                MessageBox.Show(e.Message);
            }
            finally
            {
                if (conn.State == ConnectionState.Open)
                {
                    conn.Close();
                }
            }
        }

        //DELETE METHODS

        //public void DeleteData(string storedProcedure, string variable, string valueForDeletion)
        //{
        //    SqlConnection conn = new SqlConnection(connection.ToString());
        //    try
        //    {
        //        conn.Open();
        //        SqlCommand cmd = new SqlCommand(storedProcedure, conn);
        //        cmd.CommandType = CommandType.StoredProcedure;
        //        cmd.Parameters.AddWithValue(variable, valueForDeletion);
        //        cmd.ExecuteNonQuery();
        //    }
        //    catch (SqlException e)
        //    {
        //        MessageBox.Show(e.Message);
        //    }
        //    finally
        //    {
        //        if (conn.State == ConnectionState.Open)
        //        {
        //            conn.Close();
        //        }
        //    }
        //}
        public void spDeleteFarm(int farmID)
        {
            SqlConnection conn = new SqlConnection(connection.ToString());
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("spDeleteFarm", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@FarmID", farmID);
                cmd.ExecuteNonQuery();
            }
            catch (SqlException e)
            {
                MessageBox.Show(e.Message);
            }
            finally
            {
                if (conn.State == ConnectionState.Open)
                {
                    conn.Close();
                }
            }
        }
        public void spDeletePlantCategory(int categoryID)
        {
            SqlConnection conn = new SqlConnection(connection.ToString());
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("spDeletePlantCategory", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@CategoryID", categoryID);
                cmd.ExecuteNonQuery();
            }
            catch (SqlException e)
            {
                MessageBox.Show(e.Message);
            }
            finally
            {
                if (conn.State == ConnectionState.Open)
                {
                    conn.Close();
                }
            }
        }
        public void spDeletePlots(int plotID)
        {
            SqlConnection conn = new SqlConnection(connection.ToString());
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("spDeletePlots", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@PlotID", plotID);
                cmd.ExecuteNonQuery();
            }
            catch (SqlException e)
            {
                MessageBox.Show(e.Message);
            }
            finally
            {
                if (conn.State == ConnectionState.Open)
                {
                    conn.Close();
                }
            }
        }
        public void spDeletePlant(int PlantID)
        {
            SqlConnection conn = new SqlConnection(connection.ToString());
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("spDeletePlant", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@PlantID", PlantID);
                cmd.ExecuteNonQuery();
            }
            catch (SqlException e)
            {
                MessageBox.Show(e.Message);
            }
            finally
            {
                if (conn.State == ConnectionState.Open)
                {
                    conn.Close();
                }
            }
        }
        public void spDeleteUsers(int USERID)
        {
            SqlConnection conn = new SqlConnection(connection.ToString());
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("spDeleteUsers", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@USERID", USERID);
                cmd.ExecuteNonQuery();
            }
            catch (SqlException e)
            {
                MessageBox.Show(e.Message);
            }
            finally
            {
                if (conn.State == ConnectionState.Open)
                {
                    conn.Close();
                }
            }
        }

        public DataTable getLoginDetails()
        {
            SqlConnection conn = new SqlConnection(connection.ToString());
            DataTable output = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter();
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("SELECT tblUser.UserID, tblUser.RoleID, tblUser.UserName, tblUser.UserPassword, tblUser.VatIDNumber, tblUser.ContactNumber, tblUser.Email, tblUser.UserAddress, tblFarm.FarmID, tblPlots.PlotID FROM tblUser, tblFarm, tblPlots WHERE (tblUser.UserID = tblFarm.UserID AND tblFarm.FarmID = tblPlots.FarmID)", conn);
                sda.SelectCommand = cmd;
                sda.FillSchema(output, SchemaType.Source);
                sda.Fill(output);
            }
            catch (SqlException e)
            {
                MessageBox.Show(e.Message);
            }
            finally
            {
                if (conn.State == ConnectionState.Open)
                {
                    conn.Close();
                }
            }
            return output;
        }
    }
}