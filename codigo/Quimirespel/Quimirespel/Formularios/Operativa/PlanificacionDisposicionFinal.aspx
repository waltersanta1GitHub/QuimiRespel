<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PlanificacionDisposicionFinal.aspx.cs" Inherits="Quimirespel.Formularios.Operativa.PlanificacionDisposicionFinal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 <div class="container">
        <div class="row" style="padding-top: 2px;">
            <div class="col-sm-12">
                <div class="col-sm-4">
                </div>
                <div class="col-sm-4">
                </div>
                <div class="col-sm-4">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="col-sm-9">
                                <asp:TextBox ID="txtBuscar" runat="server" CssClass="form-control input-sm" placeholder="Buscar Num Cotizacion">
                                </asp:TextBox>
                            </div>
                            <div class="col-sm-3">
                                <asp:LinkButton ID="btnBuscar" runat="server" CssClass="form-control btn btn-default pull-right" >
                             <span aria-hidden="true" class="glyphicon glyphicon-search"></span>
                                </asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="row">
                <label class="form-control">PLANIFICACIÓN DE DISPOSICIÓN FINAL  DE RESIDUOS Y MERCANCÍAS PELIGROSAS</label>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-4">
                    </div>
                    <label class="col-sm-12 sectionheader ">
                        1.  HERRAMIENTAS PARA LA DISPOSICIÓN FINAL
                    </label>
                    <div class="col-sm-4">
                    </div>
                </div>
            </div>
           <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-4">
                        <label class="control-label">RECURSOS</label>
                    </div>
                    <div class="col-sm-4">
                        <label class="control-label">CANTIDAD</label>
                    </div>
                    <div class="col-sm-4">
                        <label class="control-label">DESCRPCIÓN</label>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-4">
                         <div class="row">
                             <div class="col-sm-6">
                                 <label class="control-label">NOMBRE DE PERSONAL</label>
                             </div>
                             <div class="col-sm-6">
                                 <label class="control-label">EPP</label>
                             </div>
                         </div>
                        
                    </div>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtCantitadEPP" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtDescripEPP" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                </div>
            </div>

             <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-4">
                         <div class="row">
                             <div class="col-sm-6">
                                 <asp:TextBox ID="txtNombrePersonalUno" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                             </div>
                             <div class="col-sm-6">
                                 <label class="control-label">TRANSPORTE</label>
                             </div>
                         </div>
                        
                    </div>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtTransporteCantidad" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtTrasporteDetalle" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                </div>
            </div>

             <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-4">
                         <div class="row">
                             <div class="col-sm-6">
                                 <asp:TextBox ID="txtNombrePersonalDos" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                             </div>
                             <div class="col-sm-6">
                                 <label class="control-label">CINTA METRICA</label>
                             </div>
                         </div>
                        
                    </div>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtCintaCantidad" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtCintaDetalle" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-4">
                         <div class="row">
                             <div class="col-sm-6">
                                 <asp:TextBox ID="txtNombrePersonaTres" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                             </div>
                             <div class="col-sm-6">
                                 <label class="control-label">KIT DERRAME</label>
                             </div>
                         </div>
                        
                    </div>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtKidDerrameCantidad" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtKidDerrameDescripcion" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-4">
                         <div class="row">
                             <div class="col-sm-6">
                                 <asp:TextBox ID="txtNombrePersonaCuatro" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                             </div>
                             <div class="col-sm-6">
                                 <label class="control-label">EMBALAJE</label>
                             </div>
                         </div>
                        
                    </div>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtEmbalajeCantidad" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtEmbalajeDescripcion" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                </div>
            </div>


            <!--  PLANIFICACIÓN DE DISPOSICIÓN FINAL   -->
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-2">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <label class="control-label col-sm-12 sectionheader">
                        2. PLANIFICACIÓN DE DISPOSICIÓN FINAL  DE RESIDUOS Y MERCANCÍAS PELIGROSAS
                    </label>
                </div>
            </div>                       
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <asp:GridView ID="PlanificacionFinalGrid" Width="100%" runat="server" ShowFooter="true"
                            AutoGenerateColumns="false" >
                            <Columns>                                
                                <asp:TemplateField HeaderText="NOMBRE RAZÓN SOCIAL">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtNomRazonSocial" CssClass="form-control input-sm text" Width="100%" runat="server"></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>                              
                                <asp:TemplateField HeaderText="NOMBRE RESIDUOS">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtNomResiduo" CssClass="form-control input-sm text" Width="100%" runat="server"></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="CANTIDAD">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtCantidadResiduo" CssClass="form-control input-sm text" Width="100%" runat="server"></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="EMBALAJE">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtEmbalajeResiduo" CssClass="form-control input-sm text" Width="100%" runat="server"></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="LOTE">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtLoteResiduo" CssClass="form-control input-sm text" Width="100%" runat="server"></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="FECHA DISPOSICIÓN">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtFechaDisposicion" CssClass="form-control input-sm text" Width="100%" runat="server"></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="HORA">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtHora" CssClass="form-control input-sm text" Width="100%" runat="server"></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="CORDENADAS DE DISPOSICIÓN FINAL (m)">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtCoordenadas" CssClass="form-control input-sm text" Width="100%" runat="server"></asp:TextBox>
                                    </ItemTemplate>
                                    <FooterStyle HorizontalAlign="Right" />
                                    <FooterTemplate>
                                        <asp:Button ID="AdicionarDisposicionBtn" runat="server" Text="+ Adicionar" CssClass="form-control btn btn-success pull-left"  />
                                    </FooterTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>           
            <!-- INFORMACION REPRESENTANTE  -->
            <div class="row">
                <div class="col-sm-12">
                    <label class="control-label col-sm-12 sectionheader">3. INFORMACIÓN DEL REPRESENTANTE DE QUIMIRESPEL TRANSPORTADORA S.A.S</label>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-3">
                            <label class="control-label">DILIGENCIADO POR</label>
                        </div>
                        <div class="col-sm-3">
                            <asp:TextBox ID="txtDiligenciadoPorRepre" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                        </div>
                        <div class="col-sm-3">
                            <label class="control-label">N° REQUERIMIENTO DEL SERVICIO</label>
                        </div>
                        <div class="col-sm-3">
                            <asp:TextBox ID="txtNumSolicitudVisitaRepre" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="col-sm-12">
                                <div class="col-sm-6">
                                    <label class="control-label">CARGO</label>
                                </div>
                                <div class="col-sm-6">
                                    <asp:TextBox ID="txtCargoRepre" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-4">
                            <div class="col-sm-12">
                                <div class="col-sm-3">
                                    <label class="control-label">FECHA</label>
                                </div>
                                <div class="col-sm-9">
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="col-sm-8">
                                                <asp:TextBox ID="txtFechaRepre" runat="server" CssClass="form-control input-sm" ></asp:TextBox>
                                            </div>
                                            <div class="col-sm-4">
                                                <asp:LinkButton  ID="btnFechaRepre"  CssClass="form-control btn btn-default"  runat="server" >
                                            <span aria-hidden="true" class="glyphicon glyphicon-list-alt"></span>
                                                </asp:LinkButton>
                                            </div>
                                        </div>
                                    </div>
                                    <asp:Calendar ID="fechaRepreCal" runat="server" Visible="false" ></asp:Calendar>
                                </div>
                            </div>

                        </div>

                        <div class="col-sm-4">
                            <div class="col-sm-12">
                                <div class="col-sm-4">
                                    <label class="control-label">HORA</label>
                                </div>
                                <div class="col-sm-8">
                                    <asp:TextBox ID="txtHoraRepre" runat="server" CssClass="form-control input-sm text" AutoPostBack="true"></asp:TextBox>
                                </div>
                            </div>
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
                            <label class="control-label">DEPARTAMENTO</label>
                        </div>
                        <div class="col-sm-4">
                            <asp:DropDownList ID="drpDepartamentoF" runat="server" CssClass="form-control input-sm" AutoPostBack="true" ></asp:DropDownList>
                        </div>
                        <div class="col-sm-2">
                            <label class="control-label">MUNICIPIO</label>
                        </div>
                        <div class="col-sm-4">
                            <asp:DropDownList ID="drpCiudadF" runat="server" CssClass="form-control input-sm" AutoPostBack="true"></asp:DropDownList>
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
            <div class="col-sm-2">
                <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar" CssClass="form-control btn btn-primary pull-left"  />
            </div>
            <div class="col-sm-2">
                <asp:Button ID="btnImprimir" runat="server" Text="Imprimir" CssClass="form-control btn btn-warning pull-left"  />
            </div>
            <div class="col-sm-2">
                <asp:Button ID="btnAdjuntar" runat="server" Text="Adjuntar..." CssClass="form-control btn btn-default pull-left"  />
            </div>
            <div class="col-sm-2">
                <asp:Button ID="btnEnviar" runat="server" Text="Enviar" CssClass="form-control btn btn-default pull-left"  />
            </div>
            <div class="col-sm-4">
                <asp:Button ID="btnGuardar" runat="server" Text="Guardar" CssClass="form-control btn btn-danger pull-right"  />
            </div>
        </div>
    </div>
</asp:Content>
