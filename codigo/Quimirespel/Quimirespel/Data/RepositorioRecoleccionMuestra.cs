using MongoDB.Driver;
using MongoDB.Driver.Builders;
using Quimirespel.Models;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;

namespace Quimirespel.Data
{
    public class RepositorioRecoleccionMuestra
    {
        private string NOMBRECOLECCION = "recoleccionmuestra";
        private string CONEXION = ConfigurationManager.ConnectionStrings["MongoDB"].ConnectionString;
        private string DB = "quimirespeldb";

        public void Save(RecoleccionMuestraModelo model)
        {
            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var collection = database.GetCollection<RecoleccionMuestraModelo>(NOMBRECOLECCION);
            collection.Insert(model);
        }

        public void Update(RecoleccionMuestraModelo model)
        {
            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var collection = database.GetCollection<RecoleccionMuestraModelo>(NOMBRECOLECCION);
            var query3 = Query<RecoleccionMuestraModelo>.EQ(fd => fd.ID, model.ID);
            var update = Update<RecoleccionMuestraModelo>.Set(e => e.NombreFormulario, model.NombreFormulario);
            collection.Update(query3, update);
        }

        public RecoleccionMuestraModelo GetById(string id)
        {
            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var collection = database.GetCollection<RecoleccionMuestraModelo>(NOMBRECOLECCION);
            return collection.FindOne(Query<RecoleccionMuestraModelo>.EQ(fd => fd.NumUnico, id));
        }

        public List<RecoleccionMuestraModelo> GetList()
        {

            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var collection = database.GetCollection<RecoleccionMuestraModelo>(NOMBRECOLECCION);
            return collection.FindAll().ToList();
        }

    }
}