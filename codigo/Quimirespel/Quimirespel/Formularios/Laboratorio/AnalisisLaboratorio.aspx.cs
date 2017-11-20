using System;
using Quimirespel.Data;
using Quimirespel.Models;
using System.Collections.Generic;
using Quimirespel.Models.Tablas;

namespace Quimirespel.Formularios.Laboratorio
{
    public partial class AnalisisLaboratorio : System.Web.UI.Page
    {
        RepositorioAnalisisLaboratorio _repositorio;
        private string NombreFormulario = "ANALISIS DE LABORATORIO";

        public AnalisisLaboratorio() {

        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        private void Save()
        {

            var model = new AnalisisLaboratorioModelo
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
                
                TablaCaracterizacionMuestra= new List<AnalisisLaboratorioTablaUno>
                {
                    new AnalisisLaboratorioTablaUno {

                        ComposicionToxica= new List<BaseModelo> { new BaseModelo { Valor="2321", Texto="Muy Toxico"} },
                        FechaAnalisis="01/04/2017",
                        FechaRecepcion="06/04/2017",
                        Fisicos= new List<BaseModelo> { new BaseModelo { Valor="232",Texto="dskdks"} },
                        NombreMuestra="My  Muestra",
                        NumMuestra="M-34234",
                        Peligrosidad= new List<BaseModelo> { new BaseModelo { Valor="1",Texto="Muy Peligroso" } }                        
                    }
                },
                AnalisisBiologico= new List<AnalisisLaboratorioTablaDos>
                {
                    new AnalisisLaboratorioTablaDos {
                        Cantidad="2",
                        CantidadInsumo="3",
                        Estado= new BaseModelo { Valor="12",Texto="Gaseoso"},
                        Insumos="magnetita Jabonosa",
                        NombreMuestra="La muestra",
                        NumMuestra="M34343",
                        TipoTratamiento= new BaseModelo {Valor="203",Texto="asdasdsa" },
                        Unidad= new BaseModelo { Valor="12",Texto="KG"},
                        UnidadInsumo= new BaseModelo { Valor="2",Texto="LT"}
                    }

                },
                AnalisisFisico=new List<AnalisisLaboratorioTablaDos> {
                    new AnalisisLaboratorioTablaDos {
                        Cantidad="2",
                        CantidadInsumo="3",
                        Estado= new BaseModelo { Valor="12",Texto="Gaseoso"},
                        Insumos="magnetita Jabonosa",
                        NombreMuestra="La muestra",
                        NumMuestra="M34343",
                        TipoTratamiento= new BaseModelo {Valor="203",Texto="asdasdsa" },
                        Unidad= new BaseModelo { Valor="12",Texto="KG"},
                        UnidadInsumo= new BaseModelo { Valor="2",Texto="LT"}
                    }

                },
                AnalisisQuimico= new List<AnalisisLaboratorioTablaDos> {
                    new AnalisisLaboratorioTablaDos {
                        Cantidad="2",
                        CantidadInsumo="3",
                        Estado= new BaseModelo { Valor="12",Texto="Gaseoso"},
                        Insumos="magnetita Jabonosa",
                        NombreMuestra="La muestra",
                        NumMuestra="M34343",
                        TipoTratamiento= new BaseModelo {Valor="203",Texto="asdasdsa" },
                        Unidad= new BaseModelo { Valor="12",Texto="KG"},
                        UnidadInsumo= new BaseModelo { Valor="2",Texto="LT"}
                    }
                },
                AnalisisTermico= new List<AnalisisLaboratorioTablaDos> {
                    new AnalisisLaboratorioTablaDos {
                        Cantidad="2",
                        CantidadInsumo="3",
                        Estado= new BaseModelo { Valor="12",Texto="Gaseoso"},
                        Insumos="magnetita Jabonosa",
                        NombreMuestra="La muestra",
                        NumMuestra="M34343",
                        TipoTratamiento= new BaseModelo {Valor="203",Texto="asdasdsa" },
                        Unidad= new BaseModelo { Valor="12",Texto="KG"},
                        UnidadInsumo= new BaseModelo { Valor="2",Texto="LT"}
                    }
                }
            };

            _repositorio.Save(model);
        }
    }
}