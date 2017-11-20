using MongoDB.Driver;
using MongoDB.Driver.Builders;
using Quimirespel.Models;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;

namespace Quimirespel.Data
{
    public class RepositorioManifiestocarga
    {
        private string NOMBRECOLECCION = "manifiestocarga";
        private string CONEXION= ConfigurationManager.ConnectionStrings["MongoDB"].ConnectionString;
        private string DB = "quimirespeldb";

        public void Save(ManifiestoCargaModelo model)
        {               
            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var visitaCollection = database.GetCollection<ManifiestoCargaModelo>(NOMBRECOLECCION);
            visitaCollection.Insert(model);
        }

        public void Update(ManifiestoCargaModelo model)
        {
            
            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var visitaCollection = database.GetCollection<ManifiestoCargaModelo>(NOMBRECOLECCION);
            var query3 = Query<ManifiestoCargaModelo>.EQ(fd => fd.ID, model.ID);
            var update = Update<ManifiestoCargaModelo>.Set(e => e.NombreFormulario, model.NombreFormulario);
            visitaCollection.Update(query3, update);
        }

        public ManifiestoCargaModelo GetById(string id)
        {
            
            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var visitaCollection = database.GetCollection<ManifiestoCargaModelo>(NOMBRECOLECCION);
            return visitaCollection.FindOne(Query<ManifiestoCargaModelo>.EQ(fd => fd.NumUnico, id));            
        }

        public List<ManifiestoCargaModelo> GetList()
        {
             
            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var visitaCollection = database.GetCollection<ManifiestoCargaModelo>(NOMBRECOLECCION);
            return visitaCollection.FindAll().ToList();
        }
    }
}