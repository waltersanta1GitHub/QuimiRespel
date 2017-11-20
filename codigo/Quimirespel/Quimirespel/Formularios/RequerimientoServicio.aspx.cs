using Quimirespel.Data;
using Quimirespel.Models;
using Quimirespel.Models.Tablas;
using System;
using System.Collections.Generic;

namespace Quimirespel.Formularios
{
    public partial class RequerimientoServicio : System.Web.UI.Page
    {
        RepositorioReqServicio _repositorio;
        private string NombreFormulario = "REQUERIMIENTO-SERVICIO";

        public RequerimientoServicio() {
            _repositorio = new RepositorioReqServicio();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            //Save();
        }


        private void Save()
        {
            

            var item = new RequerimientoServicioModel
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
                LogDocumentos= new List<BaseModelo> {
                    new BaseModelo { Valor="NumVisita",Texto= "0001" + DateTime.Now.ToString("ddMyms")},
                    new BaseModelo { Valor="NumRequerimientoServicio",Texto="REQ-0001" + DateTime.Now.ToString("ddMyms") }
                },                
                Printed = false,
                RecomendacionesIngreso = "Perro Bravo, timbrar en porteria",
                Telefono = "2343454",
                Visible = true,
                DescripcionResiduos="Gases Inflamables",
                ObservacionesResiduos="N/A",
                TablaResiduos= new List<Models.Tablas.ReqServicioTablaModelo>
                {
                    new ReqServicioTablaModelo {
                        Cantidad="2",
                        Codigo="23454",
                        Descripcion="Desechos Resultantes de la utilizacion de Dispositivos de control",
                        Embalaje= new BaseModelo {Valor="1", Texto="Caja" },
                        Estado= new BaseModelo {Valor="3",Texto="Bueno" },
                        EstadoEmbalaje= new BaseModelo {Valor="6",Texto="Bien" },
                        EstadoEtiquetaRotulo="Muy bien",
                        NombreResiduo="Estopas Contaminadas",
                        ResiduosBienEtiquetados="Si",
                        Unidad=new BaseModelo { Valor="2",Texto="KG"}
                    }
                },
                TablaResiduosContaminadosCon= new List<Nonu>
                {
                    new Nonu {
                        Desc ="Etanol Refrigerado",
                        Clase ="2",
                        Division ="2.1",
                        Rsecundario ="N/A",
                        GrupoEmbalaje="N/A",
                        Codigo="1961",
                        Eliminado=false,
                        Nombre="Etanol Refrigerado"
                    }

                }

            };

            _repositorio.Save(item);

        }


        private void Get(string id)
        {
            var valor = _repositorio.GetById(id);
        }
    }
}