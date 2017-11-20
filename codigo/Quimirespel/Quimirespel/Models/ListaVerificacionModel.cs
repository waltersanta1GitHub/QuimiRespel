using MongoDB.Bson;
using MongoDB.Bson.Serialization.Attributes;
using System.Collections.Generic;

namespace Quimirespel.Models
{
    public class ListaVerificacionModel
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
        public CiudadModelo MunicipioDiligencia { get; set; }


        // propio
        public List<Preguntas> ListaPreguntas { get; set; }

    }

    public class Preguntas
    {
        public string Item { get; set; }
        public string Pregunta { get; set; }
        public bool Respuesta { get; set; }

    }
}