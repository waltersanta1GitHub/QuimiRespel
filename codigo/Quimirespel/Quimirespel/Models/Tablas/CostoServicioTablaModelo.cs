using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Quimirespel.Models.Tablas
{
    public class CostoServicioTablaModelo
    {
        public BaseModelo Residuo { get; set; }
        public BaseModelo Tratamiento { get; set; }
        public double Cantidad { get; set; }
        public BaseModelo Unidad { get; set; }
        public Decimal Costo { get; set; }
        public Decimal CostoTotal { get; set; }
    }
}