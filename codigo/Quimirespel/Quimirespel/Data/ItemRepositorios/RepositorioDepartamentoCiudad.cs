using MongoDB.Driver;
using MongoDB.Driver.Builders;
using Quimirespel.Models;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;

namespace Quimirespel.Data
{
    public class RepositorioDepartamentoCiudad
    {
        private string NOMBRECOLECCION = "cities";
        private string CONEXION = ConfigurationManager.ConnectionStrings["MongoDB"].ConnectionString;
        private string DB = "quimirespeldb";

        public void Save(DepartamentoModelo model)
        {
            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var collection = database.GetCollection<DepartamentoModelo>(NOMBRECOLECCION);
            collection.Insert(model);
        }

        public void Update(DepartamentoModelo model)
        {
            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var collection = database.GetCollection<DepartamentoModelo>(NOMBRECOLECCION);
            var query3 = Query<DepartamentoModelo>.EQ(fd => fd.Valor, model.Valor);
            var update = Update<DepartamentoModelo>.Set(e => e.NomDepto, model.NomDepto);
            collection.Update(query3, update);
        }

        public void UpdateCiudad(DepartamentoModelo model,CiudadModelo ciudadActual)
        {
            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var collection = database.GetCollection<DepartamentoModelo>(NOMBRECOLECCION);
            var query3 = Query<DepartamentoModelo>.EQ(fd => fd.Valor, model.Valor);            
            var update = Update<DepartamentoModelo>.Set(e => e.NomDepto, model.NomDepto);
            collection.Update(query3, update);
        }


        public DepartamentoModelo GetByValor(int valor)
        {
            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var collection = database.GetCollection<DepartamentoModelo>(NOMBRECOLECCION);
            return collection.FindOne(Query<DepartamentoModelo>.EQ(fd => fd.Valor, valor));
        }

        public List<DepartamentoModelo> GetListDepartamentos()
        {

            var client = new MongoClient(CONEXION);
            var server = client.GetServer();
            var database = server.GetDatabase(DB);
            var collection = database.GetCollection<DepartamentoModelo>(NOMBRECOLECCION);
            return collection.FindAll().ToList();
        }

    }
}