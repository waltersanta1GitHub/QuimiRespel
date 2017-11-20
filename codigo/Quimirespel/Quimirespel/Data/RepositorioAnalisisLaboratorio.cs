using MongoDB.Driver;
using MongoDB.Driver.Builders;
using Quimirespel.Models;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;

namespace Quimirespel.Data
{
    public class RepositorioAnalisisLaboratorio
    {
        private string NOMBRECOLECCION = "analisislaboratorio";
        private string CONEXION = ConfigurationManager.ConnectionStrings["MongoDB"].ConnectionString;
        private string DB = "quimirespeldb";

        public void Save(AnalisisLaboratorioModelo model)
        {
            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var collection = database.GetCollection<AnalisisLaboratorioModelo>(NOMBRECOLECCION);
            collection.Insert(model);
        }

        public void Update(AnalisisLaboratorioModelo model)
        {
            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var collection = database.GetCollection<AnalisisLaboratorioModelo>(NOMBRECOLECCION);
            var query3 = Query<AnalisisLaboratorioModelo>.EQ(fd => fd.ID, model.ID);
            var update = Update<AnalisisLaboratorioModelo>.Set(e => e.NombreFormulario, model.NombreFormulario);
            collection.Update(query3, update);
        }

        public AnalisisLaboratorioModelo GetById(string id)
        {
            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var collection = database.GetCollection<AnalisisLaboratorioModelo>(NOMBRECOLECCION);
            return collection.FindOne(Query<AnalisisLaboratorioModelo>.EQ(fd => fd.NumUnico, id));
        }

        public List<AnalisisLaboratorioModelo> GetList()
        {

            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var collection = database.GetCollection<AnalisisLaboratorioModelo>(NOMBRECOLECCION);
            return collection.FindAll().ToList();
        }

    }
}