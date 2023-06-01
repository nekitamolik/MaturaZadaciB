using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.IO;

namespace Matura_Zadatak_B18.Controllers
{
    public class HomeController : Controller
    {
        Models.XMLDocReader r = new Models.XMLDocReader();
        static List<Models.Prognoza> Prognoze { get; set; }
        static Models.Prognoza p { get; set; }
        static List<string> gradovi = new List<string>();

        public ActionResult Prognoza()
        {
            ViewBag.gradovi = gradovi;
            return View(p);
        }

        public ActionResult MaxTemps()
        {
            Prognoze = r.ReadXMLFile(Path.Combine(Server.MapPath("~/XML"), "Prognoza.xml"));
            p = Prognoze[0];
            foreach (Models.Prognoza x in Prognoze)
                gradovi.Add(x.NazivMesta);
            return View(Prognoze);
        }


        [HttpPost]
        public ActionResult SelectedTown(string DropDownListGrad)
        {
            p = Prognoze.Find(x => x.NazivMesta == DropDownListGrad);
            ViewBag.gradovi = gradovi;
            return View("Prognoza",p);
        }

        [HttpGet]
        public ActionResult ClickedTown(string town) 
        {
            p = Prognoze.Find(x => x.NazivMesta == town);
            if (p != null)
            {
                ViewBag.gradovi = gradovi;
                return View("Prognoza", p);
            }
            else
                return View("MaxTemps", Prognoze);
        }   

    }
}
