using Quimirespel.Models;
using System;
using System.Collections.Generic;
using Quimirespel.Data;
using Quimirespel.Models.Tablas;

namespace Quimirespel.Formularios.Transporte
{
    public partial class ProgramacionServicio : System.Web.UI.Page
    {
        private RepositorioProgramacionServicio _repositorio;
        private string NombreFormulario = "PROGRAMACION DE SERVICIO";

        public ProgramacionServicio() {

            _repositorio = new RepositorioProgramacionServicio();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void Save()
        {

            var model = new ProgramacionServicioModelo
            {

                AsesorAsignado = "Juan Javier Molano",
                Cargo = "Tecnico Sena",
                Celular = "3145657654",
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
                TablaSemanal= new List<ProgramacionServicioTablaModelo> {

                    new ProgramacionServicioTablaModelo {
                        Dia="Lunes",
                        CapacidadVehiculo="1200",
                        Direccion="Cll 23 ·12",
                        Fecha="12/03/2017",
                        Hora="04:50",
                        HoraLlegada="06:34",
                        NombreAuxiliar="Miguelito Acosta",
                        NombreConductor="Ruben Aguirre",
                        NombreContacto=" Maria Antonieta de las Nives",
                        NombreOperario="Sultan Gerardo Gomez",
                        PlacaVehiculo="SDS234",
                        RazonSocial="ProAceites S.A.S",
                        Ruta="Union-paloAlto-Necocli",
                        Telefono="32124122",
                        TipoVehiculo="Camion"
                    }
                }

            };

            _repositorio.Save(model);
        }
    }
}