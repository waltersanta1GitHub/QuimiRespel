using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Quimirespel.Models.Tablas
{
    public class AnalisisLaboratorioTablaUno
    {
        public string NumMuestra { get; set; }
        public string NombreMuestra { get; set; }
        public List<BaseModelo> Fisicos { get; set; }
        public List<BaseModelo> Peligrosidad { get; set; }
        public List<BaseModelo> ComposicionToxica { get; set; }
        public string FechaRecepcion { get; set; }
        public string FechaAnalisis { get; set; }
    }
}