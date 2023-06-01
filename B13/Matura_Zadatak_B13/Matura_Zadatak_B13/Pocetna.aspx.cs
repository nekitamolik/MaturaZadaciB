using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;

namespace Matura_Zadatak_B13
{
    public partial class _Default : System.Web.UI.Page
    {

        DataTable imenik = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            imenik.Columns.Add("Redni broj", typeof(string));
            imenik.Columns.Add("Ime", typeof(string));
            imenik.Columns.Add("Prezime", typeof(string));
            imenik.Columns.Add("Adresa", typeof(string));
            imenik.Columns.Add("Broj Telefona", typeof(string));
            imenik.Columns.Add("Email", typeof(string));
            imenik.Columns.Add("Mesto", typeof(string));

            string[] lines = File.ReadAllLines(Server.MapPath(@"\Source\imenik.txt"));
            foreach (string x in lines) 
            {
                string[] split = x.Split(new string[] { " | " }, StringSplitOptions.RemoveEmptyEntries);
                DataRow row = imenik.NewRow();
                row[0] = split[0] + ".";
                row[1] = split[1];
                row[2] = split[2];
                row[3] = split[3];
                row[4] = split[4];
                row[5] = split[5];
                row[6] = split[6];
                imenik.Rows.Add(row);
            }

            DropDownListMesto.Items.Add("");
            foreach (DataRow x in imenik.Rows) 
                if (!(DropDownListMesto.Items.Contains(new ListItem(x[6].ToString()))))
                    DropDownListMesto.Items.Add(x[6].ToString());

            GV.DataSource = imenik;
            GV.DataBind();
        }

        protected void ButtonSrc_Click(object sender, EventArgs e)
        {
            GV.DataSource = null;
            DataTable src = new DataTable();
            src.Columns.Add("Redni broj", typeof(string));
            src.Columns.Add("Ime", typeof(string));
            src.Columns.Add("Prezime", typeof(string));
            src.Columns.Add("Adresa", typeof(string));
            src.Columns.Add("Broj Telefona", typeof(string));
            src.Columns.Add("Email", typeof(string));
            src.Columns.Add("Mesto", typeof(string));

            bool match;
            foreach (DataRow x in imenik.Rows) 
            {
                match = true;
                if (!string.IsNullOrEmpty(TextBoxIme.Text))
                    if (!(x[1].ToString().ToLower().StartsWith(TextBoxIme.Text.ToLower())))
                        match = false;
                if (!string.IsNullOrEmpty(TextBoxPrezime.Text))
                    if (!(x[2].ToString().ToLower().StartsWith(TextBoxPrezime.Text.ToLower())))
                        match = false;
                if (!string.IsNullOrEmpty(TextBoxAdresa.Text))
                    if (!(x[3].ToString().ToLower().StartsWith(TextBoxAdresa.Text.ToLower())))
                        match = false;
                if (!string.IsNullOrEmpty(TextBoxTel.Text))
                    if (!(x[4].ToString().ToLower().StartsWith(TextBoxTel.Text.ToLower())))
                        match = false;
                if (!string.IsNullOrEmpty(TextBoxEmail.Text))
                    if (!(x[5].ToString().ToLower().StartsWith(TextBoxEmail.Text.ToLower())))
                        match = false;
                if (!string.IsNullOrEmpty(DropDownListMesto.SelectedValue.ToString()))
                    if (!(x[6].ToString().ToLower() == DropDownListMesto.SelectedValue.ToString().ToLower()))
                        match = false;
                if (match) 
                {
                    DataRow pom = src.NewRow();
                    pom[0] = x[0];
                    pom[1] = x[1];
                    pom[2] = x[2];
                    pom[3] = x[3];
                    pom[4] = x[4];
                    pom[5] = x[5];
                    pom[6] = x[6];
                    src.Rows.Add(pom);
                }
            }
            GV.DataSource = src;
            GV.DataBind();
        }
    }
}