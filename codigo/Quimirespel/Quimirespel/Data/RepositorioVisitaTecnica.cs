using MongoDB.Driver;
using MongoDB.Driver.Builders;
using Quimirespel.Models;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;

namespace Quimirespel.Data
{
    public class RepositorioVisitaTecnica
    {
        private string NOMBRECOLECCION = "solicitudvisita";
        private string CONEXION = ConfigurationManager.ConnectionStrings["MongoDB"].ConnectionString;
        private string DB = "quimirespeldb";

        public void Save(VisitaTecnicaModel model)
        {   
           
            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase("quimirespeldb");
            var visitaCollection = database.GetCollection<VisitaTecnicaModel>(NOMBRECOLECCION);
            visitaCollection.Insert(model);
        }

        public void Update(VisitaTecnicaModel model)
        {
        
            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var visitaCollection = database.GetCollection<VisitaTecnicaModel>(NOMBRECOLECCION);

            var query3 = Query<VisitaTecnicaModel>.EQ(fd => fd.ID, model.ID);
            var update = Update<VisitaTecnicaModel>.Set(e => e.NombreFormulario, model.NombreFormulario);
            visitaCollection.Update(query3, update);
        }

        public VisitaTecnicaModel GetById(string id)
        {
            
            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var visitaCollection = database.GetCollection<VisitaTecnicaModel>(NOMBRECOLECCION);
            return visitaCollection.FindOne(Query<VisitaTecnicaModel>.EQ(fd => fd.IdFormulario, id));            
        }

        public List<VisitaTecnicaModel> GetList()
        {
           
            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var visitaCollection = database.GetCollection<VisitaTecnicaModel>(NOMBRECOLECCION);
            return visitaCollection.FindAll().ToList();
        }
    }
}