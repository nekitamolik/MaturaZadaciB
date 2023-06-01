using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;

namespace Matura_Zadatak_B12
{
    public partial class _Default : System.Web.UI.Page
    {

        SqlConnection conn = new SqlConnection(@"Data Source=192.168.0.20;Initial Catalog=B12;User ID=SA;Password=sp@sic123.");
        

        protected void Page_Load(object sender, EventArgs e)
        {
            PageRefresh();
        }

        private void PageRefresh() {
            conn.Open();
            SqlCommand comm = new SqlCommand(@"SELECT BrojSedista,Rezervacija FROM Karta", conn);
            SqlDataReader reader = comm.ExecuteReader();
            while (reader.Read())
            {
                if (!Convert.ToBoolean(reader[1]))
                    (this.FindControl("Button" + reader[0].ToString()) as Button).BackColor = Color.Green;
                else
                    (this.FindControl("Button" + reader[0].ToString()) as Button).BackColor = Color.Red;
            }
            reader.Dispose();
            comm.Dispose();
            conn.Close();
        }

        protected void Button_Click(object sender, EventArgs e)
        {
            Button b = sender as Button;
            Response.Write(b.Text);
            TextBoxBrSedista.Text = b.Text;
        }

        protected void ButtonPosalji_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand comm = new SqlCommand(@"UPDATE Karta SET Rezervacija = 1 WHERE BrojSedista = @brsedista", conn);
            comm.Parameters.AddWithValue("@brsedista", TextBoxBrSedista.Text);
            comm.ExecuteNonQuery();
            conn.Close();
            TextBoxBrSedista.Text = "";
            TextBoxEmail.Text = "";
            TextBoxImePrezime.Text = "";
            PageRefresh();
        }
    }
}