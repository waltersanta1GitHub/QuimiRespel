﻿<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TratamientoMercancias.aspx.cs" Inherits="Quimirespel.Formularios.TratamientoMercancias" %>

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

            <!-- PLANIFICACIÓN DE TRATAMIENTOS  -->
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
                    <div class="col-sm-1">
                        <label class="control-label">NOMBRE DE RESIDUO</label>
                    </div>
                    <div class="col-sm-1">
                        <label class="control-label">CANTIDAD</label>
                    </div>
                    <div class="col-sm-1">
                        <label class="control-label">UNIDAD</label>
                    </div>
                    <div class="col-sm-1">
                        <label class="control-label">TRATAMIENTO</label>
                    </div>
                    <div class="col-sm-1">
                        <label class="control-label">NOMBRE DE PERSONAL</label>
                    </div>
                    <div class="col-sm-1">
                        <label class="control-label">HORA</label>
                    </div>
                    <div class="col-sm-1">
                        <label class="control-label">FECHA</label>
                    </div>
                    <div class="col-sm-1">
                        <label class="control-label">MATERIA PRIMA</label>
                    </div>
                    <div class="col-sm-4">
                    </div>
                </div>
            </div>
            <div class="col-sm-12">
                <div class="row">
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-2">
                        <label class="control-label">NOMBRE</label>
                    </div>
                    <div class="col-sm-1">
                        <label class="control-label">CANTIDAD</label>
                    </div>
                    <div class="col-sm-1">
                        <label class="control-label">UNIDAD</label>
                    </div>
                </div>
            </div>
            <div class="col-sm-12">
                <div class="row">
                    <div class="col-sm-1">
                    </div>
                    <div class="col-sm-1">
                    </div>
                    <div class="col-sm-1">
                    </div>
                    <div class="col-sm-1">
                    </div>
                    <div class="col-sm-1">
                    </div>
                    <div class="col-sm-1">
                    </div>
                    <div class="col-sm-1">
                    </div>
                    <div class="col-sm-1">
                    </div>
                    <div class="col-sm-2">
                        <label class="control-label">REACTIVOS</label>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="txtReactivosCantidad" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="txtReactivosUnidad" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="col-sm-12">
                <div class="row">
                    <div class="col-sm-1">
                    </div>
                    <div class="col-sm-1">
                    </div>
                    <div class="col-sm-1">
                    </div>
                    <div class="col-sm-1">
                    </div>
                    <div class="col-sm-1">
                    </div>
                    <div class="col-sm-1">
                    </div>
                    <div class="col-sm-1">
                    </div>
                    <div class="col-sm-1">
                    </div>
                    <div class="col-sm-2">
                        <label class="control-label">INSUMOS</label>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="txtInsumosCantidad" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="txtInsmosUnidad" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="col-sm-12">
                <div class="row">
                    <div class="col-sm-1">
                    </div>
                    <div class="col-sm-1">
                    </div>
                    <div class="col-sm-1">
                    </div>
                    <div class="col-sm-1">
                    </div>
                    <div class="col-sm-1">
                    </div>
                    <div class="col-sm-1">
                    </div>
                    <div class="col-sm-1">
                    </div>
                    <div class="col-sm-1">
                    </div>
                    <div class="col-sm-2">
                        <label class="control-label">EPP</label>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="txtEPPCantidad" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="txtEPPUnidad" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="col-sm-12">
                <div class="row">
                    <div class="col-sm-1">
                    </div>
                    <div class="col-sm-1">
                    </div>
                    <div class="col-sm-1">
                    </div>
                    <div class="col-sm-1">
                    </div>
                    <div class="col-sm-1">
                    </div>
                    <div class="col-sm-1">
                    </div>
                    <div class="col-sm-1">
                    </div>
                    <div class="col-sm-1">
                    </div>
                    <div class="col-sm-2">
                        <label class="control-label">EMBALAJES</label>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="txtEmbalajesCantidad" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="txtEmbalajesUnidad" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                </div>
            </div>

            <!--  RESIDOS GENERADOS DESPUES DEL TRATAMIENTO  -->
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-2">
                    </div>
                    <label class="control-label col-sm-8 sectionheader">3.  RESIDOS GENERADOS DESPUES DEL TRATAMIENTO</label>
                    <div class="col-sm-2">
                    </div>
                </div>
            </div>
            <div class="col-sm-12">
                <div class="row">
                    <div class="col-sm-3">
                        <label class="control-label">NOMBRE DE RESIDUO</label>
                        <asp:TextBox ID="txtNombreResiduo" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-2">
                        <label class="control-label">ENVIO A BODEGA</label>
                        <asp:TextBox ID="txtEnvioBodega" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <label class="control-label">LOTE</label>
                        <asp:TextBox ID="txtLote" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <label class="control-label">CANTIDAD</label>
                        <asp:TextBox ID="txtCantidad" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <label class="control-label">UNIDAD</label>
                        <asp:TextBox ID="txtUnidad" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <label class="control-label">EMBALAJE</label>
                        <asp:TextBox ID="txtEmbalaje" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <label class="control-label">CANTIDAD EMBALAJE</label>
                        <asp:TextBox ID="txtCantidadEmbalaje" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-2">
                        <label class="control-label">FECHA DISPOSICION</label>
                        <asp:TextBox ID="txtFechaDisposicion" runat="server" CssClass="form-control input-sm"></asp:TextBox>
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
