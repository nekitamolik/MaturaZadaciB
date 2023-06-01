using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Xml;
using System.IO;

namespace Matura_Zadatak_B16.Models
{
    public class ReadXMLRaspored
    {
        public static List<RasporedModel> ReadXmlRaspored(string XmlFilePath) 
        {
            List<RasporedModel> raspored = new List<RasporedModel>();
            XmlDocument x = new XmlDocument();
            x.Load(XmlFilePath);
            XmlNodeList l = x.DocumentElement.ChildNodes;
            foreach (XmlNode n in l) 
            {
                XmlNodeList data = n.ChildNodes;
                raspored.Add(new RasporedModel(Convert.ToInt32(data[0].InnerText), data[1].InnerText, data[2].InnerText));
            }
            return raspored;
        }
    }
}