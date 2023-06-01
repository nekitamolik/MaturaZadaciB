using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Matura_Zadatak_B20.HTML_Pages
{
    public partial class AzuriranjeListe : System.Web.UI.Page
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

        protected void ButtonAdd_Click(object sender, EventArgs e)
        {
            s.UpisiKursNaDan(Convert.ToDateTime(TextBoxDatum.Text), DropDownListValuta.SelectedValue, Convert.ToDouble(TextBoxIznos.Text));
            TextBoxDatum.Text = "";
            DropDownListValuta.SelectedIndex = 0;
            TextBoxIznos.Text = "";
        }

        protected void ButtonCancle_Click(object sender, EventArgs e)
        {
            TextBoxDatum.Text = "";
            DropDownListValuta.SelectedIndex = 0;
            TextBoxIznos.Text = "";
        }
    }
}