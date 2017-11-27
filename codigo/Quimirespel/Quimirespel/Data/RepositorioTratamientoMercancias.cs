using MongoDB.Driver;
using MongoDB.Driver.Builders;
using Quimirespel.Models;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;

namespace Quimirespel.Data
{
    public class RepositorioTratamientoMercancias
    {
        private string NOMBRECOLECCION = "tratamientomercancias";
        private string CONEXION = ConfigurationManager.ConnectionStrings["MongoDB"].ConnectionString;
        private string DB = "quimirespeldb";

        public void Save(TratamientoMercanciasModelo model)
        {
            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var collection = database.GetCollection<TratamientoMercanciasModelo>(NOMBRECOLECCION);
            collection.Insert(model);
        }

        public void Update(TratamientoMercanciasModelo model)
        {
            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var collection = database.GetCollection<TratamientoMercanciasModelo>(NOMBRECOLECCION);
            var query3 = Query<TratamientoMercanciasModelo>.EQ(fd => fd.ID, model.ID);
            var update = Update<TratamientoMercanciasModelo>.Set(e => e.NombreFormulario, model.NombreFormulario);
            collection.Update(query3, update);
        }

        public TratamientoMercanciasModelo GetById(string id)
        {
            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var collection = database.GetCollection<TratamientoMercanciasModelo>(NOMBRECOLECCION);
            return collection.FindOne(Query<TratamientoMercanciasModelo>.EQ(fd => fd.NumUnico, id));
        }

        public List<TratamientoMercanciasModelo> GetList()
        {

            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var collection = database.GetCollection<TratamientoMercanciasModelo>(NOMBRECOLECCION);
            return collection.FindAll().ToList();
        }

    }
}