using System;
using Quimirespel.Models;
using Quimirespel.Data;
using System.Data;
using System.Web.UI.WebControls;
using Quimirespel.Util;
using System.Collections.Generic;
using Quimirespel.Models.Tablas;
using System.Web.UI;

namespace Quimirespel.Formularios
{
    public partial class VisitaTecnica : System.Web.UI.Page
    {
        RepositorioVisitaTecnica _repositorio;
        RepositorioUnidades _reposUnidades;
        RepositorioEmbalaje _reposEmbalaje;
        RepositorioEstadosEmbalaje _reposEstadoEmbalaje;
        RepositorioCiiu _reposCiiu;
        RepositorioDepartamentoCiudad _reposDeptoCiudad;
        RepositorioUsuarios _repoUsuarios;

        private string NombreFormulario = "VISITA TECNICA";

        public VisitaTecnica()
        {
            _repositorio = new RepositorioVisitaTecnica();
            _reposUnidades = new RepositorioUnidades();
            _reposEstadoEmbalaje = new RepositorioEstadosEmbalaje();
            _reposEmbalaje = new RepositorioEmbalaje();
            _reposCiiu = new RepositorioCiiu();
            _reposDeptoCiudad = new RepositorioDepartamentoCiudad();
            _repoUsuarios = new RepositorioUsuarios();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                SetInitialRow();
                drpCodigoCIIU.DataSource = _reposCiiu.GetList();
                drpCodigoCIIU.DataValueField = "Valor";
                drpCodigoCIIU.DataTextField = "Texto";
                drpCodigoCIIU.DataBind();

                drpDepartamentoH.DataSource = _reposDeptoCiudad.GetListDepartamentos();
                drpDepartamentoH.DataValueField = "Valor";
                drpDepartamentoH.DataTextField = "NomDepto";
                drpDepartamentoH.DataBind();


                drpDepartamentoF.DataSource = _reposDeptoCiudad.GetListDepartamentos();
                drpDepartamentoF.DataValueField = "Valor";
                drpDepartamentoF.DataTextField = "NomDepto";
                drpDepartamentoF.DataBind();


                drpAsesorAsignado.DataSource = _repoUsuarios.GetAsesorList();
                drpAsesorAsignado.DataValueField = "NumDocumento";
                drpAsesorAsignado.DataTextField = "NombreCompleto";
                drpAsesorAsignado.DataBind();

            }
          
        }

       private void Save()
        {
            var modelo = new VisitaTecnicaModel
            {
                NumeroSolicitud=txtNumSolicitudVisitaRepre.Text,
                AsesorAsignado = drpAsesorAsignado.SelectedValue,
                CargoDiligenciado = txtCargoRepre.Text,
                CelularContactoH = txtCelularRepre.Text,
                EmailContactoH =txtEmailH.Text,
                TelefonoH =txtTelefonoH.Text,
                Nit =txtNit.Text,
                RazonSocial=txtRazonSocial.Text,
                DepartamentoH=int.Parse(drpDepartamentoH.SelectedValue),
                DepartamentoF= int.Parse(drpDepartamentoF.SelectedValue),
                CiudadH = new CiudadModelo { Valor =int.Parse(drpCiudadH.SelectedValue), NomCiudad =drpCiudadH.SelectedItem.Text, Eliminado = false },
                CiudadF = new CiudadModelo { Valor = int.Parse(drpCiudadF.SelectedValue), NomCiudad = drpCiudadH.SelectedItem.Text, Eliminado = false },

                CIIU = new BaseModelo { Valor = drpCodigoCIIU.SelectedValue, Texto = drpCodigoCIIU.SelectedItem.Text }, 
                Observaciones=txtObservacionesAdicionales.Text,
                EspecificacionesDeSeguridad=txtEspecificaSeguridadIngreso.Text,

                FechaAsignadaVisita =txtFechaVisita.Text,
                HoraAsisgnadaVisita = txtHoraVisita.Text,

                DiligenciadoPor =txtDiligenciadoPorRepre.Text,
                CelularDiligenciado = txtCelularRepre.Text,
                FechaDiligenciado = txtFechaRepre.Text,                
                ExtencionDiligenciado =txtExtencioRepre.Text,                
                HoraDiligenciado = txtHoraRepre.Text,
                TelefonoDiligenciado=txtTelefonoRepre.Text,
                DireccionH=txtDireccionH.Text,
                NombreContactoH=txtNombreContactoH.Text,
              
                DirAdmin =txtDirAdministrativa.Text,
                DirOperativa = txtDirOperativa.Text,

                Control = new ControlModelo
                {
                    Visible=true,
                    Printed=false,
                    ClosedDate =null,
                    CreatedDate =DateTime.Now.ToString("dd/MM/yyyy"),
                    Editable = false,
                    Eliminado = false,
                    IdFormulario = "0001" + DateTime.Now.ToString("ddMyms"),
                    NombreFormulario=NombreFormulario,
                    LogDocumentos =new List<BaseModelo> {
                    new BaseModelo {
                        Valor = "NumVisia",Texto = "0001" + DateTime.Now.ToString("ddMyms")
                    }
                   }
                },
                TablaMercanciasPeligrosas =GetLineas()

            };
            _repositorio.Save(modelo);
        }

