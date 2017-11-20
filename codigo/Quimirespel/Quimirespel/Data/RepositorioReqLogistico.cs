using MongoDB.Driver;
using MongoDB.Driver.Builders;
using Quimirespel.Models;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;

namespace Quimirespel.Data
{
    public class RepositorioReqLogistico
    {
        private string NOMBRECOLECCION = "requerimientologistico";
        private string CONEXION= ConfigurationManager.ConnectionStrings["MongoDB"].ConnectionString;
        private string DB = "quimirespeldb";

        public void Save(RequerimientoLogisticoModel model)
        {               
            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var visitaCollection = database.GetCollection<RequerimientoLogisticoModel>(NOMBRECOLECCION);
            visitaCollection.Insert(model);
        }

        public void Update(RequerimientoLogisticoModel model)
        {
            
            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var visitaCollection = database.GetCollection<RequerimientoLogisticoModel>(NOMBRECOLECCION);
            var query3 = Query<RequerimientoLogisticoModel>.EQ(fd => fd.ID, model.ID);
            var update = Update<RequerimientoLogisticoModel>.Set(e => e.NombreFormulario, model.NombreFormulario);
            visitaCollection.Update(query3, update);
        }

        public RequerimientoLogisticoModel GetById(string id)
        {
            
            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var visitaCollection = database.GetCollection<RequerimientoLogisticoModel>(NOMBRECOLECCION);
            return visitaCollection.FindOne(Query<RequerimientoLogisticoModel>.EQ(fd => fd.NumUnico, id));            
        }

        public List<RequerimientoLogisticoModel> GetList()
        {
             
            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var visitaCollection = database.GetCollection<RequerimientoLogisticoModel>(NOMBRECOLECCION);
            return visitaCollection.FindAll().ToList();
        }
    }
}