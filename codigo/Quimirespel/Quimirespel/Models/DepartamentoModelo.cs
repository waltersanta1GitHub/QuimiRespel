using MongoDB.Bson;
using MongoDB.Bson.Serialization.Attributes;
using System.Collections.Generic;

namespace Quimirespel.Models
{
    public class DepartamentoModelo
    {
        [BsonId]
        public ObjectId Id { get; set; }
        public int Valor { get; set; }
        public string NomDepto { get; set; }
        public bool Eliminado { get; set; }
        public List<CiudadModelo> Ciudades { get; set; }
    }
}