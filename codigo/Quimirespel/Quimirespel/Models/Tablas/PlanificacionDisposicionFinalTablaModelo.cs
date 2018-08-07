using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Quimirespel.Models.Tablas
{
    public class PlanificacionDisposicionFinalTablaModelo
    {
        public string NombreRazonSocial { get; set; }
        public string NombreResiduos { get; set; }
        public int Cantidad { get; set; }
        public BaseModelo Embalaje { get; set; }
        
        public string Lote { get; set; }
        
        public string FechaDisposicion { get; set; }
        public string HoraDisposicion { get; set; }
        public string Coordenadas { get; set; }     
    }
}