<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CotizacionServicio.aspx.cs" Inherits="Quimirespel.Formularios.CotizacionServicio" %>
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
                <label class="form-control">COTIZACION SERVICIO</label>
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
                        2. COSTOS DEL SERVICIO
                    </label>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                     <div class="row">
                        <div class="col-sm-4">
                            <article>
                                Quimirespel Transportadora S.A.S., empresa especializada en la Gestión Integral de Residuos y Mercancías Peligrosas tiene el gusto de cotizarles el siguiente servicio:
                            </article>
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
                                 <asp:TemplateField HeaderText="NOMBRE DEL RESIDUO">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtNombreResiduoAdd" CssClass="form-control input-sm text" Width="100%" runat="server"></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField> 
                                 <asp:TemplateField HeaderText="TRATAMIENTO">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtTratamientoAdd" CssClass="form-control input-sm text" Width="100%" runat="server"></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField> 
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
                                 <asp:TemplateField HeaderText="COSTO">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtCostoAdd" CssClass="form-control" Width="100%" runat="server"></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>                                
                                <asp:TemplateField HeaderText="COSTO TOTAL">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtCostoTotalAdd" CssClass="form-control" Width="100%" runat="server"></asp:TextBox>
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
                        3. CONDICIONES PARA EL SERVICIO
                    </label>
                </div>
            </div>  
            <div class="row">
                <div class="col-sm-12">
                    <article>
                       <strong>1. Logística de transporte</strong> 	
·Los residuos deben ser entregados por generador embalados y etiquetados de acuerdo con la NTC 1692.
·Los residuos deben ser declarado por el generador previamente al gestor de acuerdo con el decreto 1609 de 2002.		
·El generador debe enviar diligenciado el Manifiesto De Carga Para El Transporte De Residuos Y Mercancías Peligrosas al gestor, con 3 días de antelación al servicio.		
·El generador debe enviar hojas de seguridad o tarjetas de emergencia de los residuos a recolectar.
·El generador debe cumplir todas las normas legales, establecidas en el decreto 4741 del 2005.	
                     <strong>2.Costos por transporte</strong> 	
• Si la cantidad de residuos a recolectar esta (1-500 kg). Se cobra una tarifa única para el transporte.		
• Si el cliente desea una recolección conjunta con otro cliente, el transporte no tendrá costo.
                         <strong>3.Tratamientos</strong>
·En caso de no contar con las licencias ambientales para el tratamiento de un residuo en específico, contamos con aleados estratégicos para estos casos, siempre y cuando el cliente acepte esta intermediación.		
·Ofrecemos tratamientos personalizados a cada uno de los residuos, garantizando la conservación del medio ambiente o la salud humana.
                        <strong>4.Formas de pago y Validez de la oferta:</strong>
·30 días presentación de la factura.
·Contamos con las siguientes modalidades de pago: Transferencia electrónica, datafono, efectivo y crédito.
Oferta valida por 15 días calendario, a partir de la fecha
                    </article>
                 </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <label class="control-label col-sm-12 sectionheader">
                        4. NUESTRO SERVICIO INCLUYE
                    </label>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <article>
1. Acompañamiento del servicio por personal idóneo.
2. Recolección y transporte de residuos y mercancías peligrosas.
3. Pre-tratamientos y tratamientos previos a la disposición final.
4. Disposición final en celda confinada.
5. Préstamo de  embalajes para la recolección de los residuos.
6. Informe de disposición final.
                    </article>
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
            <div class="col-sm-4">
                <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar" CssClass="form-control btn btn-primary pull-left"  />
            </div>
            <div class="col-sm-4">
                <asp:Button ID="btnImprimir" runat="server" Text="Imprimir" CssClass="form-control btn btn-warning pull-left"  />
            </div>           
            <div class="col-sm-4">
                <asp:Button ID="btnGuardar" runat="server" Text="Guardar" CssClass="form-control btn btn-danger pull-right"  />
            </div>
        </div>
    </div>
</asp:Content>
