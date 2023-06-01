using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;

namespace Matura_Zadatak_B14
{
    public partial class _Default : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            {
                DropDownListDatum.Items.Clear();
                DirectoryInfo d = new DirectoryInfo(Server.MapPath(@"/TextFiles/"));
                FileInfo[] files = d.GetFiles("*.txt");
                DropDownListDatum.Items.Add("");
                foreach (FileInfo f in files)
                {
                    string[] x = f.Name.Split(new string[] { ".txt" }, StringSplitOptions.RemoveEmptyEntries);
                    DropDownListDatum.Items.Add(x[0]);
                }

                DropDownListTip.Items.Clear();
                DirectoryInfo i = new DirectoryInfo(Server.MapPath(@"\Images\"));
                FileInfo[] images = i.GetFiles("*.png");
                DropDownListTip.Items.Add("");
                foreach (FileInfo img in images)
                {
                    string[] x = img.Name.Split(new string[] { ".png" }, StringSplitOptions.RemoveEmptyEntries);
                    DropDownListTip.Items.Add(x[0]);
                }
            }
            
        }

        protected void ButtonSrc_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(DropDownListDatum.SelectedValue))
            {
                DataTable t = new DataTable();
                t.Columns.Add("Vreme", typeof(string));
                t.Columns.Add("Naziv Emisije", typeof(string));
                t.Columns.Add("Tip Emisije", typeof(string));

                string[] lines = File.ReadAllLines(Server.MapPath(@"/TextFiles/" + DropDownListDatum.SelectedValue + ".txt"));
                foreach (string x in lines)
                {
                    string[] cells = x.Split(new char[] { '|' }, StringSplitOptions.RemoveEmptyEntries);
                    if (!string.IsNullOrEmpty(DropDownListTip.SelectedValue))
                    {
                        string[] type = cells[3].Split(new string[] { "\\", ".png" }, StringSplitOptions.RemoveEmptyEntries);
                        if (type[type.Length - 1] == DropDownListTip.SelectedValue)
                        {
                            DataRow row = t.NewRow();
                            row[0] = cells[0];
                            row[1] = cells[1];
                            row[2] = cells[3];
                            t.Rows.Add(row);
                        }
                        else
                            continue;
                    }

                    else
                    {
                        DataRow row = t.NewRow();
                        row[0] = cells[0];
                        row[1] = cells[1];
                        row[2] = cells[3];
                        t.Rows.Add(row);
                    }
                }

                GV.DataSource = t;
                GV.DataBind();
            }
        }

        protected void GV_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                (e.Row.FindControl("slika") as Image).ImageUrl = (e.Row.DataItem as DataRowView)[2].ToString();
            }
        }

       
    }
}