using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;

namespace Matura_Zadatak_B15
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DirectoryInfo d = new DirectoryInfo(Server.MapPath(@"/TextFiles/"));
                FileInfo[] files = d.GetFiles("*.txt");
                DropDownListLinija.Items.Add("");
                foreach (FileInfo f in files)
                {
                    string[] x = f.Name.Split(new string[] { ".txt" }, StringSplitOptions.RemoveEmptyEntries);
                    DropDownListLinija.Items.Add(x[0]);
                }
            }
        }

        protected void DropDownListLinija_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownListSmer.Items.Clear();
            string[] lines = File.ReadAllLines(Server.MapPath(@"/TextFiles/" + DropDownListLinija.SelectedValue + ".txt"));
            foreach (string x in lines)
            {
                if (x.StartsWith("SMER:"))
                {
                    string[] smer = x.Split(new string[] { "SMER:" }, StringSplitOptions.RemoveEmptyEntries);
                    DropDownListSmer.Items.Add(smer[0]);
                }
            }

        }

        protected void ButtonSrc_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(DropDownListLinija.SelectedValue))
            {
                string[] lines = File.ReadAllLines(Server.MapPath(@"/TextFiles/" + DropDownListLinija.SelectedValue + ".txt"));
                DataTable t = new DataTable();
                t.Columns.Add("Rbr", typeof(string));
                t.Columns.Add("Polazak", typeof(string));
                bool reader = false;
                int br = 1;
                foreach (string x in lines)
                {
                    if (x.StartsWith("SMER"))
                    {
                        reader = false;
                        if (x.StartsWith("SMER:" + DropDownListSmer.SelectedValue))
                        {
                            reader = true;
                            continue;
                        }
                    }
                    if (reader)
                    {
                        DataRow row = t.NewRow();
                        row[0] = br + ".";
                        row[1] = x;
                        br++;
                        t.Rows.Add(row);
                    }
                }

                GV.DataSource = t;
                GV.DataBind();
            }
        }
    }
}