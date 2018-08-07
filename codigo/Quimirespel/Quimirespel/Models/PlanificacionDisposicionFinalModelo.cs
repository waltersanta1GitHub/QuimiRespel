using System.Collections.Generic;
using MongoDB.Bson;
using MongoDB.Bson.Serialization.Attributes;

namespace Quimirespel.Models
{
    public class PlanificacionDisposicionFinalModelo
    {

        [BsonId]
        public ObjectId ID { get; set; }
    }
}