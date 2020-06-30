using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TDPC11_G5_Ristorante
{
    public partial class RegistrazioneUtente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BTNSubmit_Click(object sender, EventArgs e)
        {
            Cliente cliente = new Cliente();
            cliente.Cognome = TXTCognome.Text;
            cliente.Nome = TXTNome.Text;
            cliente.Email = TXTEmail.Text;
            cliente.Phone = TXTPhone.Text;
            cliente.Username = TXTUsr.Text;
            cliente.Password = TXTPsw.Text;
            if (DAL.insertNewCliente(cliente))
            {
                //ritorna al alla default per il login
                Response.Redirect("Default.aspx", true);
            }
            else
            {
                Message.Text = "nome utente già esistente";
            }
        }
    }
}