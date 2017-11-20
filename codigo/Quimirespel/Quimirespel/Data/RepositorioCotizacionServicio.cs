using MongoDB.Driver;
using MongoDB.Driver.Builders;
using Quimirespel.Models;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;

namespace Quimirespel.Data
{
    public class RepositorioCotizacionServicio
    {
        private string NOMBRECOLECCION = "cotizacionservicio";
        private string CONEXION = ConfigurationManager.ConnectionStrings["MongoDB"].ConnectionString;
        private string DB = "quimirespeldb";

        public void Save(CotizacionServicioModelo model)
        {
            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var collection = database.GetCollection<CotizacionServicioModelo>(NOMBRECOLECCION);
            collection.Insert(model);
        }

        public void Update(CotizacionServicioModelo model)
        {
            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var collection = database.GetCollection<CotizacionServicioModelo>(NOMBRECOLECCION);
            var query3 = Query<CotizacionServicioModelo>.EQ(fd => fd.ID, model.ID);
            var update = Update<CotizacionServicioModelo>.Set(e => e.NombreFormulario, model.NombreFormulario);
            collection.Update(query3, update);
        }

        public CotizacionServicioModelo GetById(string id)
        {
            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var collection = database.GetCollection<CotizacionServicioModelo>(NOMBRECOLECCION);
            return collection.FindOne(Query<CotizacionServicioModelo>.EQ(fd => fd.NumUnico, id));
        }

        public List<CotizacionServicioModelo> GetList()
        {

            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var collection = database.GetCollection<CotizacionServicioModelo>(NOMBRECOLECCION);
            return collection.FindAll().ToList();
        }

    }
}