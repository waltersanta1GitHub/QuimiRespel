using Quimirespel.Data;
using Quimirespel.Models;
using Quimirespel.Plantillas;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Quimirespel.Formularios
{
    public partial class InformeFinal : System.Web.UI.Page
    {

        RepositorioInformeFinal _repositorio;
        private string NombreFormulario = "INFORME FINAL";


        protected void Page_Load(object sender, EventArgs e)
        {
            _repositorio = new RepositorioInformeFinal();
        }

        private void Save()
        {

            var model = new InformeFinalModelo
            {

                AsesorAsignado = "Juan Javier Molano",
                Cargo = "Tecnico Sena",
                Celular = "3145657654",
                CIIU = new BaseModelo { Valor = "12345", Texto = "Sample CIIU" },
                Ciudad = new CiudadModelo { IdDepto = "22", IdMunicipio = "32", NomDepto = "Quindio", NomMunicipio = "Quimbaya" },
                MunicipioDiligencia = new CiudadModelo { IdDepto = "22", IdMunicipio = "32", NomDepto = "Atlantico", NomMunicipio = "barranquilla" },
                ClosedDate = "02/03/2017",
                CreatedDate = "02/03/2017",
                DiligenciadoPor = "Jose Antonio Garcia",
                DirAdmin = "Cll 45  23 -24 oficina 203",
                DirOperativa = "Parque industrial el Torque,Km 8 Via al Mar",
                Editable = false,
                Eliminado = false,
                Email = "sample@sas.com",
                Extencion = "123",
                Fecha = "04/03/2017",
                Hora = "06:04",
                FechaAsignadaVisita = "06/07/2017",
                HoraAsisgnadaVisita = "05:04",
                IdFormulario = "0001" + DateTime.Now.ToString("ddMyms"),
                NombreFormulario = NombreFormulario,
                NumUnico = "RECM-0001" + DateTime.Now.ToString("ddMyms"),
                LogDocumentos = new List<BaseModelo> {
                    new BaseModelo { Valor="NumVisita",Texto= "0001" + DateTime.Now.ToString("ddMyms")},
                    new BaseModelo { Valor="NumRequerimientoServicio",Texto="REQ-0001" + DateTime.Now.ToString("ddMyms") },
                    new BaseModelo { Valor="NumRequerimientoLogistico",Texto="REL-0001" + DateTime.Now.ToString("ddMyms") },
                    new BaseModelo { Valor="NumRecoleccionMuestra",Texto="RECM-0001" + DateTime.Now.ToString("ddMyms") }
                },
                Printed = false,
                RecomendacionesIngreso = "Perro Bravo, timbrar en porteria",
                Telefono = "2343454",
                Visible = true,
            };

            _repositorio.Save(model);
        }

        protected void btnImprimir_Click(object sender, EventArgs e)
        {
            PrintService imprime = new PrintService();

            var model = new InformeFinalModelo
            {

                AsesorAsignado = "Juan Javier Molano",
                Cargo = "Tecnico Sena",
                Celular = "3145657654",
                CIIU = new BaseModelo { Valor = "12345", Texto = "Sample CIIU" },
                Ciudad = new CiudadModelo { IdDepto = "22", IdMunicipio = "32", NomDepto = "Quindio", NomMunicipio = "Quimbaya" },
                MunicipioDiligencia = new CiudadModelo { IdDepto = "22", IdMunicipio = "32", NomDepto = "Atlantico", NomMunicipio = "barranquilla" },
                ClosedDate = "02/03/2017",
                CreatedDate = "02/03/2017",
                DiligenciadoPor = "Jose Antonio Garcia",
                DirAdmin = "Cll 45  23 -24 oficina 203",
                DirOperativa = "Parque industrial el Torque,Km 8 Via al Mar",
                Editable = false,
                Eliminado = false,
                Email = "sample@sas.com",
                Extencion = "123",
                Fecha = "04/03/2017",
                Hora = "06:04",
                FechaAsignadaVisita = "06/07/2017",
                HoraAsisgnadaVisita = "05:04",
                IdFormulario = "0001" + DateTime.Now.ToString("ddMyms"),
                NombreFormulario = NombreFormulario,
                NumUnico = "RECM-0001" + DateTime.Now.ToString("ddMyms"),
                LogDocumentos = new List<BaseModelo> {
                    new BaseModelo { Valor="NumVisita",Texto= "0001" + DateTime.Now.ToString("ddMyms")},
                    new BaseModelo { Valor="NumRequerimientoServicio",Texto="REQ-0001" + DateTime.Now.ToString("ddMyms") },
                    new BaseModelo { Valor="NumRequerimientoLogistico",Texto="REL-0001" + DateTime.Now.ToString("ddMyms") },
                    new BaseModelo { Valor="NumRecoleccionMuestra",Texto="RECM-0001" + DateTime.Now.ToString("ddMyms") }
                },
                Printed = false,
                RecomendacionesIngreso = "Perro Bravo, timbrar en porteria",
                Telefono = "2343454",
                Visible = true,



            };
            string html = ManejadorPlantillas.GenerarPlantillaCompletaQuince(model);
            imprime.PruebaDocumentoVisita(html);
        }
    }
}