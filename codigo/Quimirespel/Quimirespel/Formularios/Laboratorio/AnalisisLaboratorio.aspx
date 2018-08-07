<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AnalisisLaboratorio.aspx.cs" Inherits="Quimirespel.Formularios.Laboratorio.AnalisisLaboratorio" %>
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
                                <asp:TextBox ID="txtBuscar1" runat="server" CssClass="form-control input-sm" placeholder="Buscar Num Visita">
                                </asp:TextBox>
                            </div>
                            <div class="col-sm-3">
                                <asp:LinkButton ID="btnBuscar1" runat="server" CssClass="form-control btn btn-default pull-right">
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
                            <asp:TextBox ID="txtCodCIIU1" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                        <div class="col-sm-8">
                            <label class="control-label">DESCRIPCIÓN</label>
                            <asp:DropDownList ID="drpCodigoCIIU1" runat="server" CssClass="form-control input-sm" AutoPostBack="true"></asp:DropDownList>
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
                            <asp:TextBox ID="txtRazonSocial1" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-4">
                            <label class="control-label">NIT</label>
                            <asp:TextBox ID="txtNit1" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                        <div class="col-sm-4">
                            <label class="control-label">DEPARTAMENTO</label>
                            <asp:DropDownList ID="drpDepartamentoH1" runat="server" CssClass="form-control input-sm" AutoPostBack="true"
                                >
                            </asp:DropDownList>
                        </div>
                        <div class="col-sm-4">
                            <label class="control-label">MUNICIPIO</label>
                            <asp:DropDownList ID="drpCiudadH1" runat="server" CssClass="form-control input-sm" AutoPostBack="true"></asp:DropDownList>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-5">
                            <label class="control-label">TÉLEFONO</label>
                            <asp:TextBox ID="txtTelefonoH1" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                        <div class="col-sm-7">
                            <label class="control-label">DIRECCIÓN</label>
                            <asp:TextBox ID="txtDireccionH1" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-4">
                            <label class="control-label">NOMBRE DE CONTACTO</label>
                            <asp:TextBox ID="txtNombreContactoH1" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                        <div class="col-sm-4">
                            <label class="control-label">CELULAR</label>
                            <asp:TextBox ID="txtCelularH1" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                        <div class="col-sm-4">
                            <label class="control-label">E-MAIL</label>
                            <asp:TextBox ID="txtEmailH1" CssClass="form-control input-sm" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>

            <!-- CARACTERIZACION DE LA MUESTRA  -->
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-2">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <label class="control-label col-sm-12 sectionheader">
                        2. CARACTEIZACION DE LA MUESTRA
                    </label>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <asp:GridView ID="CaracterizaGrid1" Width="100%" runat="server" ShowFooter="true"
                            AutoGenerateColumns="false" >
                            <Columns>
                                <asp:BoundField DataField="RowNumber" HeaderText="#" />
                                <asp:TemplateField HeaderText="N. MUESTRA">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtNumMuestraAdd1" CssClass="form-control input-sm text" Width="100%" runat="server"></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="NOMBRE DE MUESTRA">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtNombreMuestraAdd1" CssClass="form-control input-sm text" Width="100%" runat="server"></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="FÍSICOS">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtFisicosAdd1" CssClass="form-control" Width="100%" runat="server"></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="PELIGROSIDAD">
                                    <ItemTemplate>
                                        <asp:DropDownList ID="drpPeligrosidadAdd1" CssClass="form-control" Width="100%" runat="server"></asp:DropDownList>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                 <asp:TemplateField HeaderText="COMPOSICIÓN TÓXICA">
                                    <ItemTemplate>
                                        <asp:DropDownList ID="drpComposicionAdd1" CssClass="form-control" Width="100%" runat="server"></asp:DropDownList>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                 <asp:TemplateField HeaderText="FECHA RECEPCIÓN">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtFechaRecepcionAdd1" CssClass="form-control" Width="100%" runat="server"></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="FECHA ANÁLISIS">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtFechaAnalisisAdd1" CssClass="form-control" Width="100%" runat="server"></asp:TextBox>
                                    </ItemTemplate>
                                    <FooterStyle HorizontalAlign="Right" />
                                    <FooterTemplate>
                                        <asp:Button ID="AdicionarCaracterizaBtn" runat="server" Text="+ Adicionar" CssClass="form-control btn btn-success pull-left"/>
                                    </FooterTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>   
            <!-- ANALISIS FISICO  -->
            <div class="row">
                <div class="col-sm-12">
                    <label class="control-label col-sm-12 sectionheader">3. ANÁLISIS FÍSICO</label>
                </div>
            </div>           
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <asp:GridView ID="analisisFisicoGrid" Width="100%" runat="server" ShowFooter="true"
                            AutoGenerateColumns="false" >
                            <Columns>
                                <asp:BoundField DataField="RowNumber" HeaderText="#" />
                                <asp:TemplateField HeaderText="N. MUESTRA">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtNumMuestraFisicoAdd1" CssClass="form-control input-sm text" Width="100%" runat="server"></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="NOMBRE DE MUESTRA">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtNombreMuestraFisicoAdd1" CssClass="form-control input-sm text" Width="100%" runat="server"></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="CANTIDAD">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtCantidadFisicoAdd1" CssClass="form-control" Width="100%" runat="server"></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="UNIDAD">
                                    <ItemTemplate>
                                        <asp:DropDownList ID="drpUnidadFisicaAdd1" CssClass="form-control" Width="100%" runat="server"></asp:DropDownList>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                 <asp:TemplateField HeaderText="ESTADO">
                                    <ItemTemplate>
                                        <asp:DropDownList ID="drpEstadoFisicaAdd1" CssClass="form-control" Width="100%" runat="server"></asp:DropDownList>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                 <asp:TemplateField HeaderText="TIPO DE TRATAMIENTO">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtTipoTratamientoFisicoAdd1" CssClass="form-control" Width="100%" runat="server"></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="INSUMOS">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtInsumosFisicoAdd1" CssClass="form-control" Width="100%" runat="server"></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="CANTIDAD">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtCantidadFisicoBAdd1" CssClass="form-control" Width="100%" runat="server"></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="UNIDAD">
                                    <ItemTemplate>
                                        <asp:DropDownList ID="drpUnidadFisicaBAdd1" CssClass="form-control" Width="100%" runat="server"></asp:DropDownList>
                                    </ItemTemplate>
                                    <FooterStyle HorizontalAlign="Right" />
                                    <FooterTemplate>
                                        <asp:Button ID="AdicionarFisicoBtn" runat="server" Text="+ Adicionar" CssClass="form-control btn btn-success pull-left" />
                                    </FooterTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div> 

            <!-- ANÁLISIS QUÍMICO  -->
            <div class="row">
                <div class="col-sm-12">
                    <label class="control-label col-sm-12 sectionheader">4. ANÁLISIS QUÍMICO</label>
                </div>
            </div>           
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <asp:GridView ID="analisisQuimicoGrid" Width="100%" runat="server" ShowFooter="true"
                            AutoGenerateColumns="false" >
                            <Columns>
                                <asp:BoundField DataField="RowNumber" HeaderText="#" />
                                <asp:TemplateField HeaderText="N. MUESTRA">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtNumMuestraQuimicoAdd1" CssClass="form-control input-sm text" Width="100%" runat="server"></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="NOMBRE DE MUESTRA">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtNombreMuestraQuimicoAdd1" CssClass="form-control input-sm text" Width="100%" runat="server"></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="CANTIDAD">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtCantidadQuimicoAdd1" CssClass="form-control" Width="100%" runat="server"></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="UNIDAD">
                                    <ItemTemplate>
                                        <asp:DropDownList ID="drpUnidadQuimicoAdd1" CssClass="form-control" Width="100%" runat="server"></asp:DropDownList>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                 <asp:TemplateField HeaderText="ESTADO">
                                    <ItemTemplate>
                                        <asp:DropDownList ID="drpEstadoQuimicoAdd1" CssClass="form-control" Width="100%" runat="server"></asp:DropDownList>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                 <asp:TemplateField HeaderText="TIPO DE TRATAMIENTO">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtTipoTratamientoQuimicoAdd1" CssClass="form-control" Width="100%" runat="server"></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="INSUMOS">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtInsumosQuimicoAdd1" CssClass="form-control" Width="100%" runat="server"></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="CANTIDAD">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtCantidadQuimicoBAdd1" CssClass="form-control" Width="100%" runat="server"></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="UNIDAD">
                                    <ItemTemplate>
                                        <asp:DropDownList ID="drpUnidadQuimicoBAdd1" CssClass="form-control" Width="100%" runat="server"></asp:DropDownList>
                                    </ItemTemplate>
                                    <FooterStyle HorizontalAlign="Right" />
                                    <FooterTemplate>
                                        <asp:Button ID="AdicionarQuimicoBtn" runat="server" Text="+ Adicionar" CssClass="form-control btn btn-success pull-left" />
                                    </FooterTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div> 

            <!-- ANÁLISIS TÉRMICO  -->
            <div class="row">
                <div class="col-sm-12">
                    <label class="control-label col-sm-12 sectionheader">5. ANÁLISIS TÉRMICO</label>
                </div>
            </div>           
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <asp:GridView ID="analisisTermicoGrid" Width="100%" runat="server" ShowFooter="true"
                            AutoGenerateColumns="false" >
                            <Columns>
                                <asp:BoundField DataField="RowNumber" HeaderText="#" />
                                <asp:TemplateField HeaderText="N. MUESTRA">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtNumMuestraTermicoAdd1" CssClass="form-control input-sm text" Width="100%" runat="server"></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="NOMBRE DE MUESTRA">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtNombreMuestraTermicoAdd1" CssClass="form-control input-sm text" Width="100%" runat="server"></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="CANTIDAD">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtCantidadTermicoAdd1" CssClass="form-control" Width="100%" runat="server"></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="UNIDAD">
                                    <ItemTemplate>
                                        <asp:DropDownList ID="drpUnidadTermicoAdd1" CssClass="form-control" Width="100%" runat="server"></asp:DropDownList>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                 <asp:TemplateField HeaderText="ESTADO">
                                    <ItemTemplate>
                                        <asp:DropDownList ID="drpEstadoTermicoAdd1" CssClass="form-control" Width="100%" runat="server"></asp:DropDownList>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                 <asp:TemplateField HeaderText="TIPO DE TRATAMIENTO">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtTipoTratamientoTermicoAdd1" CssClass="form-control" Width="100%" runat="server"></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="INSUMOS">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtInsumosTermicosAdd1" CssClass="form-control" Width="100%" runat="server"></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="CANTIDAD">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtCantidadTermicoBAdd1" CssClass="form-control" Width="100%" runat="server"></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="UNIDAD">
                                    <ItemTemplate>
                                        <asp:DropDownList ID="drpUnidadTermicoBAdd1" CssClass="form-control" Width="100%" runat="server"></asp:DropDownList>
                                    </ItemTemplate>
                                    <FooterStyle HorizontalAlign="Right" />
                                    <FooterTemplate>
                                        <asp:Button ID="AdicionarTermicoBtn" runat="server" Text="+ Adicionar" CssClass="form-control btn btn-success pull-left"  />
                                    </FooterTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div> 

             <!-- ANÁLISIS BIOLÓGICO  -->
            <div class="row">
                <div class="col-sm-12">
                    <label class="control-label col-sm-12 sectionheader">6. ANÁLISIS BIOLÓGICO</label>
                </div>
            </div>           
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <asp:GridView ID="analisisBiologicoGrid" Width="100%" runat="server" ShowFooter="true"
                            AutoGenerateColumns="false" >
                            <Columns>
                                <asp:BoundField DataField="RowNumber" HeaderText="#" />
                                <asp:TemplateField HeaderText="N. MUESTRA">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtNumMuestraBiologicoAdd1" CssClass="form-control input-sm text" Width="100%" runat="server"></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="NOMBRE DE MUESTRA">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtNombreMuestraBiologicoAdd1" CssClass="form-control input-sm text" Width="100%" runat="server"></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="CANTIDAD">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtCantidadBiologicoAdd1" CssClass="form-control" Width="100%" runat="server"></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="UNIDAD">
                                    <ItemTemplate>
                                        <asp:DropDownList ID="drpUnidadBiologicoAdd1" CssClass="form-control" Width="100%" runat="server"></asp:DropDownList>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                 <asp:TemplateField HeaderText="ESTADO">
                                    <ItemTemplate>
                                        <asp:DropDownList ID="drpEstadoBiologicoAdd1" CssClass="form-control" Width="100%" runat="server"></asp:DropDownList>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                 <asp:TemplateField HeaderText="TIPO DE TRATAMIENTO">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtTipoTratamientoBiologicoAdd1" CssClass="form-control" Width="100%" runat="server"></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="INSUMOS">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtInsumosBiologicoAdd1" CssClass="form-control" Width="100%" runat="server"></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="CANTIDAD">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtCantidadBiologicoBAdd1" CssClass="form-control" Width="100%" runat="server"></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="UNIDAD">
                                    <ItemTemplate>
                                        <asp:DropDownList ID="drpUnidadBiologicoBAdd1" CssClass="form-control" Width="100%" runat="server"></asp:DropDownList>
                                    </ItemTemplate>
                                    <FooterStyle HorizontalAlign="Right" />
                                    <FooterTemplate>
                                        <asp:Button ID="AdicionarBiologicoBtn" runat="server" Text="+ Adicionar" CssClass="form-control btn btn-success pull-left" />
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
                    <label class="control-label col-sm-12 sectionheader">7. INFORMACIÓN DEL REPRESENTANTE DE QUIMIRESPEL TRANSPORTADORA S.A.S</label>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-3">
                            <label class="control-label">DILIGENCIADO POR</label>
                        </div>
                        <div class="col-sm-3">
                            <asp:TextBox ID="txtDiligenciadoPorRepre1" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                        </div>
                        <div class="col-sm-3">
                            <label class="control-label">N° SOLICITUD DE VISITA</label>
                        </div>
                        <div class="col-sm-3">
                            <asp:TextBox ID="txtNumSolicitudVisitaRepre1" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
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
                                    <asp:TextBox ID="txtCargoRepre1" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
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
                                                <asp:TextBox ID="txtFechaRepre1" runat="server" CssClass="form-control input-sm" ></asp:TextBox>
                                            </div>
                                            <div class="col-sm-4">
                                                <asp:LinkButton
                                                    ID="btnFechaRepre1"
                                                    CssClass="form-control btn btn-default"
                                                    runat="server"                                                    >
                                            <span aria-hidden="true" class="glyphicon glyphicon-list-alt"></span>
                                                </asp:LinkButton>
                                            </div>
                                        </div>
                                    </div>
                                    <asp:Calendar ID="fechaRepreCal1" runat="server" Visible="false"></asp:Calendar>
                                </div>
                            </div>

                        </div>

                        <div class="col-sm-4">
                            <div class="col-sm-12">
                                <div class="col-sm-4">
                                    <label class="control-label">HORA</label>
                                </div>
                                <div class="col-sm-8">
                                    <asp:TextBox ID="txtHoraRepre1" runat="server" CssClass="form-control input-sm text" AutoPostBack="true" ></asp:TextBox>
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
                            <asp:TextBox ID="txtTelefonoRepre1" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                        </div>
                        <div class="col-sm-2">
                            <label class="control-label">EXT</label>
                        </div>
                        <div class="col-sm-2">
                            <asp:TextBox ID="txtExtencioRepre1" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                        </div>
                        <div class="col-sm-2">
                            <label class="control-label">N° CELULAR</label>
                        </div>
                        <div class="col-sm-2">
                            <asp:TextBox ID="txtCelularRepre1" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                        </div>
                    </div>
                </div>

                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-2">
                            <label class="control-label">DEPARTAMENTO</label>
                        </div>
                        <div class="col-sm-4">
                            <asp:DropDownList ID="drpDepartamentoF1" runat="server" CssClass="form-control input-sm" AutoPostBack="true"></asp:DropDownList>
                        </div>
                        <div class="col-sm-2">
                            <label class="control-label">MUNICIPIO</label>
                        </div>
                        <div class="col-sm-4">
                            <asp:DropDownList ID="drpCiudadF1" runat="server" CssClass="form-control input-sm" AutoPostBack="true"></asp:DropDownList>
                        </div>
                    </div>
                </div>

                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-2">
                            <label class="control-label">DIRECCIÓN ADMINISTRATIVA</label>
                        </div>
                        <div class="col-sm-4">
                            <asp:TextBox ID="txtDirAdministrativa1" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                        </div>
                        <div class="col-sm-2">
                            <label class="control-label">DIRECCIÓN OPERATIVA</label>
                        </div>
                        <div class="col-sm-4">
                            <asp:TextBox ID="txtDirOperativa1" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>       

        </div>
        <div class="row">
            <div class="col-sm-4">
                <asp:Button ID="btnLimpiar1" runat="server" Text="Limpiar" CssClass="form-control btn btn-primary pull-left"  />
            </div>
            <div class="col-sm-4">
                <asp:Button ID="btnImprimir1" runat="server" Text="Imprimir" CssClass="form-control btn btn-warning pull-left"  />
            </div>
            <div class="col-sm-4">
                <asp:Button ID="btnGuardar1" runat="server" Text="Guardar" CssClass="form-control btn btn-danger pull-right" />
            </div>

        </div>
    </div>
</asp:Content>
