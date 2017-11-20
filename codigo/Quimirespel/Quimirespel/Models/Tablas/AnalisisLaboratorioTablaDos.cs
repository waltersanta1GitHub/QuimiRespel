using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Quimirespel.Models.Tablas
{
    public class AnalisisLaboratorioTablaDos
    {
        public string NumMuestra { get; set; }
        public string NombreMuestra { get; set; }
        public string Cantidad { get; set; }
        public BaseModelo Unidad { get; set; }
        public BaseModelo Estado { get; set; }
        public BaseModelo TipoTratamiento { get; set; }
        public string Insumos { get; set; }
        public string CantidadInsumo { get; set; }
        public BaseModelo UnidadInsumo { get; set; }
    }
}