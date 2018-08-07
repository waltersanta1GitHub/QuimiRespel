<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VisitaTecnica.aspx.cs" Inherits="Quimirespel.Formularios.VisitaTecnica" %>

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
                                <asp:TextBox ID="txtBuscar" runat="server" CssClass="form-control input-sm" placeholder="Buscar Num Visita">
                                </asp:TextBox>
                            </div>
                            <div class="col-sm-3">
                                <asp:LinkButton ID="btnBuscar" runat="server" CssClass="form-control btn btn-default pull-right" OnClick="btnBuscar_Click">
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
                <label class="form-control">FORMATO DE SOLICITUD DE VISITA TÉCNICA</label>
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
                            <asp:DropDownList ID="drpCodigoCIIU" runat="server" CssClass="form-control input-sm" OnSelectedIndexChanged="drpCodigoCIIU_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
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
                                OnSelectedIndexChanged="drpDepartamentoH_SelectedIndexChanged">
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
                        2. RESIDUOS DECLARADOS POR EL GENERADOR
                    </label>

                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <asp:GridView ID="ResiduosGrid" Width="100%" runat="server" ShowFooter="true"
                            AutoGenerateColumns="false" OnRowDataBound="ResiduosGrid_RowDataBound">
                            <Columns>
                                <asp:BoundField DataField="RowNumber" HeaderText="#" />
                                <asp:TemplateField HeaderText="Nombre Residuo/ Mercancia Peligrosa">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtNombreResiduoAdd" CssClass="form-control input-sm text" Width="100%" runat="server"></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Cantidad">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtCantidadAdd" CssClass="form-control input-sm text" Width="100%" runat="server"></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Unidad">
                                    <ItemTemplate>
                                        <asp:DropDownList ID="dropUnidadAdd" CssClass="form-control" Width="100%" runat="server"></asp:DropDownList>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Estado">
                                    <ItemTemplate>
                                        <asp:DropDownList ID="dropEstadoAdd" CssClass="form-control" Width="100%" runat="server"></asp:DropDownList>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Embalaje">
                                    <ItemTemplate>
                                        <asp:DropDownList ID="dropEmbalajeAdd" CssClass="form-control" Width="100%" runat="server"></asp:DropDownList>
                                    </ItemTemplate>
                                    <FooterStyle HorizontalAlign="Right" />
                                    <FooterTemplate>
                                        <asp:Button ID="AdicionarBtn" runat="server" Text="+ Adicionar" CssClass="form-control btn btn-success pull-left" OnClick="AdicionarBtn_Click" />
                                    </FooterTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-5">
                            <label class="control-label">ASESOR ASIGANADO</label>
                        </div>
                        <div class="col-sm-7">
                            <asp:DropDownList ID="drpAsesorAsignado" runat="server" CssClass="form-control input-sm text" AutoPostBack="true"></asp:DropDownList>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-3">
                            <label class="control-label">FECHA ASIGNADA DE VISITA</label>
                        </div>
                        <div class="col-sm-3">
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="col-sm-8">
                                        <asp:TextBox
                                            ID="txtFechaVisita"
                                            runat="server"
                                            CssClass="form-control input-sm date"
                                            OnTextChanged="txtFechaVisita_TextChanged">
                                        </asp:TextBox>
                                    </div>
                                    <div class="col-sm-4">
                                        <asp:LinkButton ID="btnShowFechaVisitaCal"
                                            CssClass="form-control btn btn-default" runat="server" OnClick="btnShowFechaVisitaCal_Click">
                                        <span aria-hidden="true" class="glyphicon glyphicon-list-alt"></span>
                                        </asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                            <asp:Calendar ID="fechaVisitaCal" runat="server" Visible="false" OnSelectionChanged="fechaVisitaCal_SelectionChanged"></asp:Calendar>

                        </div>

                        <div class="col-sm-3">
                            <label class="control-label">HORA ASIGNADA</label>
                        </div>
                        <div class="col-sm-3">
                            <asp:TextBox ID="txtHoraVisita" runat="server" CssClass="form-control input-sm" OnTextChanged="txtHoraVisita_TextChanged" AutoPostBack="true"></asp:TextBox>

                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-12">
                            <label class="control-label">ESPECIFICACIONES DE SEGURIDAD PARA INGRESO A EMPRESAS</label>
                        </div>
                    </div>
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
                    <label class="control-label">OBSERVACIONES Y RECOMENDACIONES ADICIONALES POR EL GENERADOR</label>
                </div>
                <div class="col-sm-12">
                    <asp:TextBox ID="txtObservacionesAdicionales" runat="server" CssClass="form-control input-sm text" TextMode="MultiLine" Rows="5"></asp:TextBox>
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
                            <label class="control-label">N° SOLICITUD DE VISITA</label>
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
                                                <asp:TextBox ID="txtFechaRepre" runat="server" CssClass="form-control input-sm" OnTextChanged="txtFechaRepre_TextChanged"></asp:TextBox>
                                            </div>
                                            <div class="col-sm-4">
                                                <asp:LinkButton
                                                    ID="btnFechaRepre"
                                                    CssClass="form-control btn btn-default"
                                                    runat="server"
                                                    OnClick="btnFechaRepre_Click">
                                            <span aria-hidden="true" class="glyphicon glyphicon-list-alt"></span>
                                                </asp:LinkButton>
                                            </div>
                                        </div>
                                    </div>
                                    <asp:Calendar ID="fechaRepreCal" runat="server" Visible="false" OnSelectionChanged="fechaRepreCal_SelectionChanged"></asp:Calendar>
                                </div>
                            </div>

                        </div>

                        <div class="col-sm-4">
                            <div class="col-sm-12">
                                <div class="col-sm-4">
                                    <label class="control-label">HORA</label>
                                </div>
                                <div class="col-sm-8">
                                    <asp:TextBox ID="txtHoraRepre" runat="server" CssClass="form-control input-sm text" AutoPostBack="true" OnTextChanged="txtHoraRepre_TextChanged"></asp:TextBox>
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
                            <asp:DropDownList ID="drpDepartamentoF" runat="server" CssClass="form-control input-sm" AutoPostBack="true" OnSelectedIndexChanged="drpDepartamento_SelectedIndexChanged"></asp:DropDownList>
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
            <div class="col-sm-4">
                <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar" CssClass="form-control btn btn-primary pull-left" OnClick="btnLimpiar_Click" />
            </div>
            <div class="col-sm-4">
                <asp:Button ID="btnImprimir" runat="server" Text="Imprimir" CssClass="form-control btn btn-warning pull-left" OnClick="btnImprimir_Click" />
            </div>
            <div class="col-sm-4">
                <asp:Button ID="btnGuardar" runat="server" Text="Guardar" CssClass="form-control btn btn-danger pull-right" OnClick="btnGuardar_Click" />
            </div>

        </div>
    </div>
</asp:Content>