        private List<VisitaTablaModelo> GetLineas()
        {
            // ESTOY VALIDANDO EL METODO SAVE Y CARGANDO LOS VALORES

            return new List<Models.Tablas.VisitaTablaModelo> {
                    new VisitaTablaModelo
                    {
                        Nombre="Mercancia Uno",
                        Cantidad="2",
                        Embalaje=new BaseModelo {Texto="CAJA",Valor="4" },
                        Estado=new BaseModelo {Texto="BUENO",Valor="3" },
                        Unidad=new BaseModelo {Texto="LIBRA",Valor="2" }
                    },
                    new VisitaTablaModelo
                    {
                        Nombre="Mercancia Dos",
                        Cantidad="4",
                        Embalaje=new BaseModelo {Texto="GALON",Valor="5" },
                        Estado=new BaseModelo {Texto="BUENO",Valor="3" },
                        Unidad=new BaseModelo {Texto="KILO",Valor="1" }
                    }
                };
        }

        #region GridView

        protected void ResiduosGrid_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                var dropUnidades = (DropDownList)e.Row.FindControl("dropUnidadAdd");
                foreach (BaseModelo colName in _reposUnidades.GetList())
                    dropUnidades.Items.Add(new ListItem(colName.Texto));


                var dropEstados = (DropDownList)e.Row.FindControl("dropEstadoAdd");
                foreach (BaseModelo colName in _reposEstadoEmbalaje.GetList())
                    dropEstados.Items.Add(new ListItem(colName.Texto));


