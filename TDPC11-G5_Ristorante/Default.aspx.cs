using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TDPC11_G5_Ristorante
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BTNSubmit_CLick(object sender, EventArgs e)
        {
            bool isValidUser = DAL.validLogin(TXTUser.Text, TXTPsw.Text);
            if (isValidUser)
            {
                Session["username"] = TXTUser.Text;
                Response.Redirect("Prenotazione.aspx", true);
            }
            LBLOutput.Text = "Login errato/Registrati";
        }

        protected void BTNReg_CLick(object sender, EventArgs e)
        {
            Response.Redirect("RegistrazioneUtente.aspx", true);
        }
    }
}