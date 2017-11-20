using MongoDB.Bson;
using MongoDB.Bson.Serialization.Attributes;
using Quimirespel.Models.Tablas;
using System.Collections.Generic;

namespace Quimirespel.Models
{
    public class ManifiestoCargaModelo
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
        public List<ManifiestoCargaTablaUno> ResiduosDeclarados { get; set; }
        public List<ManifiestoCargaTablaDos> ResiduosContaminados { get; set; }
        public string TipoRiesgoSalud { get; set; }
        public string TipoRiesgoInflamabilidad { get; set; }
        public string TipoRiesgoReactividad { get; set; }
        public string TipoRiesgoToxicidad { get; set; }
        public string Observaciones { get; set; }
    }
}