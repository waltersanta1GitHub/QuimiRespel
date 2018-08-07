using MongoDB.Bson;
using MongoDB.Bson.Serialization.Attributes;
using Quimirespel.Models.Tablas;
using System.Collections.Generic;


namespace Quimirespel.Models
{
    [BsonIgnoreExtraElements]
    public class VisitaTecnicaModel
    {
        [BsonId]
        public ObjectId ID { get; set; }

        public BaseModelo CIIU { get; set; }
        public string Nit { get; set; }
        public string RazonSocial { get; set; }
        public int DepartamentoH { get; set; }
        public CiudadModelo CiudadH { get; set; }
        public string TelefonoH { get; set; }
        public string DireccionH { get; set; }
        public string NombreContactoH { get; set; }
        public string CelularContactoH { get; set; }
        public string EmailContactoH { get; set; }
        public List<VisitaTablaModelo> TablaMercanciasPeligrosas { get; set; }
        public string AsesorAsignado { get; set; }
        public string FechaAsignadaVisita { get; set; }
        public string HoraAsisgnadaVisita { get; set; }
        public string EspecificacionesDeSeguridad { get; set; }
        public string Observaciones { get; set; }


        // Informacion Representante
        public string DiligenciadoPor { get; set; }
        public string CargoDiligenciado { get; set; }
        public string FechaDiligenciado { get; set; }
        public string HoraDiligenciado { get; set; }
        public string TelefonoDiligenciado { get; set; }
        public string ExtencionDiligenciado { get; set; }
        public string CelularDiligenciado { get; set; }
        public int DepartamentoF { get; set; }
        public CiudadModelo CiudadF { get; set; }
        public string DirAdmin { get; set; }
        public string DirOperativa { get; set; }
        public string NumeroSolicitud { get; set; }

        public ControlModelo Control { get; set; }
                
    }
}