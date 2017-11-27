using MongoDB.Driver;
using MongoDB.Driver.Builders;
using Quimirespel.Models;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;

namespace Quimirespel.Data
{
    public class RepositorioPlanificacionDisposicion
    {
        private string NOMBRECOLECCION = "planificaciondisposicion";
        private string CONEXION = ConfigurationManager.ConnectionStrings["MongoDB"].ConnectionString;
        private string DB = "quimirespeldb";

        public void Save(PlanificacionDisposicionModelo model)
        {
            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var collection = database.GetCollection<PlanificacionDisposicionModelo>(NOMBRECOLECCION);
            collection.Insert(model);
        }

        public void Update(PlanificacionDisposicionModelo model)
        {
            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var collection = database.GetCollection<PlanificacionDisposicionModelo>(NOMBRECOLECCION);
            var query3 = Query<PlanificacionDisposicionModelo>.EQ(fd => fd.ID, model.ID);
            var update = Update<PlanificacionDisposicionModelo>.Set(e => e.NombreFormulario, model.NombreFormulario);
            collection.Update(query3, update);
        }

        public PlanificacionDisposicionModelo GetById(string id)
        {
            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var collection = database.GetCollection<PlanificacionDisposicionModelo>(NOMBRECOLECCION);
            return collection.FindOne(Query<PlanificacionDisposicionModelo>.EQ(fd => fd.NumUnico, id));
        }

        public List<PlanificacionDisposicionModelo> GetList()
        {

            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var collection = database.GetCollection<PlanificacionDisposicionModelo>(NOMBRECOLECCION);
            return collection.FindAll().ToList();
        }

    }
}