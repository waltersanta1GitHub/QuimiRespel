using Quimirespel.Data;
using Quimirespel.Models;
using Quimirespel.Models.Tablas;
using System;
using System.Collections.Generic;

namespace Quimirespel.Formularios.Transporte
{
    public partial class PlanificacionCargue : System.Web.UI.Page
    {
        private RepositorioPlanificacionCargue _repositorio;
        private string NombreFormulario = "PLANIFICACION PARA EL CARGUE";

        public PlanificacionCargue() {

            _repositorio = new RepositorioPlanificacionCargue();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void Save()
        {

            //var model = new PlanificacionCargueModelo
            //{

            //    AsesorAsignado = "Juan Javier Molano",
            //    Cargo = "Tecnico Sena",
            //    Celular = "3145657654",
            //    CIIU = new BaseModelo { Valor = "12345", Texto = "Sample CIIU" },
            //    Ciudad = new CiudadModelo { IdDepto = "22", IdMunicipio = "32", NomDepto = "Quindio", NomMunicipio = "Quimbaya" },
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
            //    Capacidadvehiculo="",
            //    FechaServicio="12/04/2017",
            //    HerramientasServicio="N/A",
            //    HoraLlegadaDestino="02:30",
            //    HoraMaximaLlegadaDestino="07:23",
            //    HoraSalida="04:03",
            //    NombreAuxiliar="Miguel Insulsa",
            //    NombreConductor="Tarcicio Medina",
            //    NombreOperario="Mariano Gomez",
            //    Observaciones=" Sample Observacion",
            //    PlacaVehiculo="CFG567",
            //    Ruta1="Paipa-Medina-La chucua",
            //    Ruta2="Medellin-El ocaso- La pintada",
            //    Ruta3="Rio De Oro-Matusalen-Algesiras",
            //    TipoServicio="Basico",
            //    TipoVehiculo="Camion",
            //    TablaRequerimientoServicio= new List<Models.Tablas.PlanificacionCargueTablaUno> {
            //        new PlanificacionCargueTablaUno { Cantidad="3",Descripcion="Etiqueta Tanques",Recurso="Etiqueta" }
            //    }               
            //};

            //_repositorio.Save(model);
        }

    }
}