using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Matura_Zadatak_B8
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=192.168.0.20;Initial Catalog=B8;User ID=SA;Password=sp@sic123.");
            conn.Open();
            SqlCommand comm = new SqlCommand(@"INSERT INTO Utisak VALUES (@ime,@email,@komm,@datum);", conn);
            comm.Parameters.AddWithValue("@ime", TextBoxIme.Text);
            comm.Parameters.AddWithValue("@email", TextBoxEmail.Text);
            comm.Parameters.AddWithValue("@komm", TextBoxKomm.Text);
            comm.Parameters.AddWithValue("@datum", DateTime.Now.ToString("yyyy.MM.dd"));
            comm.ExecuteNonQuery();
            conn.Close();
            TextBoxKomm.Text = "";
            TextBoxIme.Text = "";
            TextBoxEmail.Text = "";
        }
    }
}