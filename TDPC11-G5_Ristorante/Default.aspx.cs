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
            if (DAL.validLogin(TXTUser.Text,TXTPsw.Text))
            {
                Session["currentUser"] = TXTUser.Text;
                Session["currentPsw"] = TXTPsw.Text;
                Response.Redirect("Prenotazione.aspx", true);
            }
            else
            {
                Response.Redirect("Default.aspx",true);
            }
        }
    }
}