using System;
using System.Collections.Generic;
using System.Xml;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

namespace Matura_Zadatak_B7.HTML_Pages
{
    public partial class Pregled : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable t = new DataTable();
            t.Columns.Add("ISBN", typeof(string));
            t.Columns.Add("naslov", typeof(string));
            t.Columns.Add("stanje", typeof(string));
            t.Columns.Add("citano", typeof(string));
            XmlDocument x = new XmlDocument();
            x.Load(Server.MapPath("~") + "/XML/biblioteka.xml");
            XmlNodeList l = x.DocumentElement.ChildNodes;

            foreach (XmlNode n in l)
            {
                DataRow row = t.NewRow();
                row[0] = n.Attributes[0].Value.ToString();
                row[1] = n.ChildNodes[0].InnerText.ToString();
                row[2] = n.ChildNodes[1].InnerText.ToString();
                row[3] = n.ChildNodes[2].InnerText.ToString();
                t.Rows.Add(row);
            }

            string[] pom = new string[4];
            for (int i = 0; i < t.Rows.Count - 1; i++)
                for (int j = i + 1; j < t.Rows.Count; j++)
                    if (Convert.ToInt16(t.Rows[i][3].ToString()) < Convert.ToInt16(t.Rows[j][3].ToString()))
                    {
                        pom[0] = t.Rows[i][0].ToString();
                        pom[1] = t.Rows[i][1].ToString();
                        pom[2] = t.Rows[i][2].ToString();
                        pom[3] = t.Rows[i][3].ToString();
                        t.Rows[i][0] = t.Rows[j][0];
                        t.Rows[i][1] = t.Rows[j][1];
                        t.Rows[i][2] = t.Rows[j][2];
                        t.Rows[i][3] = t.Rows[j][3];
                        t.Rows[j][0] = pom[0];
                        t.Rows[j][1] = pom[1];
                        t.Rows[j][2] = pom[2];
                        t.Rows[j][3] = pom[3];
                    }
            GV.DataSource = t;
            GV.DataBind();
        }
    }
}