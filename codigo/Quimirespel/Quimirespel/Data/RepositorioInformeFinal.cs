using MongoDB.Driver;
using MongoDB.Driver.Builders;
using Quimirespel.Models;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;

namespace Quimirespel.Data
{
    public class RepositorioInformeFinal
    {
        private string NOMBRECOLECCION = "informefinal";
        private string CONEXION = ConfigurationManager.ConnectionStrings["MongoDB"].ConnectionString;
        private string DB = "quimirespeldb";

        public void Save(InformeFinalModelo model)
        {
            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var collection = database.GetCollection<InformeFinalModelo>(NOMBRECOLECCION);
            collection.Insert(model);
        }

        public void Update(InformeFinalModelo model)
        {
            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var collection = database.GetCollection<InformeFinalModelo>(NOMBRECOLECCION);
            var query3 = Query<InformeFinalModelo>.EQ(fd => fd.ID, model.ID);
            var update = Update<InformeFinalModelo>.Set(e => e.NombreFormulario, model.NombreFormulario);
            collection.Update(query3, update);
        }

        public InformeFinalModelo GetById(string id)
        {
            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var collection = database.GetCollection<InformeFinalModelo>(NOMBRECOLECCION);
            return collection.FindOne(Query<InformeFinalModelo>.EQ(fd => fd.NumUnico, id));
        }

        public List<InformeFinalModelo> GetList()
        {

            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var collection = database.GetCollection<InformeFinalModelo>(NOMBRECOLECCION);
            return collection.FindAll().ToList();
        }

    }
}