                var dropEmbalaje = (DropDownList)e.Row.FindControl("dropEmbalajeAdd");
                foreach (BaseModelo colName in _reposEmbalaje.GetList())
                    dropEmbalaje.Items.Add(new ListItem(colName.Texto));

            }
        }

        private void SetInitialRow()
        {

            var dt = new DataTable();
            DataRow dr = null;
            dt.Columns.Add(new DataColumn("RowNumber", typeof(string)));
            dt.Columns.Add(new DataColumn("NomResiduo", typeof(string)));
            dt.Columns.Add(new DataColumn("Cantidad", typeof(string)));
            dt.Columns.Add(new DataColumn("Unidad", typeof(string)));
            dt.Columns.Add(new DataColumn("Estado", typeof(string)));
            dt.Columns.Add(new DataColumn("Embalaje", typeof(string)));

            dr = dt.NewRow();
            dr["RowNumber"] = 1;
            dr["NomResiduo"] = string.Empty;
            dr["Cantidad"] = string.Empty;
            dr["Unidad"] = string.Empty;
            dr["Estado"] = string.Empty;
            dr["Embalaje"] = string.Empty;
            dt.Rows.Add(dr);
            
            ViewState["ResiduosTable"] = dt;
            ResiduosGrid.DataSource = dt;
            ResiduosGrid.DataBind();

        }


        private void AddNewRowToGrid()
        {

            int rowIndex = 0;
            if (ViewState["ResiduosTable"] != null)
            {
                var dtCurrentTable = (DataTable)ViewState["ResiduosTable"];
                DataRow drCurrentRow = null;
                if (dtCurrentTable.Rows.Count > 0)
                {
                    for (int i = 1; i <= dtCurrentTable.Rows.Count; i++)
                    {
                        var nombreResiduoTxt = (TextBox)ResiduosGrid.Rows[rowIndex].Cells[1].FindControl("txtNombreResiduoAdd");
                        var cantidadTxt = (TextBox)ResiduosGrid.Rows[rowIndex].Cells[2].FindControl("txtCantidadAdd");
                        var unidadCbx = (DropDownList)ResiduosGrid.Rows[rowIndex].Cells[3].FindControl("dropUnidadAdd");
                        var estadoCbx = (DropDownList)ResiduosGrid.Rows[rowIndex].Cells[4].FindControl("dropEstadoAdd");
                        var embalajeCbx = (DropDownList)ResiduosGrid.Rows[rowIndex].Cells[5].FindControl("dropEmbalajeAdd");


                        drCurrentRow = dtCurrentTable.NewRow();
                        drCurrentRow["RowNumber"] = i + 1;
                        drCurrentRow["NomResiduo"] = nombreResiduoTxt.Text;
                        drCurrentRow["Cantidad"] = cantidadTxt.Text;
                        drCurrentRow["Unidad"] = unidadCbx.SelectedValue;
                        drCurrentRow["Estado"] = estadoCbx.SelectedValue;
                        drCurrentRow["Embalaje"] = embalajeCbx.SelectedValue;

                        rowIndex++;
                    }

                    dtCurrentTable.Rows.Add(drCurrentRow);
                    ViewState["ResiduosTable"] = dtCurrentTable;
                    ResiduosGrid.DataSource = dtCurrentTable;
                    ResiduosGrid.DataBind();
                }
            }
            else
            {
                Response.Write("ViewState is null");
            }
           
            SetPreviousData();
        }


        private void SetPreviousData()
        {
            int rowIndex = 0;
            if (ViewState["ResiduosTable"] != null)
            {
                DataTable dt = (DataTable)ViewState["ResiduosTable"];
                if (dt.Rows.Count > 0)
                {
                    for (int i = 1; i <= dt.Rows.Count; i++)
                    {
                        var nombreResiduoTxt = (TextBox)ResiduosGrid.Rows[rowIndex].Cells[1].FindControl("txtNombreResiduoAdd");
                        var cantidadTxt = (TextBox)ResiduosGrid.Rows[rowIndex].Cells[2].FindControl("txtCantidadAdd");
                        var unidadCbx = (DropDownList)ResiduosGrid.Rows[rowIndex].Cells[3].FindControl("dropUnidadAdd");
                        var estadoCbx = (DropDownList)ResiduosGrid.Rows[rowIndex].Cells[4].FindControl("dropEstadoAdd");
                        var embalajeCbx = (DropDownList)ResiduosGrid.Rows[rowIndex].Cells[5].FindControl("dropEmbalajeAdd");


                        nombreResiduoTxt.Text = dt.Rows[rowIndex]["NomResiduo"].ToString();
                        cantidadTxt.Text = dt.Rows[rowIndex]["Cantidad"].ToString();
                        unidadCbx.SelectedValue = dt.Rows[rowIndex]["Unidad"].ToString();
                        estadoCbx.SelectedValue = dt.Rows[rowIndex]["Estado"].ToString();
                        embalajeCbx.SelectedValue = dt.Rows[rowIndex]["Embalaje"].ToString();
                        rowIndex++;
                    }
                }
            }
        }


        private void CargarLineas(List<VisitaTablaModelo> tabla)
        {           
            var dt = new DataTable();
            DataRow dr = null;
            dt.Columns.Add(new DataColumn("RowNumber", typeof(string)));
            dt.Columns.Add(new DataColumn("NomResiduo", typeof(string)));
            dt.Columns.Add(new DataColumn("Cantidad", typeof(string)));
            dt.Columns.Add(new DataColumn("Unidad", typeof(string)));
            dt.Columns.Add(new DataColumn("Estado", typeof(string)));
            dt.Columns.Add(new DataColumn("Embalaje", typeof(string)));
            int contador = 1;
            foreach (var item in tabla)
            {
                dr = dt.NewRow();
                dr["RowNumber"] = contador;
                dr["NomResiduo"] = item.Nombre;
                dr["Cantidad"] = item.Cantidad;
                dr["Unidad"] = item.Unidad.Texto;
                dr["Estado"] = item.Estado.Texto;
                dr["Embalaje"] = item.Embalaje.Texto;
                dt.Rows.Add(dr);
                contador++;
            }
            ViewState["ResiduosTable"] = dt;
            ResiduosGrid.DataSource = ViewState["ResiduosTable"];
            ResiduosGrid.DataBind();

            SetPreviousData();
            
        }

        #endregion

        protected void btnImprimir_Click(object sender, EventArgs e)
        {
            //PrintService imprime = new PrintService();

            //var modelo = new VisitaTecnicaModel
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
            //    NumUnico = "0001" + DateTime.Now.ToString("ddMyms"),
            //    LogDocumentos = new List<BaseModelo> {
            //        new BaseModelo {
            //            Valor = "NumVisia",Texto = "0001" + DateTime.Now.ToString("ddMyms")
            //        }
            //    },
            //    Printed = false,
            //    RecomendacionesIngreso = "Perro Bravo, timbrar en porteria",
            //    Telefono = "2343454",
            //    Visible = true,
            //    TablaMercanciasPeligrosas = new List<Models.Tablas.VisitaTablaModelo> {
            //        new VisitaTablaModelo
            //        {
            //            Nombre="Mercancia Uno",
            //            Cantidad="2",
            //            Embalaje=new BaseModelo {Texto="Estivas",Valor="1" },
            //            Estado=new BaseModelo {Texto="Bueno",Valor="3" },
            //            Unidad=new BaseModelo {Texto="Libra",Valor="2" }
            //        },
            //        new VisitaTablaModelo
            //        {
            //            Nombre="Mercancia Dos",
            //            Cantidad="4",
            //            Embalaje=new BaseModelo {Texto="Canastas",Valor="7" },
            //            Estado=new BaseModelo {Texto="Bueno",Valor="3" },
            //            Unidad=new BaseModelo {Texto="Saco",Valor="6" }
            //        }
            //    }

            //};
            //string html = ManejadorPlantillas.GenerarPlantillaCompleta(modelo);
            //imprime.PruebaDocumentoVisita(html);
        }


        protected void AdicionarBtn_Click(object sender, EventArgs e)
        {
            AddNewRowToGrid();
        }               


        protected void drpCodigoCIIU_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtCodCIIU.Text = drpCodigoCIIU.SelectedValue;
        }

        protected void drpDepartamento_SelectedIndexChanged(object sender, EventArgs e)
        {
            drpCiudadF.DataSource = _reposDeptoCiudad.GetByValor(int.Parse(drpDepartamentoF.SelectedItem.Value)).Ciudades;
            drpCiudadF.DataValueField = "Valor";
            drpCiudadF.DataTextField = "NomCiudad";
            drpCiudadF.DataBind();
        }

        protected void drpDepartamentoH_SelectedIndexChanged(object sender, EventArgs e)
        {
            drpCiudadH.DataSource = _reposDeptoCiudad.GetByValor(int.Parse(drpDepartamentoH.SelectedItem.Value)).Ciudades;
            drpCiudadH.DataValueField = "Valor";
            drpCiudadH.DataTextField = "NomCiudad";
            drpCiudadH.DataBind();

        }

        #region Formatos

        protected void txtFechaVisita_TextChanged(object sender, EventArgs e)
        {
            txtFechaVisita.Text = Helper.ValidarFecha(txtFechaVisita.Text);
        }

        protected void txtHoraVisita_TextChanged(object sender, EventArgs e)
        {
                txtHoraVisita.Text = Helper.ValidarHora(txtHoraVisita.Text);                      
         }

        #endregion
        

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            Save();
        }

        protected void btnShowFechaVisitaCal_Click(object sender, EventArgs e)
        {
            fechaVisitaCal.Visible = true;
        }

        protected void fechaVisitaCal_SelectionChanged(object sender, EventArgs e)
        {
            txtFechaVisita.Text = fechaVisitaCal.SelectedDate.ToString("dd/MM/yyyy");
            fechaVisitaCal.Visible = false;
        }

        protected void btnFechaRepre_Click(object sender, EventArgs e)
        {
            fechaRepreCal.Visible = true;
        }

        protected void fechaRepreCal_SelectionChanged(object sender, EventArgs e)
        {
            txtFechaRepre.Text = fechaRepreCal.SelectedDate.ToString("dd/MM/yyyy");
            fechaRepreCal.Visible = false;
        }

        protected void txtHoraRepre_TextChanged(object sender, EventArgs e)
        {
            txtHoraRepre.Text = Helper.ValidarHora(txtHoraRepre.Text);

        }

        protected void txtFechaRepre_TextChanged(object sender, EventArgs e)
        {
            txtFechaRepre.Text = Helper.ValidarFecha(txtFechaRepre.Text);
        }



        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            var valor = _repositorio.GetById(txtBuscar.Text.Trim());
            if (valor==null)
            {
                MostrarMensaje("No existe un(a) " + NombreFormulario.ToLower() + " con ese numero");
            }
            else
            {
                CargarControles(valor);
            }
        }

        private void CargarControles(VisitaTecnicaModel modelo)
        {
            txtCodCIIU.Text = modelo.CIIU.Valor;
            drpCodigoCIIU.SelectedValue = modelo.CIIU.Valor;
            txtRazonSocial.Text = modelo.RazonSocial;
            txtNit.Text = modelo.Nit;

            drpDepartamentoH.SelectedValue = modelo.DepartamentoH.ToString();
            var departamentoHeader = _reposDeptoCiudad.GetByValor(modelo.DepartamentoH);
            drpCiudadH.DataSource = departamentoHeader.Ciudades;
            drpCiudadH.DataValueField = "Valor";
            drpCiudadH.DataTextField = "NomCiudad";
            drpCiudadH.DataBind();

            drpCiudadH.SelectedValue = modelo.CiudadH.Valor.ToString();
           
            txtTelefonoH.Text = modelo.TelefonoH;
            txtDireccionH.Text = modelo.DireccionH;
            txtNombreContactoH.Text = modelo.NombreContactoH;
            txtCelularH.Text = modelo.CelularContactoH;
            txtEmailH.Text = modelo.EmailContactoH;

            // middle

            CargarLineas(modelo.TablaMercanciasPeligrosas);

            //Footer
            txtFechaVisita.Text = modelo.FechaAsignadaVisita;
            txtHoraVisita.Text = modelo.HoraAsisgnadaVisita;
            txtEspecificaSeguridadIngreso.Text = modelo.EspecificacionesDeSeguridad;
            txtObservacionesAdicionales.Text = modelo.Observaciones;
            txtDiligenciadoPorRepre.Text = modelo.DiligenciadoPor;
            txtNumSolicitudVisitaRepre.Text = modelo.NumeroSolicitud;
            txtCargoRepre.Text = modelo.CargoDiligenciado;
            txtFechaRepre.Text = modelo.FechaDiligenciado;
            txtHoraRepre.Text = modelo.HoraDiligenciado;
            txtTelefonoRepre.Text = modelo.TelefonoDiligenciado;
            txtExtencioRepre.Text = modelo.ExtencionDiligenciado;
            txtCelularRepre.Text = modelo.CelularDiligenciado;

            drpDepartamentoF.SelectedValue = modelo.DepartamentoF.ToString();
            var departamentoFooter = _reposDeptoCiudad.GetByValor(modelo.DepartamentoF);
            drpCiudadF.DataSource = departamentoFooter.Ciudades;
            drpCiudadF.DataValueField = "Valor";
            drpCiudadF.DataTextField = "NomCiudad";
            drpCiudadF.DataBind();

            drpCiudadF.SelectedValue = modelo.CiudadF.Valor.ToString();

            txtDirAdministrativa.Text = modelo.DirAdmin;
            txtDirOperativa.Text = modelo.DirOperativa;
            
        }
               
        public void MostrarMensaje(String ex)
        {
            string s = "<SCRIPT language='javascript'>alert('" + ex.Replace("\r\n", "\\n").Replace("'", "") + "'); </SCRIPT>";
            Type cstype = this.GetType();
            ClientScriptManager cs = this.Page.ClientScript;
            cs.RegisterClientScriptBlock(cstype, s, s.ToString());
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            ViewState["ResiduosTable"] = null;
            LimpiarControles();

        }
        
        private void LimpiarControles()
        {
            txtCodCIIU.Text = string.Empty;
            txtRazonSocial.Text = string.Empty;
            txtNit.Text = string.Empty;
            txtTelefonoH.Text = string.Empty;
            txtDireccionH.Text = string.Empty;
            txtNombreContactoH.Text = string.Empty;
            txtCelularH.Text = string.Empty;
            txtEmailH.Text = string.Empty;
            SetInitialRow();
            txtFechaVisita.Text = string.Empty;
            txtHoraVisita.Text = "00:00";
            txtEspecificaSeguridadIngreso.Text = string.Empty;
            txtObservacionesAdicionales.Text = string.Empty;
            txtDiligenciadoPorRepre.Text = string.Empty;
            txtNumSolicitudVisitaRepre.Text = string.Empty;
            txtCargoRepre.Text = string.Empty;
            txtFechaRepre.Text = string.Empty;
            txtHoraRepre.Text = "00:00";
            txtTelefonoRepre.Text = string.Empty;
            txtExtencioRepre.Text = string.Empty;
            txtCelularRepre.Text = string.Empty;
            txtDirAdministrativa.Text = string.Empty;
            txtDirOperativa.Text = string.Empty;

        }

        private VisitaTecnicaModel GetModeloTest()
        {
           return new VisitaTecnicaModel
            {
                NumeroSolicitud = "2222",
                AsesorAsignado = "Juan Javier Molano",
                CargoDiligenciado = "Tecnico Sena",
                CelularContactoH = "3145657654",
                Nit = "8907799",
                RazonSocial = "Plasticos Olarte S.A:S",
                DepartamentoH = 1,
                DepartamentoF = 1,
                CIIU = new BaseModelo { Valor = "123445", Texto = "Cultivos de Arroz" },
                CiudadH = new CiudadModelo { Valor = 1, NomCiudad = "Bogota", Eliminado = false },
                CiudadF = new CiudadModelo { Valor = 1, NomCiudad = "Bogota", Eliminado = false },
                Observaciones = "N/A",
                EspecificacionesDeSeguridad = "Hay perros bravos",
                DiligenciadoPor = "Jose Antonio Garcia",
                DirAdmin = "Cll 45  23 -24 oficina 203",
                DirOperativa = "Parque industrial el Torque,Km 8 Via al Mar",
                EmailContactoH = "sample@sas.com",
                ExtencionDiligenciado = "123",
                HoraDiligenciado = "06:04",
                FechaAsignadaVisita = "06/07/2017",
                HoraAsisgnadaVisita = "05:04",
                TelefonoH = "2343454",
                TelefonoDiligenciado = "2282954",
                DireccionH = "Barrio la Castellana",
                NombreContactoH = "Luis Miguel Urquijo",
                CelularDiligenciado = "31122200933",
                FechaDiligenciado = "05/08/2018",

                Control = new ControlModelo
                {
                    Visible = true,
                    Printed = false,
                    ClosedDate = "02/03/2017",
                    CreatedDate = "02/03/2017",
                    Editable = false,
                    Eliminado = false,
                    IdFormulario = "0001" + DateTime.Now.ToString("ddMyms"),
                    NombreFormulario = NombreFormulario,
                    LogDocumentos = new List<BaseModelo> {
                    new BaseModelo {
                        Valor = "NumVisia",Texto = "0001" + DateTime.Now.ToString("ddMyms")
                    }
                   }
                },
                TablaMercanciasPeligrosas = new List<Models.Tablas.VisitaTablaModelo> {
                    new VisitaTablaModelo
                    {
                        Nombre="Mercancia Uno",
                        Cantidad="2",
                        Embalaje=new BaseModelo {Texto="CAJA",Valor="4" },
                        Estado=new BaseModelo {Texto="BUENO",Valor="3" },
                        Unidad=new BaseModelo {Texto="LIBRA",Valor="2" }
                    },
                    new VisitaTablaModelo
                    {
                        Nombre="Mercancia Dos",
                        Cantidad="4",
                        Embalaje=new BaseModelo {Texto="GALON",Valor="5" },
                        Estado=new BaseModelo {Texto="BUENO",Valor="3" },
                        Unidad=new BaseModelo {Texto="KILO",Valor="1" }
                    }
                }

            };

        }

    }
}