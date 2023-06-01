using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Matura_Zadatak_B7
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            if ((TextBoxUsername.Text == "Test" && TextBoxPassword.Text == "test123") || (TextBoxUsername.Text == "Test2" && TextBoxPassword.Text == "test2123"))
            {
                Response.Write("<script>alert('Dobrodosli!')</script>");
            }
            else 
            {
                Response.Write("<script>alert('Nepostojeći nalog!')</script>"); 
            }
        }
    }
}