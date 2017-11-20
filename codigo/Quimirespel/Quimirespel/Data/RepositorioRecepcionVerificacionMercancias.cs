using MongoDB.Driver;
using MongoDB.Driver.Builders;
using Quimirespel.Models;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;

namespace Quimirespel.Data
{
    public class RepositorioRecepcionVerificacionMercancias
    {
        private string NOMBRECOLECCION = "recepcionverificacionmercancias";
        private string CONEXION= ConfigurationManager.ConnectionStrings["MongoDB"].ConnectionString;
        private string DB = "quimirespeldb";

        public void Save(RecepcionVerificacionMercanciasModelo model)
        {               
            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var visitaCollection = database.GetCollection<RecepcionVerificacionMercanciasModelo>(NOMBRECOLECCION);
            visitaCollection.Insert(model);
        }

        public void Update(RecepcionVerificacionMercanciasModelo model)
        {
            
            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var visitaCollection = database.GetCollection<RecepcionVerificacionMercanciasModelo>(NOMBRECOLECCION);
            var query3 = Query<RecepcionVerificacionMercanciasModelo>.EQ(fd => fd.ID, model.ID);
            var update = Update<RecepcionVerificacionMercanciasModelo>.Set(e => e.NombreFormulario, model.NombreFormulario);
            visitaCollection.Update(query3, update);
        }

        public RecepcionVerificacionMercanciasModelo GetById(string id)
        {
            
            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var visitaCollection = database.GetCollection<RecepcionVerificacionMercanciasModelo>(NOMBRECOLECCION);
            return visitaCollection.FindOne(Query<RecepcionVerificacionMercanciasModelo>.EQ(fd => fd.NumUnico, id));            
        }

        public List<RecepcionVerificacionMercanciasModelo> GetList()
        {
             
            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var visitaCollection = database.GetCollection<RecepcionVerificacionMercanciasModelo>(NOMBRECOLECCION);
            return visitaCollection.FindAll().ToList();
        }
    }
}