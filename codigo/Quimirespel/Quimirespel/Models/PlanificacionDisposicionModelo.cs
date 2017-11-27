using MongoDB.Bson;
using MongoDB.Bson.Serialization.Attributes;
using System.Collections.Generic;

namespace Quimirespel.Models
{
    public class PlanificacionDisposicionModelo
    {

        [BsonId]
        public ObjectId ID { get; set; }
        public string NumUnico { get; set; }
        public string AsesorAsignado { get; set; }
        public string Cargo { get; set; }
        public string Celular { get; set; }
        public bool Eliminado { get; set; }
        public string ClosedDate { get; set; }
        public string CreatedDate { get; set; }
        public string DiligenciadoPor { get; set; }
        public string DirAdmin { get; set; }
        public string DirOperativa { get; set; }
        public bool Editable { get; set; }
        public string Email { get; set; }
        public string Extencion { get; set; }
        public string Fecha { get; set; }
        public string Hora { get; set; }
        public string FechaAsignadaVisita { get; set; }
        public string IdFormulario { get; set; }
        public string HoraAsisgnadaVisita { get; set; }
        public string NombreFormulario { get; set; }
        public List<BaseModelo> LogDocumentos { get; set; }
        public bool Printed { get; set; }
        public string RecomendacionesIngreso { get; set; }
        public bool Visible { get; set; }
        public string Telefono { get; set; }
        public BaseModelo CIIU { get; set; }
        public CiudadModelo Ciudad { get; set; }
        public CiudadModelo MunicipioDiligencia { get; set; }






        // Propios 
        public string NombreMuestra { get; set; }
        public string Cantidad { get; set; }
        public BaseModelo Unidad { get; set; }
        public BaseModelo Estado { get; set; }
        public BaseModelo Embalaje { get; set; }
        public string NumEmbalaje { get; set; }
        public string NombreCompletoEntregaMuestras { get; set; }
        public string FechaEntregaMuestra { get; set; }
        public string HoraEntregaMuestra { get; set; }
        public string CargoEntregaMuestra { get; set; }
        public string ObservacionesEntregaMuestra { get; set; }

        public string NombreCompletoRetiraMuestras { get; set; }
        public string FechaRetiraMuestras { get; set; }
        public string HoraRetiraMuestras { get; set; }
        public string CargoRetiraMuestras { get; set; }
        public string ObservacionesRetiraMuestras { get; set; }
        public string NumRecoleccionMuestra { get; set; }

        public string NombreCompletoRecibeMuestras { get; set; }
        public string FechaRecibeMuestras { get; set; }
        public string HoraRecibeMuestras { get; set; }
        public string CargoRecibeMuestras { get; set; }
        public string ObservacionesRecibeMuestras { get; set; }




    }
}