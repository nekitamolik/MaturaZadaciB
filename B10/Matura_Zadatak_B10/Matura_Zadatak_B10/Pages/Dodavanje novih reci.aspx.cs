using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Matura_Zadatak_B10.Pages
{
    public partial class Dodavanje_novih_reci : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSnimi_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=192.168.0.20;Initial Catalog=B10;User ID=SA;Password=sp@sic123.");
            conn.Open();
            SqlCommand comm = new SqlCommand(@"INSERT INTO Reci VALUES(@eng,@srp,@opis);", conn);
            comm.Parameters.AddWithValue("@eng", TextBoxEng.Text);
            comm.Parameters.AddWithValue("@srp", TextBoxSrp.Text);
            comm.Parameters.AddWithValue("@opis", TextBoxOpis.Text);
            comm.ExecuteNonQuery();
            comm.Dispose();
            conn.Close();
            TextBoxEng.Text = "";
            TextBoxSrp.Text = "";
            TextBoxOpis.Text = "";
        }
    }
}