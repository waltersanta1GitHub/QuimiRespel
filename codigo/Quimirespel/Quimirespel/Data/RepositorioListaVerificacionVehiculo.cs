using MongoDB.Driver;
using MongoDB.Driver.Builders;
using Quimirespel.Models;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;

namespace Quimirespel.Data
{
    public class RepositorioListaVerificacionVehiculo
    {
        private string NOMBRECOLECCION = "listaverificacionvehiculo";
        private string CONEXION= ConfigurationManager.ConnectionStrings["MongoDB"].ConnectionString;
        private string DB = "quimirespeldb";

        public void Save(ListaVerificacionModel model)
        {               
            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var visitaCollection = database.GetCollection<ListaVerificacionModel>(NOMBRECOLECCION);
            visitaCollection.Insert(model);
        }

        public void Update(ListaVerificacionModel model)
        {
            
            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var visitaCollection = database.GetCollection<ListaVerificacionModel>(NOMBRECOLECCION);
            var query3 = Query<ListaVerificacionModel>.EQ(fd => fd.ID, model.ID);
            var update = Update<ListaVerificacionModel>.Set(e => e.NombreFormulario, model.NombreFormulario);
            visitaCollection.Update(query3, update);
        }

        public ListaVerificacionModel GetById(string id)
        {
            
            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var visitaCollection = database.GetCollection<ListaVerificacionModel>(NOMBRECOLECCION);
            return visitaCollection.FindOne(Query<ListaVerificacionModel>.EQ(fd => fd.NumUnico, id));            
        }

        public List<ListaVerificacionModel> GetList()
        {
             
            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var visitaCollection = database.GetCollection<ListaVerificacionModel>(NOMBRECOLECCION);
            return visitaCollection.FindAll().ToList();
        }
    }
}