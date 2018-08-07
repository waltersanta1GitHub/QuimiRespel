using System.Collections.Generic;

namespace Quimirespel.Models.Usuarios
{
    public class UsuarioModelo
    {
        public string NumDocumento { get; set; }
        public string Password { get; set; }
        public string Alias { get; set; }
        public string Nombre { get; set; }
        public string NombreCompleto {
            get { return this.Nombre +" "+ this.Apellido; }
        }
        public string Apellido { get; set; }
        public List<RolUsuario> Roles { get; set; }
        public TipoUsuario Tipo { get; set; }
        public List<int> ListaFormaularios { get; set; }


    }
}