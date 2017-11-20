using Quimirespel.Models;
using System;
using System.Collections.Generic;
using Quimirespel.Data;
using Quimirespel.Models.Tablas;

namespace Quimirespel.Formularios
{
    public partial class CotizacionServicio : System.Web.UI.Page
    {
        private RepositorioCostosServicio _repositorio;
        private string NombreFormulario = "COTIZACION DE SERVICIO";

        public CotizacionServicio() {

            _repositorio = new RepositorioCostosServicio();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void Save()
        {

            var model = new CostosServicioModelo
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

                EnsayosAplicados=new List<CostosServicioTablaUno> {

                    new CostosServicioTablaUno {
                        NumeroMuestra="MG-34232",
                        TratamientoBiologico="Kadmio1",
                        TratamientoFisico="Delta2",
                        TratamientoQuimico="Korme1",
                        TratamientoTermico="Isonil 23"
                    }
                },
               
                CostoServicio= new List<CostosServicioTablaDos> {
                    new CostosServicioTablaDos
                    {
                        Item="Costos de Tratamiento",
                        NombreMuestra="My Tratamiento",
                        NumeroMuestra="M-23232",
                        ValorTratamiento=2000

                    },
                     new CostosServicioTablaDos
                    {
                        Item="Costos de Insumos",
                        NombreMuestra="Pailillos de Cromo",
                        NumeroMuestra="M-23231",
                        ValorTratamiento=2000
                    },
                      new CostosServicioTablaDos
                    {
                        Item="Costos de Mano de Obra",
                        NombreMuestra="Ingeniero+Ayudante",
                        NumeroMuestra="M-23233",
                        ValorTratamiento=2000

                    }
                }

            };

            _repositorio.Save(model);
        }
    }
}