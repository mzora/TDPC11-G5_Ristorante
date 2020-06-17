using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace TDPC11_G5_Ristorante
{
    public class DAL
    {
        static string connectionString = WebConfigurationManager.ConnectionStrings["MainDB"].ConnectionString;

        public static void insertNewCliente(Cliente c)
        {
            string query = @"";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(query, connection);
                try
                {
                    connection.Open();
                    command.ExecuteReader();
                }
                catch (Exception ex)
                {

                }
                finally
                {
                    connection.Close();
                }
            }            
        }
         public static bool validLogin(string usr, string psw)
        {
            string query = @"";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(query, connection);
                try
                {
                    connection.Open();
                    command.ExecuteReader();
                }
                catch (Exception ex)
                {

                }
                finally
                {
                    connection.Close();
                }
            }
            return false;
        }
    }
}