<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PlanificacionCargue.aspx.cs" Inherits="Quimirespel.Formularios.Transporte.PlanificacionCargue" %>

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

            <!--PLANIFICACION DEL SERVICIO  -->
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-2">
                    </div>
                    <label class="control-label col-sm-8 sectionheader">2. PLANIFICACION DEL SERVICIO</label>
                    <div class="col-sm-2">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-3">
                            <label class="control-label">FECHA DE SERVICIO</label>
                            <asp:TextBox ID="txtFechaServicio" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                        </div>
                        <div class="col-sm-3">
                            <label class="control-label">PLACA DE VEHÍCULO</label>
                            <asp:TextBox ID="txtPlacaVehiculo" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                        </div>
                        <div class="col-sm-3">
                            <label class="control-label">TIPO DE VEHÍCULO</label>
                            <asp:TextBox ID="txtTipoVehiculo" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                        </div>
                        <div class="col-sm-3">
                            <label class="control-label">CAPACIDAD DE VEHÍCULO</label>
                            <asp:TextBox ID="txtCapacidadVehiculo" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-4">
                            <label class="control-label">RUTA 1 </label>
                            <asp:TextBox ID="txtRutaUno" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                        </div>
                        <div class="col-sm-4">
                            <label class="control-label">RUTA 2 </label>
                            <asp:TextBox ID="txtRutaDos" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                        </div>
                        <div class="col-sm-4">
                            <label class="control-label">RUTA 3 </label>
                            <asp:TextBox ID="txtRutaTres" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-4">
                            <label class="control-label">HORA DE SALIDAD</label>
                            <asp:TextBox ID="txtHoraSalida" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                        </div>
                        <div class="col-sm-4">
                            <label class="control-label">PLACA DE HORA DE LLEGADA A DESTINO</label>
                            <asp:TextBox ID="txtHoraLLegada" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                        </div>
                        <div class="col-sm-4">
                            <label class="control-label">HORA MAXIMA DE LLEGADA A DESTINO</label>
                            <asp:TextBox ID="txtHoraMaximaLlegada" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <div class="row">
                            <div class="col-sm-4">
                                <label class="control-label">NOMBRE DE CONDUCTOR</label>
                                <asp:TextBox ID="txtNombreConductor" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                            </div>
                            <div class="col-sm-4">
                                <label class="control-label">NOMBRE DE AUXILIAR</label>
                                <asp:TextBox ID="txtNombreAuxiliar" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                            </div>
                            <div class="col-sm-4">
                                <label class="control-label">NOMBRE DE OPERARIO</label>
                                <asp:TextBox ID="txtNombreOperario" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                            </div>
                        </div>
                    </div>

                    <!--REQUERIMIENTO DEL SERVICIO  -->
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="col-sm-2">
                            </div>
                            <label class="control-label col-sm-8 sectionheader">3. REQUERIMIENTO DEL SERVICIO</label>
                            <div class="col-sm-2">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="row">
                                <div class="col-sm-6">
                                    <label class="control-label">TIPO DE SERVCIO</label>
                                    <asp:TextBox ID="txtTipoServicio" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                                </div>
                                <div class="col-sm-6">
                                    <label class="control-label">HERRAMIENTAS DEL SERVICIO</label>
                                    <asp:TextBox ID="txtHerramientasServicio" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <label class="control-label">RECURSO</label>
                                    </div>
                                    <div class="col-sm-4">
                                        <label class="control-label">CANTIDAD</label>
                                    </div>
                                    <div class="col-sm-4">
                                        <label class="control-label">DESCRIPCIÓN</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <label class="control-label">RÓTULOS </label>
                                    </div>
                                    <div class="col-sm-4">
                                        <asp:TextBox ID="txtRotuloCantidad" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-4">
                                        <asp:TextBox ID="txtRotuloDescripcion" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <label class="control-label">ETIQUETAS</label>
                                    </div>
                                    <div class="col-sm-4">
                                        <asp:TextBox ID="txtEtiquetasCantidad" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-4">
                                        <asp:TextBox ID="txtEtiquetasDescripcion" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <label class="control-label">PLACA N° UN</label>
                                    </div>
                                    <div class="col-sm-4">
                                        <asp:TextBox ID="txtPlacaCantidad" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-4">
                                        <asp:TextBox ID="txtPlacaDescripcion" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <label class="control-label">KIT DE DERRAME</label>
                                    </div>
                                    <div class="col-sm-4">
                                        <asp:TextBox ID="txtKitDerrameCantiad" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-4">
                                        <asp:TextBox ID="txtKitDerrameDescripcion" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <label class="control-label">EPP </label>
                                    </div>
                                    <div class="col-sm-4">
                                        <asp:TextBox ID="txtEPPCantidad" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-4">
                                        <asp:TextBox ID="txtEPPDescripcion" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <label class="control-label">KIT ASEO</label>
                                    </div>
                                    <div class="col-sm-4">
                                        <asp:TextBox ID="txtKitAseoCantidad" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-4">
                                        <asp:TextBox ID="txtKitAseoDescripcion" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <label class="control-label">MOTOBOMBA</label>
                                    </div>
                                    <div class="col-sm-4">
                                        <asp:TextBox ID="txtMotobombaCantidad" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-4">
                                        <asp:TextBox ID="txtMotobombaDescripcion" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <label class="control-label">EMBALAJE</label>
                                    </div>
                                    <div class="col-sm-4">
                                        <asp:TextBox ID="txtEmbalajeCantidad" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-4">
                                        <asp:TextBox ID="txtEmbalajeDescripcion" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <label class="control-label">MANGUERA</label>
                                    </div>
                                    <div class="col-sm-4">
                                        <asp:TextBox ID="txtMangueraCantidad" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-4">
                                        <asp:TextBox ID="txtMangueraDescripcion" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <label class="control-label">ACOPLES</label>
                                    </div>
                                    <div class="col-sm-4">
                                        <asp:TextBox ID="txtAcoplesCantidad" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-4">
                                        <asp:TextBox ID="txtAcoplesDescripcion" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <label class="control-label">PERSONAL</label>
                                    </div>
                                    <div class="col-sm-4">
                                        <asp:TextBox ID="txtPersonalCantidad" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-4">
                                        <asp:TextBox ID="txtPersonalDescripcion" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <label class="control-label">OBSERVACIONES:</label>
                                        <asp:TextBox ID="txtObservaciones" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                                    </div>

                                </div>
                            </div>
                        </div>

                        <!-- INFORMACION REPRESENTANTE  -->
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="col-sm-2">
                                </div>
                                <label class="control-label col-sm-8 sectionheader">3. INFORMACIÓN DEL REPRESENTANTE DE QUIMIRESPEL TRANSPORTADORA S.A.S</label>
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
