using MongoDB.Bson;
using MongoDB.Bson.Serialization.Attributes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Quimirespel.Models
{
    public class Nonu
    {
        [BsonId]
        public ObjectId ID { get; set; }
        public string Codigo { get; set; }
        public string Nombre { get; set; }
        public string Clase { get; set; }
        public string Division { get; set; }
        public string Rsecundario { get; set; }
        public string GrupoEmbalaje { get; set; }
        public string Desc { get; set; }
        public bool Eliminado { get; set; }
    }
}