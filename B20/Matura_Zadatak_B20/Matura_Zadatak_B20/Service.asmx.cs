using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.IO;

namespace Matura_Zadatak_B20
{
    /// <summary>
    /// Summary description for Service
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class Service : System.Web.Services.WebService
    {

        [WebMethod]
        public double ProcitajKursNaDan(DateTime Datum, string valuta)
        {
            double kurs = 0;
            string[] lines = File.ReadAllLines(Server.MapPath("/TextSource/KursValuta.txt"));
            foreach (string x in lines)
            {
                string[] pom = x.Split(new char[] { '|' }, StringSplitOptions.RemoveEmptyEntries);
                if (pom[0] == Datum.ToString("dd.MM.yyyy") && pom[1] == valuta)
                {
                    kurs = Convert.ToDouble(pom[2]);
                    break;
                }
            }
            return kurs;
        }

        [WebMethod]
        public bool UpisiKursNaDan(DateTime Datum, string valuta, double Kurs) 
        {
            using(StreamWriter sw = File.AppendText(Server.MapPath("/TextSource/KursValuta.txt")))
            {
                sw.WriteLine(Datum.ToString("dd.MM.yyyy") + "|" + valuta + "|" + Kurs);
            }
            return true;
        }

        [WebMethod]
        public List<string> ProcitajSveValute() 
        {
            List<string> kursevi = new List<string>();

            string[] lines = File.ReadAllLines(Server.MapPath("/TextSource/KursValuta.txt"));
            foreach (string x in lines) 
            {
                string[] pom = x.Split(new char[] { '|' }, StringSplitOptions.RemoveEmptyEntries);
                if(!kursevi.Contains(pom[1]))
                    kursevi.Add(pom[1]);
            }
            return kursevi;
        }
    }
}
