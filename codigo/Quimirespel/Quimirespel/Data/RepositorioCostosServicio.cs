using MongoDB.Driver;
using MongoDB.Driver.Builders;
using Quimirespel.Models;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;

namespace Quimirespel.Data
{
    public class RepositorioCostosServicio
    {
        private string NOMBRECOLECCION = "costosservicio";
        private string CONEXION = ConfigurationManager.ConnectionStrings["MongoDB"].ConnectionString;
        private string DB = "quimirespeldb";

        public void Save(CostosServicioModelo model)
        {
            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var collection = database.GetCollection<CostosServicioModelo>(NOMBRECOLECCION);
            collection.Insert(model);
        }

        public void Update(CostosServicioModelo model)
        {
            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var collection = database.GetCollection<CostosServicioModelo>(NOMBRECOLECCION);
            var query3 = Query<CostosServicioModelo>.EQ(fd => fd.ID, model.ID);
            var update = Update<CostosServicioModelo>.Set(e => e.NombreFormulario, model.NombreFormulario);
            collection.Update(query3, update);
        }

        public CostosServicioModelo GetById(string id)
        {
            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var collection = database.GetCollection<CostosServicioModelo>(NOMBRECOLECCION);
            return collection.FindOne(Query<CostosServicioModelo>.EQ(fd => fd.NumUnico, id));
        }

        public List<CostosServicioModelo> GetList()
        {

            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var collection = database.GetCollection<CostosServicioModelo>(NOMBRECOLECCION);
            return collection.FindAll().ToList();
        }

    }
}