using Quimirespel.Data;
using Quimirespel.Models;
using Quimirespel.Plantillas;
using System;
using System.Collections.Generic;

namespace Quimirespel.Formularios
{
    public partial class RecoleccionMuestras : System.Web.UI.Page
    {
        RepositorioRecoleccionMuestra _repositorio;
        private string NombreFormulario = "RECOLECCION-MUESTRA";

        public RecoleccionMuestras() {

            _repositorio = new RepositorioRecoleccionMuestra();
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }


        private void Save()
        {

            var model = new RecoleccionMuestraModelo
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
                NumUnico= "RECM-0001" + DateTime.Now.ToString("ddMyms"),
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
                

                // Propios
                Cantidad="4",
                CargoEntregaMuestra="Supervisor",
                CargoRecibeMuestras="Dueño",
                CargoRetiraMuestras="Ingeniero Transporte",
                Embalaje= new BaseModelo {Valor="2",Texto="Estivas" },
                Estado= new BaseModelo { Valor="1",Texto="Bueno" },
                FechaEntregaMuestra="02/03/2017",
                FechaRecibeMuestras="05/06/2017",
                FechaRetiraMuestras="07/03/2017",
                HoraEntregaMuestra="04:06",
                HoraRecibeMuestras="07:05",
                HoraRetiraMuestras="10:13",
                NombreCompletoEntregaMuestras="Milton Andres Pataquiba",
                NombreCompletoRecibeMuestras="Margarita Laserna Gomez",
                NombreCompletoRetiraMuestras="Juan Estevan Posada",
                NombreMuestra="Muestra reactiva plutonica",
                NumEmbalaje="234423",
                NumRecoleccionMuestra="23423",
                ObservacionesEntregaMuestra="N/A",
                ObservacionesRecibeMuestras="N/A",
                ObservacionesRetiraMuestras="N/A",
                Unidad= new BaseModelo { Valor="1",Texto="KL"}

            };

            _repositorio.Save(model);
        }

        protected void btnImprimir_Click(object sender, EventArgs e)
        {
            PrintService imprime = new PrintService();

            var model = new RecoleccionMuestraModelo
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


                // Propios
                Cantidad = "4",
                CargoEntregaMuestra = "Supervisor",
                CargoRecibeMuestras = "Dueño",
                CargoRetiraMuestras = "Ingeniero Transporte",
                Embalaje = new BaseModelo { Valor = "2", Texto = "Estivas" },
                Estado = new BaseModelo { Valor = "1", Texto = "Bueno" },
                FechaEntregaMuestra = "02/03/2017",
                FechaRecibeMuestras = "05/06/2017",
                FechaRetiraMuestras = "07/03/2017",
                HoraEntregaMuestra = "04:06",
                HoraRecibeMuestras = "07:05",
                HoraRetiraMuestras = "10:13",
                NombreCompletoEntregaMuestras = "Milton Andres Pataquiba",
                NombreCompletoRecibeMuestras = "Margarita Laserna Gomez",
                NombreCompletoRetiraMuestras = "Juan Estevan Posada",
                NombreMuestra = "Muestra reactiva plutonica",
                NumEmbalaje = "234423",
                NumRecoleccionMuestra = "23423",
                ObservacionesEntregaMuestra = "N/A",
                ObservacionesRecibeMuestras = "N/A",
                ObservacionesRetiraMuestras = "N/A",
                Unidad = new BaseModelo { Valor = "1", Texto = "KL" }

            };

            string html = ManejadorPlantillas.GenerarPlantillaCompletaCuatro(model);
            imprime.PruebaDocumentoVisita(html);

        }
    }
}