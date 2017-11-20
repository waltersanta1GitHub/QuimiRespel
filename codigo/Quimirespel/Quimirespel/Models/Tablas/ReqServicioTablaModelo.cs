using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Quimirespel.Models.Tablas
{
    public class ReqServicioTablaModelo
    {
        public string Codigo { get; set; }
        public string Descripcion { get; set; }
        public string NombreResiduo { get; set; }
        public string Cantidad { get; set; }
        public BaseModelo Unidad { get; set; }
        public BaseModelo Estado { get; set; }
        public BaseModelo  Embalaje { get; set; }
        public BaseModelo EstadoEmbalaje { get; set; }
        public string ResiduosBienEtiquetados { get; set; }
        public string EstadoEtiquetaRotulo { get; set; }
        
    }
}