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
    public class DBAccess
    {
        SqlConnectionStringBuilder connection = new SqlConnectionStringBuilder();
        public DBAccess()
        {
            connection.DataSource = ""; //the data source of the connection
            connection.InitialCatalog = ""; //the inital catalog of the connection
            connection.IntegratedSecurity = true; //the integrated security of the connection
        }

        public DataTable ReadData(string tableName, string storedProcedureName) //a method to read any table from the database using a stored procedure
        {
            SqlConnection conn = new SqlConnection(connection.ToString());
            DataTable output = new DataTable(); //this will be needed for storing the data from a database table
            SqlDataReader rdr = null;
            try //to prevent a crash if it cannot connect
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand(storedProcedureName, conn); //a command is generated using the stored procedude name and the table name
                cmd.CommandType = CommandType.StoredProcedure; //letting the code know that it is a stored procedude
                rdr = cmd.ExecuteReader(); //start reading
                while (rdr.Read()) //while it is reading
                {
                    output.Load(rdr); //store what is read into the datatable
                }
            }
            catch (SqlException e) //for if an error occurs
            {
                MessageBox.Show(e.Message); //this error message will be displayed instead of the application crashing
            }
            finally //regardless of a crash or not
            {
                if (conn.State == ConnectionState.Open) //if the connection is still open
                {
                    conn.Close(); //closes the connection
                }
            }
            return output; //returns the datatable
        }

        public void InsertData(List<> whatToAdd, string tableName)
        {
            SqlConnection conn = new SqlConnection(connection.ToString());
            try
            {

            }
            catch (SqlException e)
            {

            }
            finally
            {

            }
        }

        public void UpdateData(List<> newValuesForUpdate, string tableName)
        {
            SqlConnection conn = new SqlConnection(connection.ToString());
            try
            {

            }
            catch (SqlException e)
            {

            }
            finally
            {

            }
        }

        public void DeleteData(string whatToDelete, string tableName)
        {
            SqlConnection conn = new SqlConnection(connection.ToString());
            try
            {

            }
            catch (SqlException e)
            {

            }
            finally
            {

            }
        }
    }
}
