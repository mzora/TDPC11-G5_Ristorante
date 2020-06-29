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

        public static List<PrenotazioneCliente> getPrenotazioni(string usr)
        {
            List<PrenotazioneCliente> prenotazioni = new List<PrenotazioneCliente>();
            string connectionString = WebConfigurationManager.ConnectionStrings["MainDB"].ConnectionString;
            string query = "SELECT [ID],[DataP],[NPostiP] FROM [dbo].[Prenotazioni] WHERE [Cliente] = @username order by DataP DESC";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    DataTable dt = new DataTable();
                    SqlCommand command = new SqlCommand(query, connection);
                    command.Parameters.AddWithValue("@username", usr);
                    connection.Open();
                    using (SqlDataAdapter da = new SqlDataAdapter(command))
                    {
                        da.Fill(dt);
                    }
                    foreach (DataRow row in dt.Rows)
                    {
                        PrenotazioneCliente p = new PrenotazioneCliente();
                        p.ID = Guid.Parse(row["ID"].ToString());
                        p.Date = (DateTime)row["DataP"];
                        p.Coperti = (int)row["NPostiP"];
                        prenotazioni.Add(p);
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

        public static bool verificaDisponibilita(PrenotazioneCliente p)
        {
            string connectionString = WebConfigurationManager.ConnectionStrings["MainDB"].ConnectionString;
            string query = "SELECT * FROM [dbo].[Disponibilita] WHERE [DataP]= @datap";
            string query_2 = "INSERT INTO [dbo].[Disponibilita] ([DataP]) VALUES (@datap)";
            string query_3 = "UPDATE [dbo].[Disponibilita] SET [CopertiDisp] = ([CopertiDisp]-@coperti) WHERE [DataP]= @datap";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    DataTable dt = new DataTable();
                    SqlCommand command = new SqlCommand(query, connection);
                    command.Parameters.AddWithValue("@datap", p.Date);
                    connection.Open();
                    command.ExecuteNonQuery();
                    using (SqlDataAdapter da = new SqlDataAdapter(command))
                    {
                        da.Fill(dt);
                    }


                    if(dt != null)
                    {
                        if (dt.Rows.Count>0)
                        {
                            int postiDisponibili = int.Parse(dt.Rows[0]["CopertiDisp"].ToString());
                            DateTime data = DateTime.Parse(dt.Rows[0]["DataP"].ToString());
                            if (postiDisponibili >= p.Coperti)
                            {
                                //scala i posti alla data in tabella
                                SqlCommand command_3 = new SqlCommand(query_3, connection);
                                command_3.Parameters.AddWithValue("@datap", p.Date);
                                command_3.Parameters.AddWithValue("@coperti", p.Coperti);
                                command_3.ExecuteNonQuery();
                                return true;
                            }
                        }else{
                            //inserisci data nella tabella e scala i posti
                            SqlCommand command_2 = new SqlCommand(query_2, connection);
                            command_2.Parameters.AddWithValue("@datap", p.Date);
                            command_2.ExecuteNonQuery();

                            //scala i posti
                            SqlCommand command_3 = new SqlCommand(query_3, connection);
                            command_3.Parameters.AddWithValue("@datap", p.Date);
                            command_3.Parameters.AddWithValue("@coperti", p.Coperti);
                            command_3.ExecuteNonQuery();
                            return true;
                        }
                    }          
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

        public static bool insertNewPrenotazione(PrenotazioneCliente p)
        {
            string connectionString = WebConfigurationManager.ConnectionStrings["MainDB"].ConnectionString;
            string query = "insert into [dbo].[Prenotazioni] ([ID], [DataP], [Cliente], [NPostiP]) values ( newid(),@datap, @cliente, @npostip)";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    SqlCommand command = new SqlCommand(query, connection);
                    command.Parameters.AddWithValue("@datap", p.Date);
                    command.Parameters.AddWithValue("@cliente", p.Cliente);
                    command.Parameters.AddWithValue("@npostip", p.Coperti);
                    connection.Open();
                    command.ExecuteNonQuery();
                    return true;
                }
                catch (Exception ex)
                {
                    return false;
                }
                finally
                {
                    connection.Close();
                }
                return false;
            }
        }

        
        public static void deletePrenotazione(Guid id, int c, DateTime d)
        {
            string connectionString = WebConfigurationManager.ConnectionStrings["MainDB"].ConnectionString;
            string query = "DELETE FROM [dbo].[Prenotazioni] WHERE [ID]= @id";
            string query_2 = "UPDATE [dbo].[Disponibilita] SET [CopertiDisp] = ([CopertiDisp]+@coperti) WHERE [DataP]= @datap";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    SqlCommand command = new SqlCommand(query, connection);
                    command.Parameters.AddWithValue("id", id);
                    connection.Open();
                    command.ExecuteNonQuery();

                    SqlCommand command_2 = new SqlCommand(query_2, connection);
                    command_2.Parameters.AddWithValue("@datap", d);
                    command_2.Parameters.AddWithValue("@coperti", c);
                    command_2.ExecuteNonQuery();
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
    }
}
