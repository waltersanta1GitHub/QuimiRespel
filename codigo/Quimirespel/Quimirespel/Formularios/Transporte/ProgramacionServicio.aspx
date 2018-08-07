<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProgramacionServicio.aspx.cs" Inherits="Quimirespel.Formularios.Transporte.ProgramacionServicio" %>
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
                                <asp:TextBox ID="txtBuscar" runat="server" CssClass="form-control input-sm" placeholder="Buscar Num Programacion">
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
                <label class="form-control">PROGRAMACION SERVICIO</label>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-4">
                    </div>
                    <label class="col-sm-12 sectionheader ">
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
                            <asp:DropDownList ID="drpCodigoCIIU" runat="server" CssClass="form-control input-sm" AutoPostBack="true"></asp:DropDownList>
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
                            <label class="control-label">DEPARTAMENTO</label>
                            <asp:DropDownList ID="drpDepartamentoH" runat="server" CssClass="form-control input-sm" AutoPostBack="true"
                                >
                            </asp:DropDownList>
                        </div>
                        <div class="col-sm-4">
                            <label class="control-label">MUNICIPIO</label>
                            <asp:DropDownList ID="drpCiudadH" runat="server" CssClass="form-control input-sm" AutoPostBack="true"></asp:DropDownList>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-5">
                            <label class="control-label">TÉLEFONO</label>
                            <asp:TextBox ID="txtTelefonoH" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                        <div class="col-sm-7">
                            <label class="control-label">DIRECCIÓN</label>
                            <asp:TextBox ID="txtDireccionH" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-4">
                            <label class="control-label">NOMBRE DE CONTACTO</label>
                            <asp:TextBox ID="txtNombreContactoH" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                        <div class="col-sm-4">
                            <label class="control-label">CELULAR</label>
                            <asp:TextBox ID="txtCelularH" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                        <div class="col-sm-4">
                            <label class="control-label">E-MAIL</label>
                            <asp:TextBox ID="txtEmailH" CssClass="form-control input-sm" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>

            <!-- RESIDUOS DECLARADOS  -->
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-2">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <label class="control-label col-sm-12 sectionheader">
                        2. INFORMACION DE RESIDUOS
                    </label>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                     <div class="row">
                        <div class="col-sm-4">
                            <label class="control-label">CÓDIGO</label>
                            <asp:TextBox ID="txtCorrienteResiduoCodigo" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                        <div class="col-sm-8">
                            <label class="control-label">DESCRIPCIÓN</label>
                            <asp:DropDownList ID="drpCorrienteResiduo" runat="server" CssClass="form-control input-sm" AutoPostBack="true"></asp:DropDownList>
                        </div>
                    </div>
                </div>
             </div>
            <div class="row">
                <div class="col-sm-12">
                     <div class="row">
                        <div class="col-sm-5">
                            <label class="control-label">NOMBRE DE RESIDUO</label>                           
                        </div>
                        <div class="col-sm-7">                            
                            <asp:TextBox ID="txtNombreResiduo" runat="server" CssClass="form-control input-sm" AutoPostBack="true"></asp:TextBox>
                        </div>
                    </div>
                </div>
             </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <asp:GridView ID="ResiduosInformacionGrid" Width="100%" runat="server" ShowFooter="true"
                            AutoGenerateColumns="false" >
                            <Columns>
                                <asp:BoundField DataField="RowNumber" HeaderText="#" />
                                <asp:TemplateField HeaderText="CANTIDAD">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtCantidadAdd" CssClass="form-control input-sm text" Width="100%" runat="server"></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>                              
                                <asp:TemplateField HeaderText="UNIDAD">
                                    <ItemTemplate>
                                        <asp:DropDownList ID="dropUnidadAdd" CssClass="form-control" Width="100%" runat="server"></asp:DropDownList>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="ESTADO">
                                    <ItemTemplate>
                                        <asp:DropDownList ID="dropEstadoAdd" CssClass="form-control" Width="100%" runat="server"></asp:DropDownList>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="EMBALAJE">
                                    <ItemTemplate>
                                        <asp:DropDownList ID="dropEmbalajeAdd" CssClass="form-control" Width="100%" runat="server"></asp:DropDownList>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="ESTADO EMBALAJE">
                                    <ItemTemplate>
                                        <asp:DropDownList ID="dropEstadoEmbalajeAdd" CssClass="form-control" Width="100%" runat="server"></asp:DropDownList>
                                    </ItemTemplate>
                                    <FooterStyle HorizontalAlign="Right" />
                                    <FooterTemplate>
                                        <asp:Button ID="AdicionarResiduoBtn" runat="server" Text="+ Adicionar" CssClass="form-control btn btn-success pull-left"  />
                                    </FooterTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
           
            <div class="row">
                <div class="col-sm-12">
                    <label class="control-label col-sm-12 sectionheader">
                        3. RESIDUOS CONTAMINADOS CON
                    </label>
                </div>
            </div>  
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <asp:GridView ID="GridView1" Width="100%" runat="server" ShowFooter="true"
                            AutoGenerateColumns="false" >
                            <Columns>
                                <asp:BoundField DataField="RowNumber" HeaderText="#" />
                                <asp:TemplateField HeaderText="NOMBRE Y DESCRIPCION DE MERCANCIA PELIGROSA">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtNombreResiduoAdd" CssClass="form-control input-sm text" Width="100%" runat="server"></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="N. ONU">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtNonuAdd" CssClass="form-control input-sm text" Width="100%" runat="server"></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="CLASE">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtClaseAdd" CssClass="form-control" Width="100%" runat="server"></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="DIVICÍON">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtDivicion" CssClass="form-control" Width="100%" runat="server"></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                 <asp:TemplateField HeaderText="RIESGO SECUNDARIO">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtRiesgoSecundario" CssClass="form-control" Width="100%" runat="server"></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>                                
                                <asp:TemplateField HeaderText="GRUPO EMBALAJE/ENVASE">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtGrupoEmbalaje" CssClass="form-control" Width="100%" runat="server"></asp:TextBox>
                                    </ItemTemplate>
                                    <FooterStyle HorizontalAlign="Right" />
                                    <FooterTemplate>
                                        <asp:Button ID="AdicionarBtn" runat="server" Text="+ Adicionar" CssClass="form-control btn btn-success pull-left"  />
                                    </FooterTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-12">
                    <label class="control-label col-sm-12 sectionheader">
                        4. DESCRIPCIÓN
                    </label>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-12">
                            <asp:TextBox ID="txtEspecificaSeguridadIngreso" runat="server" CssClass="form-control input-sm text" TextMode="MultiLine" Rows="5"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-12">
                    <label class="control-label col-sm-12 sectionheader">
                        5. OBSERVACIONES
                    </label>
                </div>
            </div>
            <div class="row">                
                <div class="col-sm-12">
                    <asp:TextBox ID="txtObservacionesAdicionales" runat="server" CssClass="form-control input-sm text" TextMode="MultiLine" Rows="5"></asp:TextBox>
                </div>
            </div>

            <!-- INFORMACION REPRESENTANTE  -->
            <div class="row">
                <div class="col-sm-12">
                    <label class="control-label col-sm-12 sectionheader">6. INFORMACIÓN DEL REPRESENTANTE DE QUIMIRESPEL TRANSPORTADORA S.A.S</label>
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
