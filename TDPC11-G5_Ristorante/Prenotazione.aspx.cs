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
            //generatePrenotazioniTable();


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
            DAL.insertNewPrenotazione(prenot);
        }

        private void generatePrenotazioniTable()
        {   //TODO********************************************************
            /*
            TBLPrenotazioni.Rows.Clear();
            TableRow headerRow = new TableRow();
            TableCell nameHeaderCell = new TableCell();
            TableCell lastNameHeaderCell = new TableCell();
            TableCell ageHeaderCell = new TableCell();
            TableCell editHeaderCell = new TableCell();
            TableCell deleteHeaderCell = new TableCell();
            nameHeaderCell.Text = "Nome";
            lastNameHeaderCell.Text = "Cognome";
            ageHeaderCell.Text = "Età";
            headerRow.Style.Add("font-weight", "bold");
            headerRow.Cells.Add(nameHeaderCell);
            headerRow.Cells.Add(lastNameHeaderCell);
            headerRow.Cells.Add(ageHeaderCell);
            headerRow.Cells.Add(editHeaderCell);
            headerRow.Cells.Add(deleteHeaderCell);
            TBLPrenotazioni.Rows.Add(headerRow);
            TBLPrenotazioni.Attributes.Add("class", "table");
            
            List<PrenotazioneCliente> prenotazioni = DAL.getPrenotazioni();
            foreach (PrenotazioneCliente p in prenotazioni)
            {
                TableRow row = new TableRow();
                TableCell nameCell = new TableCell();
                TableCell lastNamecell = new TableCell();
                TableCell ageCell = new TableCell();
                //TableCell editButtonCell = new TableCell();
                TableCell deleteButtonCell = new TableCell();

                nameCell.Text = p.Nome;
                lastNamecell.Text = p.Cognome;
                ageCell.Text = p.Eta;
                /*
                Button editButton = new Button();
                editButton.ID = p.ID.ToString() + "Edit";
                editButton.Text = "Edit";
                editButton.Click += this.EditButton_Click;
                editButton.Attributes.Add("class", "btn btn-warning btn-sm");
                editButtonCell.Controls.Add(editButton);
                


                Button deleteButton = new Button();
                //deleteButton.ID = p.ID.ToString() + "Delete";
                deleteButton.Text = "Delete";
                //deleteButton.Click += this.DeleteButton_Click;
                deleteButton.Attributes.Add("class", "btn btn-danger btn-sm");
                deleteButtonCell.Controls.Add(deleteButton);

                row.Cells.Add(nameCell);
                row.Cells.Add(lastNamecell);
                row.Cells.Add(ageCell);
                //row.Cells.Add(editButtonCell);
                row.Cells.Add(deleteButtonCell);
                TBLPrenotazioni.Rows.Add(row);
            }
            TBLPrenotazioni.DataBind();*/
        }
    }
}