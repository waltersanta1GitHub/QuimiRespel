using MongoDB.Bson;
using MongoDB.Bson.Serialization.Attributes;
using Quimirespel.Models.Tablas;
using System.Collections.Generic;

namespace Quimirespel.Models
{
    public class RequerimientoLogisticoModel
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



        // Propios Modelo
        public List<BaseModelo> TipoServicio { get; set; }
        public string ClaseLimpieza { get; set; }
        public string DivisionLimpieza { get; set; }
        public string RotuloLimpieza { get; set; }
        public List<HerramientasTablaModelo> HerramientasLimpieza { get; set; }
        public string ClaseRecoleccion { get; set; }
        public string DivisionRecoleccion { get; set; }
        public string RotuloRecoleccion { get; set; }
        public string NumPlacaRecoleccion { get; set; }
        public List<HerramientasTablaModelo> HerramientasTransporte { get; set; }
        public string TipoVehiculoTransporte { get; set; }
        public string CapacidadVehiculoTransporte { get; set; }
        public string CantidadVehiculoTransporte { get; set; }
        public string Cantidad { get; set; }
        public string ClaseSuccion { get; set; }
        public string DivisionSuccion { get; set; }
        public string RotuloSuccion { get; set; }
        public string NumPlacaSuccion { get; set; }
        public List<HerramientasTablaModelo> HerramientasSuccion { get; set; }
        public string TipoVehiculoSuccion { get; set; }
        public string CapacidadVehiculoSuccion { get; set; }
        public string CantidadVehiculoSuccion { get; set; }
    }
}