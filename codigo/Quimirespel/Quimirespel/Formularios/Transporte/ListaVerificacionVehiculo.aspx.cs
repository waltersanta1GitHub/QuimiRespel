using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Quimirespel.Data;
using Quimirespel.Models;
using Quimirespel.Models.Tablas;

namespace Quimirespel.Formularios.Transporte
{
    public partial class ListaVerificacionVehiculo : System.Web.UI.Page
    {
        private RepositorioListaVerificacionVehiculo _repositorio;
        private string NombreFormulario = "LISTA VERIFICACION VEHICULO";

        public ListaVerificacionVehiculo()
        {

            _repositorio = new RepositorioListaVerificacionVehiculo();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        private void Save()
        {

            //var model = new ListaVerificacionModel
            //{
            //    AsesorAsignado = "Juan Javier Molano",
            //    Cargo = "Tecnico Sena",
            //    Celular = "3145657654",
            //    MunicipioDiligencia = new CiudadModelo { IdDepto = "22", IdMunicipio = "32", NomDepto = "Atlantico", NomMunicipio = "barranquilla" },
            //    ClosedDate = "02/03/2017",
            //    CreatedDate = "02/03/2017",
            //    DiligenciadoPor = "Jose Antonio Garcia",
            //    DirAdmin = "Cll 45  23 -24 oficina 203",
            //    DirOperativa = "Parque industrial el Torque,Km 8 Via al Mar",
            //    Editable = false,
            //    Eliminado = false,
            //    Email = "sample@sas.com",
            //    Extencion = "123",
            //    Fecha = "04/03/2017",
            //    Hora = "06:04",
            //    FechaAsignadaVisita = "06/07/2017",
            //    HoraAsisgnadaVisita = "05:04",
            //    IdFormulario = "0001" + DateTime.Now.ToString("ddMyms"),
            //    NombreFormulario = NombreFormulario,
            //    NumUnico = "REL-0001" + DateTime.Now.ToString("ddMyms"),
            //    LogDocumentos = new List<BaseModelo> {
            //        new BaseModelo { Valor="NumVisita",Texto= "0001" + DateTime.Now.ToString("ddMyms")},
            //        new BaseModelo { Valor="NumRequerimientoServicio",Texto="REQ-0001" + DateTime.Now.ToString("ddMyms") },
            //        new BaseModelo { Valor="NumRequerimientoLogistico",Texto="REL-0001" + DateTime.Now.ToString("ddMyms") }
            //    },
            //    Printed = false,
            //    RecomendacionesIngreso = "Perro Bravo, timbrar en porteria",
            //    Telefono = "2343454",
            //    Visible = true,


            //    // propios
            //    ListaPreguntas = new List<Preguntas>
            //   {
            //       new Preguntas { Item="1.1",Pregunta="¿El personal porta la cedula de ciudadanía?",Respuesta=false},
            //       new Preguntas { Item="1.2",Pregunta="¿El conductor porta la licencia vigente de conducir de acuerdo a la categoría autorizada?",Respuesta=false },
            //       new Preguntas { Item="1.3",Pregunta="¿El personal se encuentra capacitado para el transporte de residuos y mercancías peligrosos?",Respuesta=false }
            //    }
            //};

            //_repositorio.Save(model);
        }


    }
}