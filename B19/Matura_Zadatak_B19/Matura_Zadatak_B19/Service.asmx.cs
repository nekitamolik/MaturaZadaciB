using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace Matura_Zadatak_B19
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
        public string CirilicaULatinicu(string text)
        {
            string prevod = "";
            List<string> cyrillic = new List<string>() { "а", "б", "в", "г", "д", "ђ", "е", "ж", "з", "и", "ј", "к", "л", "љ", "м", "н", "њ", "о", "п", "р", "с", "т", "ћ", "у", "ф", "х", "ц", "ч", "џ", "ш" };
            List<string> latin = new List<string>() { "a", "b", "v", "g", "d", "đ", "е", "ž", "z", "i", "j", "k", "l", "lj", "m", "n", "nj", "o", "p", "r", "s", "t", "ć", "u", "f", "h", "c", "č", "dž", "š" };
            bool upper = false;
            int index;
            char[] txt = text.ToCharArray();
            for (int i = 0; i < txt.Length; i++)
            {
                if (Char.IsLetter(txt[i]))
                {
                    upper = false;
                    index = cyrillic.IndexOf(txt[i].ToString());
                    if (Char.IsUpper(txt[i]))
                        upper = true;
                    if (upper)
                        prevod += latin[index].ToString().ToUpper();
                    else
                        prevod += latin[index].ToString();
                }
                else
                    prevod += txt[i].ToString();
            }

            return prevod;
        }

        [WebMethod]
        public string LatinicaUCirilicu(string text)
        {
            string prevod = "";
            List<string> cyrillic = new List<string>() { "а", "б", "в", "г", "д", "ђ", "е", "ж", "з", "и", "ј", "к", "л", "љ", "м", "н", "њ", "о", "п", "р", "с", "т", "ћ", "у", "ф", "х", "ц", "ч", "џ", "ш" };
            List<string> latin = new List<string>() { "a", "b", "v", "g", "d", "đ", "e", "ž", "z", "i", "j", "k", "l", "lj", "m", "n", "nj", "o", "p", "r", "s", "t", "ć", "u", "f", "h", "c", "č", "dž", "š" };
            bool upper = false;
            int index;
            char[] txt = text.ToCharArray();
            for (int i = 0; i < txt.Length; i++)
            {
                if (Char.IsLetter(txt[i]))
                {
                    upper = false;
                    if (txt[i] == 'l' && txt[i + 1] == 'j')
                    {
                        index = latin.IndexOf("lj");
                        if (Char.IsUpper(txt[i]))
                            upper = true;
                        if (upper)
                            prevod += cyrillic[index].ToString().ToUpper();
                        else
                            prevod += cyrillic[index].ToString();
                        i++;
                    }

                    else if (txt[i] == 'n' && txt[i + 1] == 'j')
                    {
                        index = latin.IndexOf("nj");
                        if (Char.IsUpper(txt[i]))
                            upper = true;
                        if (upper)
                            prevod += cyrillic[index].ToString().ToUpper();
                        else
                            prevod += cyrillic[index].ToString();
                        i++;
                    }

                    else if (txt[i] == 'd' && txt[i + 1] == 'ž')
                    {
                        index = latin.IndexOf("dž");
                        if (Char.IsUpper(txt[i]))
                            upper = true;
                        if (upper)
                            prevod += cyrillic[index].ToString().ToUpper();
                        else
                            prevod += cyrillic[index].ToString();
                        i++;
                    }

                    else
                    {
                        index = latin.IndexOf(txt[i].ToString());
                        if (Char.IsUpper(txt[i]))
                            upper = true;
                        if (upper)
                            prevod += cyrillic[index].ToString().ToUpper();
                        else
                            prevod += cyrillic[index].ToString();
                    }

                }
                else
                    prevod += txt[i].ToString();
            }

            return prevod;
        }
    }
}
