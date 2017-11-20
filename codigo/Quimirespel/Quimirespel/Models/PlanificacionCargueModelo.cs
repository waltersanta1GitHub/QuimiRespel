using Quimirespel.Models.Tablas;
using System.Collections.Generic;
using MongoDB.Bson;
using MongoDB.Bson.Serialization.Attributes;

namespace Quimirespel.Models
{
    public class PlanificacionCargueModelo
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
        public string FechaServicio { get; set; }
        public string PlacaVehiculo { get; set; }
        public string TipoVehiculo { get; set; }
        public string Capacidadvehiculo { get; set; }
        public string Ruta1 { get; set; }
        public string Ruta2 { get; set; }
        public string Ruta3 { get; set; }
        public string HoraSalida { get; set; }
        public string HoraLlegadaDestino { get; set; }
        public string HoraMaximaLlegadaDestino { get; set; }
        public string NombreConductor { get; set; }
        public string NombreAuxiliar { get; set; }
        public string NombreOperario { get; set; }
        public string TipoServicio { get; set; }
        public string HerramientasServicio { get; set; }
        public string Observaciones { get; set; }
        public List<PlanificacionCargueTablaUno> TablaRequerimientoServicio { get; set; }

    }
}