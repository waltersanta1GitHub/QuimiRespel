using Quimirespel.Data;
using Quimirespel.Models;
using Quimirespel.Models.Tablas;
using System;
using System.Collections.Generic;

namespace Quimirespel.Formularios.Transporte
{
    public partial class ManifiestoCarga : System.Web.UI.Page
    {
        private RepositorioManifiestocarga _repositorio;
        private string NombreFormulario = "MANIFIESTO DE CARGA";

        public ManifiestoCarga()
        {
            _repositorio = new RepositorioManifiestocarga();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void Save()
        {

            //var model = new ManifiestoCargaModelo
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
            //    NumUnico = "RECM-0001" + DateTime.Now.ToString("ddMyms"),
            //    LogDocumentos = new List<BaseModelo> {
            //        new BaseModelo { Valor="NumVisita",Texto= "0001" + DateTime.Now.ToString("ddMyms")},
            //        new BaseModelo { Valor="NumRequerimientoServicio",Texto="REQ-0001" + DateTime.Now.ToString("ddMyms") },
            //        new BaseModelo { Valor="NumRequerimientoLogistico",Texto="REL-0001" + DateTime.Now.ToString("ddMyms") },
            //        new BaseModelo { Valor="NumRecoleccionMuestra",Texto="RECM-0001" + DateTime.Now.ToString("ddMyms") }
            //    },
            //    Printed = false,
            //    RecomendacionesIngreso = "Perro Bravo, timbrar en porteria",
            //    Telefono = "2343454",
            //    Visible = true,
            //    // Propios
                
            //    ResiduosDeclarados= new List<ManifiestoCargaTablaUno>
            //    {
            //        new ManifiestoCargaTablaUno {
            //            Cantidad="2",
            //            CantidadEmbalaje="3",
            //            Embalaje= new BaseModelo {  Valor="232",Texto="Caja" },
            //            NombreResiduo="arsenico Puro",
            //            Unidad= new BaseModelo { Valor="12",Texto="KG" }
            //        }
            //    },
            //    Observaciones="N/A",
            //    ResiduosContaminados= new List<ManifiestoCargaTablaDos>
            //    {
            //        new ManifiestoCargaTablaDos {  Caracteristica="XXX",
            //            DescripcionMercancia ="Mercancia",
            //            Nonu = new Nonu {
            //                Clase="sss",
            //                Codigo="2323",
            //                Desc="sasdadsd",
            //                Division="2.1",
            //                Eliminado=false,
            //                GrupoEmbalaje="9",
            //                Nombre="XXCDDDS",
            //                Rsecundario=""
            //            }
            //        }
            //    },
            //    TipoRiesgoInflamabilidad="",
            //    TipoRiesgoReactividad="Si",
            //    TipoRiesgoSalud="Si",
            //    TipoRiesgoToxicidad="SI"
            //};

            //_repositorio.Save(model);
        }
    }
}