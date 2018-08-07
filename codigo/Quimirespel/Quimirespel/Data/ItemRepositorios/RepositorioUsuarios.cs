using MongoDB.Driver;
using MongoDB.Driver.Builders;
using Quimirespel.Models;
using Quimirespel.Models.Usuarios;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;

namespace Quimirespel.Data
{
    public class RepositorioUsuarios
    {
        private string NOMBRECOLECCION = "users";
        private string CONEXION = ConfigurationManager.ConnectionStrings["MongoDB"].ConnectionString;
        private string DB = "quimirespeldb";

        public void Save(UsuarioModelo model)
        {
            //var client = new MongoClient(CONEXION);
            //var server = client.GetServer();
            //var database = server.GetDatabase(DB);
            //var collection = database.GetCollection<UsuarioModelo>(NOMBRECOLECCION);
            //collection.Insert(model);
        }

        public void Update(UsuarioModelo model)
        {
            //var client = new MongoClient(CONEXION);
            //var server = client.GetServer();
            //var database = server.GetDatabase(DB);
            //var collection = database.GetCollection<UsuarioModelo>(NOMBRECOLECCION);
            //var query3 = Query<UsuarioModelo>.EQ(fd => fd.Valor, model.Valor);
            //var update = Update<UsuarioModelo>.Set(e => e.Texto, model.Texto);
            //collection.Update(query3, update);
        }

        public UsuarioModelo GetByValor(string valor)
        {
            //var client = new MongoClient(CONEXION);
            //var server = client.GetServer();
            //var database = server.GetDatabase(DB);
            //var collection = database.GetCollection<UsuarioModelo>(NOMBRECOLECCION);
            //return collection.FindOne(Query<UsuarioModelo>.EQ(fd => fd.Valor, valor));

            return new UsuarioModelo
            {
                Alias = "sa",
                Apellido = "Super",
                Nombre = "AdministradorSuper",
                NumDocumento = "12344",
                Password = "1234",
                Tipo = TipoUsuario.Administrador
            };
        }

        public List<UsuarioModelo> GetList()
        {

            //    var client = new MongoClient(CONEXION);
            //    var server = client.GetServer();
            //    var database = server.GetDatabase(DB);
            //    var collection = database.GetCollection<UsuarioModelo>(NOMBRECOLECCION);
            //    return collection.FindAll().ToList();

            return new List<UsuarioModelo>() {

                new UsuarioModelo { Alias="sa",Apellido="Super", Nombre="AdministradorSuper",NumDocumento="12344",Password="1234",Tipo=TipoUsuario.Administrador , Roles= new List<RolUsuario> { RolUsuario.Administrador,RolUsuario.Usuario } },
                new UsuarioModelo { Alias="usuario",Apellido="Usuario", Nombre="Usuario Basico",NumDocumento="12344",Password="1234",Tipo=TipoUsuario.Operador,Roles= new List<RolUsuario> { RolUsuario.Usuario }  }
            };

        }


        public List<UsuarioModelo> GetAsesorList()
        {

            //    var client = new MongoClient(CONEXION);
            //    var server = client.GetServer();
            //    var database = server.GetDatabase(DB);
            //    var collection = database.GetCollection<UsuarioModelo>(NOMBRECOLECCION);
            //    return collection.FindAll().ToList();

            return new List<UsuarioModelo>() {

                new UsuarioModelo { Alias="Asesor1",Apellido="Gomez", Nombre="Jose Pepo",NumDocumento="777777",Password="1234",Tipo=TipoUsuario.Asesor,Roles= new List<RolUsuario> { RolUsuario.Usuario }  },
                new UsuarioModelo { Alias="Asesor1",Apellido="Prada", Nombre="Maria Corina",NumDocumento="111111",Password="1234",Tipo=TipoUsuario.Asesor,Roles= new List<RolUsuario> { RolUsuario.Usuario }  },
                new UsuarioModelo { Alias="Asesor1",Apellido="Santamaria", Nombre="Antioneta",NumDocumento="333333",Password="1234",Tipo=TipoUsuario.Asesor,Roles= new List<RolUsuario> { RolUsuario.Usuario }  },
                new UsuarioModelo { Alias="Asesor1",Apellido="Garcia", Nombre="Jose Daniel",NumDocumento="55555",Password="1234",Tipo=TipoUsuario.Asesor,Roles= new List<RolUsuario> { RolUsuario.Usuario }  }

            };

        }

    }
}