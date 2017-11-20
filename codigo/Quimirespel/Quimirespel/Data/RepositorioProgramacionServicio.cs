using MongoDB.Driver;
using MongoDB.Driver.Builders;
using Quimirespel.Models;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;

namespace Quimirespel.Data
{
    public class RepositorioProgramacionServicio
    {
        private string NOMBRECOLECCION = "programacionservicio";
        private string CONEXION= ConfigurationManager.ConnectionStrings["MongoDB"].ConnectionString;
        private string DB = "quimirespeldb";

        public void Save(ProgramacionServicioModelo model)
        {               
            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var visitaCollection = database.GetCollection<ProgramacionServicioModelo>(NOMBRECOLECCION);
            visitaCollection.Insert(model);
        }

        public void Update(ProgramacionServicioModelo model)
        {
            
            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var visitaCollection = database.GetCollection<ProgramacionServicioModelo>(NOMBRECOLECCION);
            var query3 = Query<ProgramacionServicioModelo>.EQ(fd => fd.ID, model.ID);
            var update = Update<ProgramacionServicioModelo>.Set(e => e.NombreFormulario, model.NombreFormulario);
            visitaCollection.Update(query3, update);
        }

        public ProgramacionServicioModelo GetById(string id)
        {
            
            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var visitaCollection = database.GetCollection<ProgramacionServicioModelo>(NOMBRECOLECCION);
            return visitaCollection.FindOne(Query<ProgramacionServicioModelo>.EQ(fd => fd.NumUnico, id));            
        }

        public List<ProgramacionServicioModelo> GetList()
        {
             
            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var visitaCollection = database.GetCollection<ProgramacionServicioModelo>(NOMBRECOLECCION);
            return visitaCollection.FindAll().ToList();
        }
    }
}