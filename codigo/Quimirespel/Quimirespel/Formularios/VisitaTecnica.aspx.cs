using System;
using System.Collections.Generic;
using Quimirespel.Models;
using Quimirespel.Models.Tablas;
using Quimirespel.Data;
using Quimirespel.Plantillas;

namespace Quimirespel.Formularios
{
    public partial class VisitaTecnica : System.Web.UI.Page
    {
        RepositorioVisitaTecnica _repositorio;
        private string NombreFormulario = "VISITA TECNICA";

        public VisitaTecnica()
        {
            _repositorio = new RepositorioVisitaTecnica();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            //Get("00011311174021");
        }

       private void Save()
        {

            var modelo = new VisitaTecnicaModel {

                AsesorAsignado="Juan Javier Molano",
                Cargo="Tecnico Sena",
                Celular="3145657654",
                CIIU= new BaseModelo { Valor="12345",Texto="Sample CIIU" },
                Ciudad= new CiudadModelo { IdDepto="22",IdMunicipio="32",NomDepto="Quindio",NomMunicipio="Quimbaya" },
                MunicipioDiligencia= new CiudadModelo { IdDepto = "22", IdMunicipio = "32", NomDepto = "Atlantico", NomMunicipio = "barranquilla" },
                ClosedDate="02/03/2017",
                CreatedDate= "02/03/2017",
                DiligenciadoPor="Jose Antonio Garcia",
                DirAdmin="Cll 45  23 -24 oficina 203",
                DirOperativa="Parque industrial el Torque,Km 8 Via al Mar",
                Editable=false,
                Eliminado=false,
                Email="sample@sas.com",
                Extencion="123",
                Fecha="04/03/2017",
                Hora="06:04",
                FechaAsignadaVisita="06/07/2017",
                HoraAsisgnadaVisita="05:04",
                IdFormulario="0001"+DateTime.Now.ToString("ddMyms"),
                NombreFormulario=NombreFormulario,
                NumUnico= "0001" + DateTime.Now.ToString("ddMyms"),
                LogDocumentos = new List<BaseModelo> {
                    new BaseModelo {
                        Valor = "NumVisia",Texto = "0001" + DateTime.Now.ToString("ddMyms")
                    }
                },
                Printed=false,
                RecomendacionesIngreso="Perro Bravo, timbrar en porteria",
                Telefono="2343454",
                Visible=true,
                TablaMercanciasPeligrosas= new List<Models.Tablas.VisitaTablaModelo> {
                    new VisitaTablaModelo
                    {
                        Nombre="Mercancia Uno",
                        Cantidad="2",
                        Embalaje=new BaseModelo {Texto="Estivas",Valor="1" },
                        Estado=new BaseModelo {Texto="Bueno",Valor="3" },
                        Unidad=new BaseModelo {Texto="Libra",Valor="2" }
                    },
                    new VisitaTablaModelo
                    {
                        Nombre="Mercancia Dos",
                        Cantidad="4",
                        Embalaje=new BaseModelo {Texto="Canastas",Valor="7" },
                        Estado=new BaseModelo {Texto="Bueno",Valor="3" },
                        Unidad=new BaseModelo {Texto="Saco",Valor="6" }
                    }
                }
                
            };

            _repositorio.Save(modelo);

        }


       private void Get(string id)
        {
            var valor= _repositorio.GetById(id);
        }

        protected void btnImprimir_Click(object sender, EventArgs e)
        {
            PrintService imprime = new PrintService();

            var modelo = new VisitaTecnicaModel
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
                NumUnico = "0001" + DateTime.Now.ToString("ddMyms"),
                LogDocumentos = new List<BaseModelo> {
                    new BaseModelo {
                        Valor = "NumVisia",Texto = "0001" + DateTime.Now.ToString("ddMyms")
                    }
                },
                Printed = false,
                RecomendacionesIngreso = "Perro Bravo, timbrar en porteria",
                Telefono = "2343454",
                Visible = true,
                TablaMercanciasPeligrosas = new List<Models.Tablas.VisitaTablaModelo> {
                    new VisitaTablaModelo
                    {
                        Nombre="Mercancia Uno",
                        Cantidad="2",
                        Embalaje=new BaseModelo {Texto="Estivas",Valor="1" },
                        Estado=new BaseModelo {Texto="Bueno",Valor="3" },
                        Unidad=new BaseModelo {Texto="Libra",Valor="2" }
                    },
                    new VisitaTablaModelo
                    {
                        Nombre="Mercancia Dos",
                        Cantidad="4",
                        Embalaje=new BaseModelo {Texto="Canastas",Valor="7" },
                        Estado=new BaseModelo {Texto="Bueno",Valor="3" },
                        Unidad=new BaseModelo {Texto="Saco",Valor="6" }
                    }
                }

            };
            string html = ManejadorPlantillas.GenerarPlantillaCompleta(modelo);
            imprime.PruebaDocumentoVisita(html);
        }
    }
}