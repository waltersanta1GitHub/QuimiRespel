using MongoDB.Driver;
using MongoDB.Driver.Builders;
using Quimirespel.Models;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;

namespace Quimirespel.Data
{
    public class RepositorioPlanificacionCargue
    {
        private string NOMBRECOLECCION = "planificacioncargue";
        private string CONEXION = ConfigurationManager.ConnectionStrings["MongoDB"].ConnectionString;
        private string DB = "quimirespeldb";

        public void Save(PlanificacionCargueModelo model)
        {
            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var visitaCollection = database.GetCollection<PlanificacionCargueModelo>(NOMBRECOLECCION);
            visitaCollection.Insert(model);
        }

        public void Update(PlanificacionCargueModelo model)
        {

            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var visitaCollection = database.GetCollection<PlanificacionCargueModelo>(NOMBRECOLECCION);
            var query3 = Query<PlanificacionCargueModelo>.EQ(fd => fd.ID, model.ID);
            var update = Update<PlanificacionCargueModelo>.Set(e => e.NombreFormulario, model.NombreFormulario);
            visitaCollection.Update(query3, update);
        }

        public PlanificacionCargueModelo GetById(string id)
        {

            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var visitaCollection = database.GetCollection<PlanificacionCargueModelo>(NOMBRECOLECCION);
            return visitaCollection.FindOne(Query<PlanificacionCargueModelo>.EQ(fd => fd.NumUnico, id));
        }

        public List<PlanificacionCargueModelo> GetList()
        {

            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var visitaCollection = database.GetCollection<PlanificacionCargueModelo>(NOMBRECOLECCION);
            return visitaCollection.FindAll().ToList();
        }
    }
}
