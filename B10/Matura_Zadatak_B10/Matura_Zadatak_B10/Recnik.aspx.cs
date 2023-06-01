using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Matura_Zadatak_B10
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonPrevod_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=192.168.0.20;Initial Catalog=B10;User ID=SA;Password=sp@sic123.");
            conn.Open();
            if (DropDownListSmer.SelectedValue.ToString() == "Srpsko-Engleski") 
            {
                if (!string.IsNullOrEmpty(TextBoxSrp.Text))
                {
                    SqlCommand comm = new SqlCommand(@"SELECT Engleski,Opis FROM Reci WHERE Srpski =@rec", conn);
                    comm.Parameters.AddWithValue("@rec", TextBoxSrp.Text);
                    SqlDataReader reader = comm.ExecuteReader();
                    while (reader.Read())
                    {
                        TextBoxEng.Text = reader[0].ToString();
                       TextBoxOpis.Text= reader[1] == null ? "" : reader[1].ToString(); 
                    }
                    reader.Dispose();
                    comm.Dispose();
                }
            }
            
            if (DropDownListSmer.SelectedValue.ToString() == "Englesko-Srpski") 
            {
                if (!string.IsNullOrEmpty(TextBoxEng.Text))
                {
                    SqlCommand comm = new SqlCommand(@"SELECT Srpski,Opis FROM Reci WHERE Engleski =@rec", conn);
                    comm.Parameters.AddWithValue("@rec", TextBoxEng.Text);
                    SqlDataReader reader = comm.ExecuteReader();
                    while (reader.Read())
                    {
                        TextBoxSrp.Text = reader[0].ToString();
                        TextBoxOpis.Text = reader[1] == null ? "" : reader[1].ToString();
                    }
                    reader.Dispose();
                    comm.Dispose();
                }
            }
            conn.Close();
        }
    }
}