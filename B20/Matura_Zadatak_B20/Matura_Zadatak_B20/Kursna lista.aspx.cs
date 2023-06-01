using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Matura_Zadatak_B20
{
    public partial class _Default : System.Web.UI.Page
    {

        Service s = new Service();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<string> valute = s.ProcitajSveValute();
                foreach (string x in valute)
                    DropDownListValuta.Items.Add(x);
            }
        }

        protected void ButtonPrikazi_Click(object sender, EventArgs e)
        {
            LabelKurs.Text =s.ProcitajKursNaDan(Convert.ToDateTime(TextBoxDatum.Text), DropDownListValuta.SelectedValue).ToString() != "0" ? s.ProcitajKursNaDan(Convert.ToDateTime(TextBoxDatum.Text), DropDownListValuta.SelectedValue).ToString() : "Nepostoji podatak";
        }
    }
}