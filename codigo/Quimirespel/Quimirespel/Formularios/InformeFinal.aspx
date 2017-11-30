<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InformeFinal.aspx.cs" Inherits="Quimirespel.Formularios.InformeFinal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Image ID="calendar1" runat="server" ImageUrl="~/Imagenes/calendar-icon.png" />
    <div class="container">
        <div class="form-group">
            <div class="row">
                <label class="form-control">FORMATO DE SOLICITUD DE VISITA TÉCNICA</label>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-4">
                    </div>
                    <label class="col-sm-4 sectionheader">
                        1. INFORMACIÓN DEL GENERADOR
                    </label>
                    <div class="col-sm-4">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-4">
                            <label class="control-label">CÓDIGO CIIU</label>
                            <asp:TextBox ID="txtCodCIIU" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                        <div class="col-sm-8">
                            <label class="control-label">DESCRIPCIÓN</label>
                            <asp:DropDownList ID="drpCodigoCIIU" runat="server" CssClass="form-control input-sm"></asp:DropDownList>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-4">
                            <label class="control-label">RAZÓN SOCIAL</label>
                        </div>
                        <div class="col-sm-8">
                            <asp:TextBox ID="txtRazonSocial" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-4">
                            <label class="control-label">NIT</label>
                            <asp:TextBox ID="txtNit" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                        <div class="col-sm-4">
                            <label class="control-label">CIUDAD</label>
                            <asp:TextBox ID="txtCiudad" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                        <div class="col-sm-4">
                            <label class="control-label">MUNICIPIO</label>
                            <asp:TextBox ID="txtMunicipio" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-5">
                            <label class="control-label">TÉLEFONO</label>
                            <asp:TextBox ID="txtTelefono" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                        <div class="col-sm-7">
                            <label class="control-label">DIRECCIÓN</label>
                            <asp:TextBox ID="txtDireccion" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-4">
                            <label class="control-label">NOMBRE DE CONTACTO</label>
                            <asp:TextBox ID="txtNombreContacto" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                        <div class="col-sm-4">
                            <label class="control-label">CELULAR</label>
                            <asp:TextBox ID="txtCelular" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                        <div class="col-sm-4">
                            <label class="control-label">E-MAIL</label>
                            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>

            <!--   PLANIFICACIÓN DE TRATAMIENTOS  -->
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-2">
                    </div>
                    <label class="control-label col-sm-8 sectionheader">2. PLANIFICACIÓN DE TRATAMIENTOS</label>
                    <div class="col-sm-2">
                    </div>
                </div>
            </div>
            <div class="col-sm-12">
                <div class="row">
                    <div class="col-sm-3">
                        <label class="control-label">DESCRIPCIÓN</label>
                    </div>
                    <div class="col-sm-2">
                        <label class="control-label">FECHA</label>
                    </div>
                    <div class="col-sm-4">
                        <label class="control-label">SEGUIMIENTO</label>
                    </div>
                    <div class="col-sm-3">
                        <label class="control-label">ADJUNTAR ARCHIVO</label>
                    </div>
                </div>
            </div>
            <div class="col-sm-12">
                <div class="row">
                    <div class="col-sm-3">
                        <label class="control-label">SOLICITUD DE VISITA</label>
                    </div>
                    <div class="col-sm-2">
                        <asp:TextBox ID="txtFechaUno" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                    </div>
                    <div class="col-sm-4">
                        <label class="control-label">N° SOLICITUD DE VISITA</label>
                    </div>
                    <div class="col-sm-3">
                        <asp:TextBox ID="txtArchivoUno" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="col-sm-12">
                <div class="row">
                    <div class="col-sm-3">
                    </div>
                    <div class="col-sm-2">
                    </div>
                    <div class="col-sm-4">
                        <label class="control-label">N° REQUERIMIENTO DEL SERVICIO</label>
                    </div>
                    <div class="col-sm-3">
                        <asp:TextBox ID="txtArchivoDos" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="col-sm-12">
                <div class="row">
                    <div class="col-sm-3">
                        <label class="control-label">VISITA TECNICA</label>
                    </div>
                    <div class="col-sm-2">
                        <asp:TextBox ID="txtFechaDos" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                    </div>
                    <div class="col-sm-4">
                        <label class="control-label">N° REQUERIMIENTO LOGISTICO</label>
                    </div>
                    <div class="col-sm-3">
                        <asp:TextBox ID="txtArchivoTres" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="col-sm-12">
                <div class="row">
                    <div class="col-sm-3">
                    </div>
                    <div class="col-sm-2">
                    </div>
                    <div class="col-sm-4">
                        <label class="control-label">N° RECOLECCION MUESTRA</label>
                    </div>
                    <div class="col-sm-3">
                        <asp:TextBox ID="txtArchivoCuatro" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="col-sm-12">
                <div class="row">
                    <div class="col-sm-3">
                        <label class="control-label">ANÁLISIS DE MUESTRAS</label>
                    </div>
                    <div class="col-sm-2">
                        <asp:TextBox ID="txtFechaTres" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                    </div>
                    <div class="col-sm-4">
                        <label class="control-label">N° ANALISIS DE MUESTRA</label>
                    </div>
                    <div class="col-sm-3">
                        <asp:TextBox ID="txtArchivoCinco" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="col-sm-12">
                <div class="row">
                    <div class="col-sm-3">
                        <label class="control-label">COSTOS DEL SERVICIO</label>
                    </div>
                    <div class="col-sm-2">
                        <asp:TextBox ID="txtFechaCuatro" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                    </div>
                    <div class="col-sm-4">
                        <label class="control-label">N° COSTOS DEL SERVICIO</label>
                    </div>
                    <div class="col-sm-3">
                        <asp:TextBox ID="txtArchivoSeis" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="col-sm-12">
                <div class="row">
                    <div class="col-sm-3">
                        <label class="control-label">ACEPTACIÓN COTIZACIÓN</label>
                    </div>
                    <div class="col-sm-2">
                        <asp:TextBox ID="txtFechaCinco" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                    </div>
                    <div class="col-sm-4">
                        <label class="control-label">N° COTIZACION SERVICIO</label>
                    </div>
                    <div class="col-sm-3">
                        <asp:TextBox ID="txtArchivoSiete" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="col-sm-12">
                <div class="row">
                    <div class="col-sm-3">
                        <label class="control-label">PROGRAMACIÓN DE SERVICIO</label>
                    </div>
                    <div class="col-sm-2">
                        <asp:TextBox ID="txtFechaSeis" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                    </div>
                    <div class="col-sm-4">
                        <label class="control-label">N° PROGRAMACIÓN</label>
                    </div>
                    <div class="col-sm-3">
                        <asp:TextBox ID="textArchivoOcho" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="col-sm-12">
                <div class="row">
                    <div class="col-sm-3">
                        <label class="control-label">MANIFIESTO DE CARGA PARA EL TRANSPORTE</label>
                    </div>
                    <div class="col-sm-2">
                        <asp:TextBox ID="txtFechaSiete" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                    </div>
                    <div class="col-sm-4">
                        <label class="control-label">N° MANIFIESTO CTRMP </label>
                    </div>
                    <div class="col-sm-3">
                        <asp:TextBox ID="txtArchivoNueve" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="col-sm-12">
                <div class="row">
                    <div class="col-sm-3">
                        <label class="control-label">PLANIFICACIÓN PARA EL CARGUE Y TRANSPORTE</label>
                    </div>
                    <div class="col-sm-2">
                        <asp:TextBox ID="txtFechaOcho" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                    </div>
                    <div class="col-sm-4">
                        <label class="control-label">N° PLANIFICACION CTRMP</label>
                    </div>
                    <div class="col-sm-3">
                        <asp:TextBox ID="txtArchivoDiez" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="col-sm-12">
                <div class="row">
                    <div class="col-sm-3">
                        <label class="control-label">LISTA DE VERIFICACIÓN DE CONDICIONES SEGURAS </label>
                    </div>
                    <div class="col-sm-2">
                        <asp:TextBox ID="txtFechaNueve" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                    </div>
                    <div class="col-sm-4">
                        <label class="control-label"> N° LISTA VERIFICACION</label>
                    </div>
                    <div class="col-sm-3">
                        <asp:TextBox ID="txtArchivoOnce" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="col-sm-12">
                <div class="row">
                    <div class="col-sm-3">
                        <label class="control-label">RECEPCIÓN, CLASIFICACÍON Y VERIFICACIÓN</label>
                    </div>
                    <div class="col-sm-2">
                        <asp:TextBox ID="txtFechaDiez" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                    </div>
                    <div class="col-sm-4">
                        <label class="control-label"> N° RCVRMP</label>
                    </div>
                    <div class="col-sm-3">
                        <asp:TextBox ID="txtArchivoDoce" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="col-sm-12">
                <div class="row">
                    <div class="col-sm-3">
                        <label class="control-label">PLANIFICACIÓN Y TRATAMIENTO DE RESIDUO</label>
                    </div>
                    <div class="col-sm-2">
                        <asp:TextBox ID="txtFechaOnce" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                    </div>
                    <div class="col-sm-4">
                        <label class="control-label"> N° PLANIFICACION TRMP</label>
                    </div>
                    <div class="col-sm-3">
                        <asp:TextBox ID="txtArchivoTrece" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="col-sm-12">
                <div class="row">
                    <div class="col-sm-3">
                        <label class="control-label">PLANIFICACIÓN DE DISPOSICIÓN FINAL DE RESIDUO</label>
                    </div>
                    <div class="col-sm-2">
                        <asp:TextBox ID="txtFechaDoce" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                    </div>
                    <div class="col-sm-4">
                        <label class="control-label">N° PLANIFICACION DFRMP</label>
                    </div>
                    <div class="col-sm-3">
                        <asp:TextBox ID="txtArchivoCatorce" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="col-sm-12">
                <div class="row">
                    <div class="col-sm-3">
                        <label class="control-label">INFORME FINA</label>
                    </div>
                    <div class="col-sm-2">
                        <asp:TextBox ID="txtFechaTrece" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                    </div>
                    <div class="col-sm-4">
                        <label class="control-label">N° INFORME FINA</label>
                    </div>
                    <div class="col-sm-3">
                        <asp:TextBox ID="txtArchivoQuince" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                    </div>
                </div>
            </div>
          
            <!--   DESCRIPCION  -->
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-2">
                    </div>
                    <label class="control-label col-sm-8 sectionheader">3. DESCRIPCION</label>
                    <div class="col-sm-2">
                    </div>
                </div>
            </div>
            <div class="col-sm-12">
                <div class="row">
                    <div class="col-sm-3">
                        <label class="control-label">NOMBRE DE RESIDUOS</label>
                        <asp:TextBox ID="txtNombreResiduo" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                    </div>
                    <div class="col-sm-2">
                        <label class="control-label">CANTIDAD</label>
                        <asp:TextBox ID="txtCantidad" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                    </div>
                    <div class="col-sm-3">
                        <label class="control-label">TRATAMIENTO</label>
                        <asp:TextBox ID="txtTratamiento" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                    </div>
                    <div class="col-sm-2">
                        <label class="control-label">DISPOSICION</label>
                        <asp:TextBox ID="txtDisposicion" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                    </div>
                    <div class="col-sm-2">
                        <label class="control-label">LOTE</label>
                        <asp:TextBox ID="txtLote" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                    </div>
                </div>
            </div>
            <!-- INFORMACION REPRESENTANTE  -->
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-2">
                    </div>
                    <label class="control-label col-sm-8 sectionheader">4. INFORMACIÓN DEL REPRESENTANTE DE QUIMIRESPEL TRANSPORTADORA S.A.S</label>
                    <div class="col-sm-2">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-2">
                            <label class="control-label">DILIGENCIADO POR</label>
                        </div>
                        <div class="col-sm-4">
                            <asp:TextBox ID="txtDiligenciadoPorRepre" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                        </div>
                        <div class="col-sm-2">
                            <label class="control-label">N° SOLICITUD DE VISITA</label>
                        </div>
                        <div class="col-sm-4">
                            <asp:TextBox ID="txtNumSolicitudVisitaRepre" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-2">
                            <label class="control-label">CARGO</label>
                        </div>
                        <div class="col-sm-2">
                            <asp:TextBox ID="txtCargoRepre" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                        </div>
                        <div class="col-sm-2">
                            <label class="control-label">FECHA</label>
                        </div>
                        <div class="col-sm-2">
                            <asp:TextBox ID="txtFechaRepre" runat="server" CssClass="form-control input-sm"></asp:TextBox>

                        </div>
                        <div class="col-sm-2">
                            <label class="control-label">HORA</label>
                        </div>
                        <div class="col-sm-2">
                            <asp:TextBox ID="txtHoraRepre" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-2">
                            <label class="control-label">TELEFONO</label>
                        </div>
                        <div class="col-sm-2">
                            <asp:TextBox ID="txtTelefonoRepre" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                        </div>
                        <div class="col-sm-2">
                            <label class="control-label">EXT</label>
                        </div>
                        <div class="col-sm-2">
                            <asp:TextBox ID="txtExtencioRepre" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                        </div>
                        <div class="col-sm-2">
                            <label class="control-label">N° CELULAR</label>
                        </div>
                        <div class="col-sm-2">
                            <asp:TextBox ID="txtCelularRepre" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                        </div>
                    </div>
                </div>

                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-2">
                            <label class="control-label">MUNICIPIO</label>
                        </div>
                        <div class="col-sm-4">
                            <asp:TextBox ID="txtMunicipioRepre" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                        </div>
                        <div class="col-sm-2">
                            <label class="control-label">DEPARTAMENTO</label>
                        </div>
                        <div class="col-sm-4">
                            <asp:TextBox ID="txtDeptoRepre" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                        </div>
                    </div>
                </div>

                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-2">
                            <label class="control-label">DIRECCIÓN ADMINISTRATIVA</label>
                        </div>
                        <div class="col-sm-4">
                            <asp:TextBox ID="txtDirAdministrativa" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                        </div>
                        <div class="col-sm-2">
                            <label class="control-label">DIRECCIÓN OPERATIVA</label>
                        </div>
                        <div class="col-sm-4">
                            <asp:TextBox ID="txtDirOperativa" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <div class="row">
            <div class="col-sm-4">
            </div>
            <div class="col-sm-4">
                <asp:Button ID="btnImprimir" runat="server" Text="Imprimir" CssClass="form-control btn btn-info pull-left" OnClick="btnImprimir_Click" />
            </div>
            <div class="col-sm-4">
                <asp:Button ID="btnGuardar" runat="server" Text="Guardar" CssClass="form-control btn btn-danger pull-right" />
            </div>

        </div>
    </div>
</asp:Content>
