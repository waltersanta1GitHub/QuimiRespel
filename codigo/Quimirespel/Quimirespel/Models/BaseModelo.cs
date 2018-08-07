using MongoDB.Bson;
using MongoDB.Bson.Serialization.Attributes;

namespace Quimirespel.Models
{
    public class BaseModelo
    {
        [BsonId]
        public ObjectId Id { get; set; }
       // [BsonElement(elementName: "valor")]
        public string Valor { get; set; }
       // [BsonElement(elementName: "texto")]
        public string Texto { get; set; }
      //  [BsonElement(elementName: "eliminado")]
        public bool Eliminado { get; set; }
    }
}