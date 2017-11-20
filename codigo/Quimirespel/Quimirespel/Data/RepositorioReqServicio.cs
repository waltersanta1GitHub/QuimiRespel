using MongoDB.Driver;
using MongoDB.Driver.Builders;
using Quimirespel.Models;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;

namespace Quimirespel.Data
{
    public class RepositorioReqServicio
    {
        private string NOMBRECOLECCION = "requerimientoservicio";
        private string CONEXION= ConfigurationManager.ConnectionStrings["MongoDB"].ConnectionString;
        private string DB = "quimirespeldb";

        public void Save(RequerimientoServicioModel model)
        {               
            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var visitaCollection = database.GetCollection<RequerimientoServicioModel>(NOMBRECOLECCION);
            visitaCollection.Insert(model);
        }

        public void Update(RequerimientoServicioModel model)
        {
            
            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var visitaCollection = database.GetCollection<RequerimientoServicioModel>(NOMBRECOLECCION);
            var query3 = Query<RequerimientoServicioModel>.EQ(fd => fd.ID, model.ID);
            var update = Update<RequerimientoServicioModel>.Set(e => e.NombreFormulario, model.NombreFormulario);
            visitaCollection.Update(query3, update);
        }

        public RequerimientoServicioModel GetById(string id)
        {
            
            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var visitaCollection = database.GetCollection<RequerimientoServicioModel>(NOMBRECOLECCION);
            return visitaCollection.FindOne(Query<RequerimientoServicioModel>.EQ(fd => fd.NumUnico, id));            
        }

        public List<RequerimientoServicioModel> GetList()
        {
             
            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var visitaCollection = database.GetCollection<RequerimientoServicioModel>(NOMBRECOLECCION);
            return visitaCollection.FindAll().ToList();
        }
    }
}