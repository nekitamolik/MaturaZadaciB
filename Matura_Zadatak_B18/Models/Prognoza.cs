using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;


namespace Matura_Zadatak_B18.Models
{
    public class Prognoza
    {
        public string MestoID { get; set; }
        public string NazivMesta { get; set; }
        public int MaxTemperatura { get; set; }
        public int MinTemperatura { get; set; }
        public string Vreme { get; set; }

        public Prognoza(string MestoID, string NazivMesta, int MaxTemperatura, int MinTemperatura, string Vreme) {
            this.MestoID = MestoID;
            this.NazivMesta = NazivMesta;
            this.MinTemperatura = MinTemperatura;
            this.MaxTemperatura = MaxTemperatura;
            this.Vreme = Vreme;
        }
    }
}