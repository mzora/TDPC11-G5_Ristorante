﻿using System;
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
        public static bool insertNewCliente(Cliente c)
        {
            string connectionString = WebConfigurationManager.ConnectionStrings["MainDB"].ConnectionString;
            string query = "insert into [dbo].[Clienti] ( [Username], [Password],[Cognome], [Nome], [Email], [Phone]) values ( @Username, @Password, @Cognome, @Nome,  @Email, @Phone)";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    SqlCommand command = new SqlCommand(query, connection);
                    command.Parameters.AddWithValue("@Username", c.Username);
                    command.Parameters.AddWithValue("@Password", c.Password);
                    command.Parameters.AddWithValue("@Cognome", c.Cognome);
                    command.Parameters.AddWithValue("@Nome", c.Nome);
                    command.Parameters.AddWithValue("@Email", c.Email);
                    command.Parameters.AddWithValue("@Phone", c.Phone);
                    connection.Open();
                    command.ExecuteNonQuery();
                    return true;
                }
                catch (Exception ex)
                {

                }
                finally
                {
                    connection.Close();
                }
                return false;
            }
        }

        public static bool ValidateLogin(string usr, string psw)
        {
            bool toSender = false;
            string connectionString = WebConfigurationManager.ConnectionStrings["MainDB"].ConnectionString;
            string query = "SELECT [IDN] FROM [dbo].[Clienti] where [Username] = @username and [Password] = @password";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    DataTable dt = new DataTable();
                    SqlCommand command = new SqlCommand(query, connection);
                    command.Parameters.AddWithValue("@username", usr);
                    command.Parameters.AddWithValue("@password", psw);
                    connection.Open();
                    using (SqlDataAdapter da = new SqlDataAdapter(command))
                    {
                        da.Fill(dt);
                    }
                    if (dt.Rows.Count == 1)
                        toSender = true;
                }
                catch (Exception ex)
                {

                }
                finally
                {
                    connection.Close();
                }
            }
            return toSender;
        }

        public static List<Prenotazione> getPrenotazioni(int idn, string cognome)
        {
            List<Prenotazione> prenotazioni = new List<Prenotazione>();
            string connectionString = WebConfigurationManager.ConnectionStrings["MainDB"].ConnectionString;
            string query = "SELECT [DataP] FROM [dbo].[Prenotazioni] where [IDN]= @idn AND [Cognome]= @cognome order by CreationDate desc";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    //TODO**************************************************************************
                    DataTable dt = new DataTable();
                    SqlCommand command = new SqlCommand(query, connection);
                    connection.Open();
                    using (SqlDataAdapter da = new SqlDataAdapter(command))
                    {
                        da.Fill(dt);
                    }
                    foreach (DataRow row in dt.Rows)
                    {

                    }
                }
                catch (Exception ex)
                {

                }
                finally
                {
                    connection.Close();
                }
            }
            return prenotazioni;
        }

        public static bool insertNewPrenotazione(PrenotazioneCliente p)
        {
            string connectionString = WebConfigurationManager.ConnectionStrings["MainDB"].ConnectionString;
            string query = "insert into [dbo].[Prenotazioni] ([DataP],[Username],[NPostiP]) values ( @datap, @username, @npostip)";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    SqlCommand command = new SqlCommand(query, connection);
                    command.Parameters.AddWithValue("@datap", p.Date);
                    command.Parameters.AddWithValue("@username", p.Cliente);
                    command.Parameters.AddWithValue("@npostip", p.Coperti);
                    connection.Open();
                    command.ExecuteNonQuery();
                    return true;
                }
                catch (Exception ex)
                {

                }
                finally
                {
                    connection.Close();
                }
                return false;
            }
        }
    }
}
