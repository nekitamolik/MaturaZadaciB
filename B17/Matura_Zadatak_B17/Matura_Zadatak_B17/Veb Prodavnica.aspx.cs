using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

namespace Matura_Zadatak_B17
{
    public partial class _Default : System.Web.UI.Page
    {
        DataTable phones = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {

            phones.Columns.Add("sifra", typeof(string));
            phones.Columns.Add("naziv artikla", typeof(string));
            phones.Columns.Add("proizvodjac", typeof(string));
            phones.Columns.Add("RAM memorija", typeof(string));
            phones.Columns.Add("tip procesora", typeof(string));
            phones.Columns.Add("kamera", typeof(string));
            phones.Columns.Add("ekran", typeof(string));
            phones.Columns.Add("slika", typeof(string));
            phones.Columns.Add("cena", typeof(string));

            string[] lines = File.ReadAllLines(Server.MapPath("/TextFiles/vebprodavnica.txt"));
            foreach (string x in lines)
            {
                DataRow row = phones.NewRow();
                row[0] = x.Substring(0, 5).Trim();
                row[1] = x.Substring(5, 25).Trim();
                row[2] = x.Substring(30, 20).Trim();
                row[3] = x.Substring(50, 5).Trim();
                row[4] = x.Substring(55, 15).Trim();
                row[5] = x.Substring(70, 10).Trim();
                row[6] = x.Substring(80, 10).Trim();
                row[7] = x.Substring(90, 30).Trim();
                row[8] = x.Substring(120, 10).Trim();
                phones.Rows.Add(row);
            }

            if (!IsPostBack)
            {
                DropDownListProizvodjac.Items.Add("");
                DropDownListEkran.Items.Add("");
                DropDownListKamera.Items.Add("");
                DropDownListProcesor.Items.Add("");
                DropDownListRAM.Items.Add("");
                DropDownListSIM.Items.Add("");

                DropDownListRAM.Items.Add("512MB");
                DropDownListRAM.Items.Add("1GB");
                DropDownListRAM.Items.Add("1.5GB");
                DropDownListRAM.Items.Add("2GB");
                DropDownListRAM.Items.Add("3GB");

                foreach (DataRow x in phones.Rows)
                {
                    if (!DropDownListProizvodjac.Items.Contains(new ListItem(x[2].ToString())))
                        DropDownListProizvodjac.Items.Add(x[2].ToString());
                    if (!DropDownListKamera.Items.Contains(new ListItem(x[5].ToString())))
                        DropDownListKamera.Items.Add(x[5].ToString());
                    if (!DropDownListEkran.Items.Contains(new ListItem(x[6].ToString())))
                        DropDownListEkran.Items.Add(x[6].ToString());
                    if (!DropDownListProcesor.Items.Contains(new ListItem(x[4].ToString())))
                        DropDownListProcesor.Items.Add(x[4].ToString());
                }
            }
        }

        protected void ButtonSrc_Click(object sender, EventArgs e)
        {
            GV.DataSource = null;
            bool match = false;
            DataTable t = new DataTable();
            t.Columns.Add("slika",typeof(string));
            t.Columns.Add("karakteristike",typeof(string));
            t.Columns.Add("cena",typeof(string));

            foreach (DataRow x in phones.Rows) 
            {
                match = true;
                if (!string.IsNullOrEmpty(DropDownListProizvodjac.SelectedValue))
                    if (!(DropDownListProizvodjac.SelectedValue == x[2].ToString())) 
                    {
                        match = false;
                        continue;
                    }
                if (!string.IsNullOrEmpty(DropDownListKamera.SelectedValue))
                    if (!(DropDownListKamera.SelectedValue == x[5].ToString()))
                    {
                        match = false;
                        continue;
                    }
                if (!string.IsNullOrEmpty(DropDownListEkran.SelectedValue))
                    if (!(DropDownListEkran.SelectedValue == x[6].ToString()))
                    {
                        match = false;
                        continue;
                    }
                if (!string.IsNullOrEmpty(DropDownListRAM.SelectedValue))
                    if (!(DropDownListRAM.SelectedValue == x[3].ToString()))
                    {
                        match = false;
                        continue;
                    }
                if (!string.IsNullOrEmpty(DropDownListProcesor.SelectedValue))
                    if (!(DropDownListProcesor.SelectedValue == x[4].ToString()))
                    {
                        match = false;
                        continue;
                    }
                if (match) 
                {
                    DataRow row = t.NewRow();
                    row[0] = x[7];
                    row[1] = x[1] + "|Proizvodjac: " + x[2].ToString() + "|RAM: " + x[3].ToString() + "|Procesor: " + x[4].ToString() + " Core|Ekran: " + x[6].ToString() + "|Kamera: " + x[5].ToString();
                    row[2] = x[8];
                    t.Rows.Add(row);
                }
            }
            GV.DataSource = t;
            GV.DataBind();
        }

        protected void GV_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                string[] stats = (e.Row.DataItem as DataRowView)[1].ToString().Split('|');
                (e.Row.FindControl("naziv") as Label).Text = stats[0];
                (e.Row.FindControl("proizvodjac") as Label).Text = stats[1];
                (e.Row.FindControl("RAM") as Label).Text = stats[2];
                (e.Row.FindControl("procesor") as Label).Text = stats[3];
                (e.Row.FindControl("ekran") as Label).Text = stats[4];
                (e.Row.FindControl("kamera") as Label).Text = stats[5]; 
                (e.Row.FindControl("slika") as Image).ImageUrl = (e.Row.DataItem as DataRowView)[0].ToString();
            }
        }
    }
}