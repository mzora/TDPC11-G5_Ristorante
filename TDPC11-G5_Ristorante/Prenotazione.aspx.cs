using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TDPC11_G5_Ristorante
{
    public partial class Prenotazione : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
                Response.Redirect("Default.aspx", true);
            LBLWelcome.Text = "Logged as: " + Session["username"].ToString();
            generatePrenotazioniTable();
        }

    protected void BTNLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx", true);
        }

        protected void BTNCalendar_Click(object sender, EventArgs e)
        {
            Calendar.Visible = true;
        }
        protected void Calendar_SelectionChanged(object sender, EventArgs e)
        {
            DateTime dt = Calendar.SelectedDate;
            TextBoxDate.Text = dt.ToString("dd/MM/yyyy");
            Calendar.Visible = false;
        }

        protected void BTNSubmit_Click(object sender, EventArgs e)
        {   
            PrenotazioneCliente prenot = new PrenotazioneCliente();
            prenot.Date = Calendar.SelectedDate;
            prenot.Coperti = Convert.ToInt32(TXTCoperti.Text);
            prenot.Cliente = Session["username"].ToString();

            if (DAL.verificaDisponibilita(prenot))
            {
                if (DAL.insertNewPrenotazione(prenot))
                {
                    LBLOutput.Text = "Prenotazione registrata con successo";
                    generatePrenotazioniTable();
                }
                else
                {
                    LBLOutput.Text = "Prenotazione non avvenuta";
                }
            }
            else
            {
                LBLOutput.Text = "Prova altra data, coperti richiesti superiori ai disponibili";
            }

        }

        private void generatePrenotazioniTable()
        {
            TBLPrenotazioni.Rows.Clear();
            TableRow headerRow = new TableRow();
            TableCell dataHeaderCell = new TableCell();
            TableCell copertiHeaderCell = new TableCell();
            TableCell deleteHeaderCell = new TableCell();
            dataHeaderCell.Text = "DATA";
            copertiHeaderCell.Text = "COPERTI";

            headerRow.Style.Add("font-weight", "bold");
            headerRow.Cells.Add(dataHeaderCell);
            headerRow.Cells.Add(copertiHeaderCell);
            headerRow.Cells.Add(deleteHeaderCell);
            TBLPrenotazioni.Rows.Add(headerRow);
            TBLPrenotazioni.Attributes.Add("class", "table");
            
            List<PrenotazioneCliente> prenotazioni = DAL.getPrenotazioni(Session["username"].ToString());
            foreach (PrenotazioneCliente p in prenotazioni)
            {
                TableRow row = new TableRow();
                TableCell dataCell = new TableCell();
                TableCell copertiCell = new TableCell();
                TableCell deleteButtonCell = new TableCell();
                dataCell.Text = (p.Date).ToString();
                copertiCell.Text = (p.Coperti).ToString();

                Button deleteButton = new Button();
                deleteButton.ID = p.ID.ToString() + "Delete";
                deleteButton.Text = "Delete";
                deleteButton.Click += this.BTNDelete_Click;
                deleteButton.Attributes.Add("class", "btn btn-danger btn-sm");
                deleteButtonCell.Controls.Add(deleteButton);
                
                row.Cells.Add(dataCell);
                row.Cells.Add(copertiCell);

                row.Cells.Add(deleteButtonCell);
                TBLPrenotazioni.Rows.Add(row);
            }
            TBLPrenotazioni.DataBind();
        }

        protected void BTNDelete_Click(object sender,EventArgs e)
        {   
            DAL.deletePrenotazione(Guid.Parse(((Button)sender).ID.Replace("Delete", "")));
            generatePrenotazioniTable();
        }
    }
}