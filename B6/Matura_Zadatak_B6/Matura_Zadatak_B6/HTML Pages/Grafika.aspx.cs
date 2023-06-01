using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;

namespace Matura_Zadatak_B6.HTML_Pages
{
    public partial class Grafika : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=192.168.0.20;Initial Catalog=Skola;User ID=SA;Password=sp@sic123.");

        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable table = new DataTable();
            SqlDataAdapter adapter = new SqlDataAdapter(@"SELECT Razred,Odlican,Vrlodobar,Dobar,Dovoljan,Nedovoljan,ProsOcena FROM Uspeh", conn);
            adapter.Fill(table);
            foreach (DataRow row in table.Rows) {
                Graph.Series[0].Points.AddXY(row[0].ToString(), row[6].ToString());
            }
        }
    }
}