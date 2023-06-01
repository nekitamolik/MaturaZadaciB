using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Matura_Zadatak_B19
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonCyrillicToLatin_Click(object sender, EventArgs e)
        {
            Service s = new Service();
            TextBoxLatin.Text = s.CirilicaULatinicu(TextBoxCyrillic.Text);
        }

        protected void ButtonLatinToCyrillic_Click(object sender, EventArgs e)
        {
            Service s = new Service();
            TextBoxCyrillic.Text = s.LatinicaUCirilicu(TextBoxLatin.Text);
        }
    }
}