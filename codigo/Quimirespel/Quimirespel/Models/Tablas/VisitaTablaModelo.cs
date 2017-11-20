using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Quimirespel.Models.Tablas
{
    public class VisitaTablaModelo
    {
        public string Nombre { get; set; }
        public string Cantidad { get; set; }
        public BaseModelo Unidad { get; set; }
        public BaseModelo Estado { get; set; }
        public BaseModelo Embalaje { get; set; }
    }
}