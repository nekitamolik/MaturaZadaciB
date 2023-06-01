using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;


namespace Matura_Zadatak_B16.Models
{
    public class RasporedModel
    {
        public int RBr { get; set; }
        public string DanUNedelji { get; set; }
        public string Predmet { get; set; }

        public RasporedModel() {
            RBr = 0;
            DanUNedelji = null;
            Predmet = null;
        }

        public RasporedModel(int Rbr, string DanUNedelji, string Predmet)
        {
            this.RBr = Rbr;
            this.DanUNedelji = DanUNedelji;
            this.Predmet = Predmet;
        }
    }
}