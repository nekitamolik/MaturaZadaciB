using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Xml;
using System.IO;

namespace Matura_Zadatak_B16.Controllers
{
    public class HomeController : Controller
    {
        static List<Models.RasporedModel> raspored { get; set; }

        public ActionResult Display()
        {
            return View(raspored);
        }

        public ActionResult Upload()
        {
            return View();
        }

        [HttpPost]
        public ActionResult UploadFile(HttpPostedFileBase file)
        {
            try
            {
                string FileName = Path.GetFileName(file.FileName);
                string path = Path.Combine(Server.MapPath("~/App_Data"), FileName);
                file.SaveAs(path);
                if (file.ContentLength > 0)
                    raspored = Models.ReadXMLRaspored.ReadXmlRaspored(Path.Combine(Server.MapPath("~/App_Data/"), file.FileName));
                return RedirectToAction("Display");
            }
            catch
            {
                return RedirectToAction("Upload");
            }
        }
    }
}
