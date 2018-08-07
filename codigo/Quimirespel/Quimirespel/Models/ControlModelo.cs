using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Quimirespel.Models
{
    public class ControlModelo
    {
        // Control
        public string IdFormulario { get; set; }
        public string NombreFormulario { get; set; }
        public bool Printed { get; set; }
        public bool Eliminado { get; set; }
        public string ClosedDate { get; set; }
        public string CreatedDate { get; set; }
        public bool Visible { get; set; }
        public bool Editable { get; set; }
        public List<BaseModelo> LogDocumentos { get; set; }
    }
}