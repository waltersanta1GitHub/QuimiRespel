using Quimirespel.Data;
using Quimirespel.Models;
using Quimirespel.Models.Tablas;
using System;
using System.Collections.Generic;

namespace Quimirespel.Formularios
{
    public partial class RequerimientoLogistico : System.Web.UI.Page
    {
        private RepositorioReqLogistico _repositorio;
        private string NombreFormulario = "REQUERIMIENTO-LOGISTICO";

        public RequerimientoLogistico() {

            _repositorio = new RepositorioReqLogistico();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            Save();
        }

        private void Save() {

           //var model = new RequerimientoLogisticoModel
           //{
           //     AsesorAsignado = "Juan Javier Molano",
           //     Cargo = "Tecnico Sena",
           //     Celular = "3145657654",
           //     CIIU = new BaseModelo { Valor = "12345", Texto = "Sample CIIU" },
           //     Ciudad = new CiudadModelo { IdDepto = "22", IdMunicipio = "32", NomDepto = "Quindio", NomMunicipio = "Quimbaya" },
           //     MunicipioDiligencia = new CiudadModelo { IdDepto = "22", IdMunicipio = "32", NomDepto = "Atlantico", NomMunicipio = "barranquilla" },
           //     ClosedDate = "02/03/2017",
           //     CreatedDate = "02/03/2017",
           //     DiligenciadoPor = "Jose Antonio Garcia",
           //     DirAdmin = "Cll 45  23 -24 oficina 203",
           //     DirOperativa = "Parque industrial el Torque,Km 8 Via al Mar",
           //     Editable = false,
           //     Eliminado = false,
           //     Email = "sample@sas.com",
           //     Extencion = "123",
           //     Fecha = "04/03/2017",
           //     Hora = "06:04",
           //     FechaAsignadaVisita = "06/07/2017",
           //     HoraAsisgnadaVisita = "05:04",
           //     IdFormulario = "0001" + DateTime.Now.ToString("ddMyms"),
           //     NombreFormulario = NombreFormulario,
           //     NumUnico= "REL-0001" + DateTime.Now.ToString("ddMyms"),
           //     LogDocumentos = new List<BaseModelo> {
           //         new BaseModelo { Valor="NumVisita",Texto= "0001" + DateTime.Now.ToString("ddMyms")},
           //         new BaseModelo { Valor="NumRequerimientoServicio",Texto="REQ-0001" + DateTime.Now.ToString("ddMyms") },
           //         new BaseModelo { Valor="NumRequerimientoLogistico",Texto="REL-0001" + DateTime.Now.ToString("ddMyms") }
           //     },
           //     Printed = false,
           //     RecomendacionesIngreso = "Perro Bravo, timbrar en porteria",
           //     Telefono = "2343454",
           //     Visible = true,
                

           //     // propios
           //     Cantidad ="2",
           //     CantidadVehiculoSuccion="3",
           //     CantidadVehiculoTransporte="1",
           //     CapacidadVehiculoSuccion="5 Vol",
           //     CapacidadVehiculoTransporte="6 Vol",
           //     ClaseLimpieza="HD456",
           //     ClaseRecoleccion="RTY564",
           //     ClaseSuccion="FGT908",
           //     DivisionLimpieza="wert",
           //     DivisionRecoleccion="were",
           //     DivisionSuccion="3ewe",
           //     HerramientasLimpieza= new List<Models.Tablas.HerramientasTablaModelo>
           //     {
           //         new HerramientasTablaModelo {
           //             Cantidad="3",
           //             Descripcion="sasdsad",
           //             Recurso =new BaseModelo { Valor="1",Texto="Pala anti fuego"}
           //         },
           //         new HerramientasTablaModelo
           //         {
           //             Cantidad="1",
           //             Descripcion="shhff",
           //             Recurso= new BaseModelo { Valor="3",Texto="Extintor"}
           //         }
           //     },
           //     HerramientasSuccion=  new List<HerramientasTablaModelo> {
           //          new HerramientasTablaModelo
           //         {
           //             Cantidad="1",
           //             Descripcion="shhff",
           //             Recurso= new BaseModelo { Valor="3",Texto="Extintor"}
           //         }
           //     },
           //     HerramientasTransporte= new List<HerramientasTablaModelo> {
           //          new HerramientasTablaModelo
           //         {
           //             Cantidad="1",
           //             Descripcion="shhff",
           //             Recurso= new BaseModelo { Valor="3",Texto="Extintor"}
           //         }
           //     },
           //     NumPlacaSuccion="SU-98778",
           //     NumPlacaRecoleccion="ER-766554",
           //     RotuloLimpieza="C-0998",
           //     RotuloRecoleccion="R-0802",
           //     RotuloSuccion="we-0977",
           //     TipoServicio=new List<BaseModelo>
           //     {
           //         new BaseModelo {Valor="12", Texto="Servicio A" }
           //     },
           //     TipoVehiculoTransporte="DSKKKDS",
           //     TipoVehiculoSuccion="DM8122"
           // };

           // _repositorio.Save(model);
        }
    }
}