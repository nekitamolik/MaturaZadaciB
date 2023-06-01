using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml;
using System.IO;

namespace Matura_Zadatak_B18.Models
{
    public class XMLDocReader
    {
        public List<Prognoza> ReadXMLFile(string path) 
        {
            List<Prognoza> prognoze = new List<Prognoza>();
            XmlDocument x = new XmlDocument();
            x.Load(path);
            if (x != null)
            {
                XmlNodeList l = x.DocumentElement.ChildNodes;
                foreach (XmlNode n in l)
                {
                    XmlNodeList data = n.ChildNodes;
                    prognoze.Add(new Prognoza(data[0].InnerText, data[1].InnerText, Convert.ToInt16(data[2].InnerText), Convert.ToInt16(data[3].InnerText), data[4].InnerText));
                }
            }
            return prognoze;
        }

    }
}