using MongoDB.Driver;
using MongoDB.Driver.Builders;
using Quimirespel.Models;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;

namespace Quimirespel.Data
{
    public class RepositorioEmbalaje
    {
        private string NOMBRECOLECCION = "embalaje";
        private string CONEXION = ConfigurationManager.ConnectionStrings["MongoDB"].ConnectionString;
        private string DB = "quimirespeldb";

        public void Save(BaseModelo model)
        {
            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var collection = database.GetCollection<BaseModelo>(NOMBRECOLECCION);
            collection.Insert(model);
        }

        public void Update(BaseModelo model)
        {
            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var collection = database.GetCollection<BaseModelo>(NOMBRECOLECCION);
            var query3 = Query<BaseModelo>.EQ(fd => fd.Valor, model.Valor);
            var update = Update<BaseModelo>.Set(e => e.Texto, model.Texto);
            collection.Update(query3, update);
        }

        public BaseModelo GetByValor(string valor)
        {
            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var collection = database.GetCollection<BaseModelo>(NOMBRECOLECCION);
            return collection.FindOne(Query<BaseModelo>.EQ(fd => fd.Valor, valor));
        }

        public List<BaseModelo> GetList()
        {
            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var collection = database.GetCollection<BaseModelo>(NOMBRECOLECCION);
            return collection.FindAll().ToList();
        }

    }
}