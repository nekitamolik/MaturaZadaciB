using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

namespace Matura_Zadatak_B9
{
    public partial class _Default : System.Web.UI.Page
    {
        DataTable t = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {

                t.Columns.Add("Izvodjac", typeof(string));
                t.Columns.Add("Naziv", typeof(string));
                t.Columns.Add("Zanr", typeof(string));
                t.Columns.Add("Godina", typeof(string));
                t.Columns.Add("Izdavacka kuca", typeof(string));
                t.Columns.Add("Slika omota", typeof(string));

                string[] rows = File.ReadAllLines(Server.MapPath(@"Source\Katalog.txt"));
                foreach (string x in rows)
                {
                    string[] cells = x.Split(new char[] { ' ', '|' }, StringSplitOptions.RemoveEmptyEntries);
                    DataRow row = t.NewRow();
                    row[0] = cells[0];
                    row[1] = cells[1];
                    row[2] = cells[2];
                    row[3] = cells[3];
                    row[4] = cells[4];
                    row[5] = cells[5];
                    t.Rows.Add(row);
                }

                List<string> god = new List<string>();
                List<string> zanr = new List<string>();
                foreach (DataRow x in t.Rows)
                {
                    if (!god.Contains(x[3].ToString()))
                        god.Add(x[3].ToString());
                    if (!zanr.Contains(x[2].ToString()))
                        zanr.Add(x[2].ToString());
                }
                god.Sort();
                zanr.Sort();
          if (!IsPostBack)
                {
                DropDownListGodina.Items.Clear();
                DropDownListZanr.Items.Clear();
                DropDownListZanr.Items.Add("");
                DropDownListGodina.Items.Add("");
                foreach (string x in god)
                    DropDownListGodina.Items.Add(x);
                foreach (string x in zanr)
                    DropDownListZanr.Items.Add(x);
            }
        }

        protected void gv_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                (e.Row.FindControl("slika") as Image).ImageUrl = (e.Row.DataItem as DataRowView)[5].ToString();
            }
        }

        private DataTable GetTable(string izvodjac, string naziv, string zanr, string godina, string izdavacka_kuca)
        {
            bool match = true;

            DataTable t2 = new DataTable();
            t2.Columns.Add("Izvodjac", typeof(string));
            t2.Columns.Add("Naziv", typeof(string));
            t2.Columns.Add("Zanr", typeof(string));
            t2.Columns.Add("Godina", typeof(string));
            t2.Columns.Add("Izdavacka kuca", typeof(string));
            t2.Columns.Add("Slika omota", typeof(string));

            foreach (DataRow x in t.Rows)
            {
                match = true;
                if (!string.IsNullOrEmpty(izvodjac))
                {
                    if (!(x[0].ToString().ToLower().StartsWith(izvodjac.ToLower())))
                    {

                        match = false;
                    }
                }
                if (!string.IsNullOrEmpty(naziv))
                {
                    if (!(x[1].ToString().ToLower().StartsWith(naziv.ToLower())))
                    {
                        match = false;
                    }
                }

                if (!string.IsNullOrEmpty(zanr))
                {
                    if (!(x[2].ToString().ToLower() == zanr.ToLower()))
                    {
                        match = false;
                    }
                }
                if (!string.IsNullOrEmpty(godina))
                {
                    if (!(x[3].ToString().ToLower() == godina.ToLower()))
                    {
                        match = false;
                    }
                }
                if (!string.IsNullOrEmpty(izdavacka_kuca))
                {
                    if (!(x[4].ToString().ToLower().StartsWith(izdavacka_kuca.ToLower())))
                    {
                        match = false;
                    }
                }

                if (match)
                    t2.ImportRow(x);
            }

            return t2;
        }

        protected void src_Click(object sender, EventArgs e)
        {
            GV.DataSource = null;
            DataTable show = GetTable(TextBoxIzvodjac.Text, TextBoxNaziv.Text, DropDownListZanr.SelectedValue.ToString(), DropDownListGodina.SelectedValue.ToString(), TextBoxIzdavackaKuca.Text);
            GV.DataSource = show;
            GV.DataBind();
        }
    }
}