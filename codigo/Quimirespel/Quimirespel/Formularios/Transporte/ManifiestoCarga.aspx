﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManifiestoCarga.aspx.cs" Inherits="Quimirespel.Formularios.Transporte.ManifiestoCarga" %>

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

            <!-- RESIDUOS DECLARADOS POR EL GENERADOR  -->
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-2">
                    </div>
                    <label class="control-label col-sm-8 sectionheader">2. RESIDUOS DECLARADOS POR EL GENERADOR</label>
                    <div class="col-sm-2">
                    </div>
                </div>
            </div>
            <div class="col-sm-12">
                <div class="row">
                    <div class="col-sm-3">
                        <label class="control-label">NOMBRE RESIDUO/ MERCANCIA</label>
                    </div>
                    <div class="col-sm-3">
                        <label class="control-label">CANTIDAD</label>
                    </div>
                    <div class="col-sm-2">
                        <label class="control-label">UNIDAD</label>
                    </div>
                    <div class="col-sm-2">
                        <label class="control-label">EMBALAJE</label>
                    </div>
                    <div class="col-sm-2">
                        <label class="control-label">CANTIDAD DE EMBALAJE</label>
                    </div>
                </div>
            </div>
            <div class="col-sm-12">
                <div class="row">
                    <div class="col-sm-3">
                        <asp:TextBox ID="txtNombreResiduo" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                    </div>
                    <div class="col-sm-3">
                        <asp:TextBox ID="txtCantidad" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                    </div>
                    <div class="col-sm-2">
                        <asp:TextBox ID="txtUnidad" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                    </div>
                    <div class="col-sm-2">
                        <asp:TextBox ID="txtEmbalaje" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                    </div>
                    <div class="col-sm-2">
                        <asp:TextBox ID="txtCantidadEmbalaje" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                    </div>
                </div>
            </div>

            <!-- RESIDUOS CONTAMINADOS CON -->
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-2">
                    </div>
                    <label class="control-label col-sm-8 sectionheader">3. RESIDUOS CONTAMINADOS CON</label>
                    <div class="col-sm-2">
                    </div>
                </div>
            </div>
            <div class="col-sm-12">
                <div class="row">
                    <div class="col-sm-4">
                        <label class="control-label">NOMBRE Y DESCRIPCIÓN DE MERCANCÍA PELIGROSA</label>
                    </div>
                    <div class="col-sm-2">
                        <label class="control-label">N° ONU</label>
                    </div>
                    <div class="col-sm-2">
                        <label class="control-label">CLASE</label>
                    </div>
                    <div class="col-sm-2">
                        <label class="control-label">DIVISIÓN</label>
                    </div>
                    <div class="col-sm-2">
                        <label class="control-label">CARACTERÍSTICA</label>
                    </div>
                </div>
            </div>
            <div class="col-sm-12">
                <div class="row">
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtNombreMercancia" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                    </div>
                    <div class="col-sm-3">
                        <asp:TextBox ID="txtNumONU" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                    </div>
                    <div class="col-sm-2">
                        <asp:TextBox ID="txtClase" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                    </div>
                    <div class="col-sm-2">
                        <asp:TextBox ID="txtDivision" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                    </div>
                    <div class="col-sm-2">
                        <asp:TextBox ID="txtCaracteristica" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                    </div>
                </div>
            </div>

            <!--TIPOS DE RIESGO-->
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-2">
                    </div>
                    <label class="control-label col-sm-8 sectionheader">4. TIPOS DE RIESGO</label>
                    <div class="col-sm-2">
                    </div>
                </div>
            </div>
            <div class="col-sm-12">
                <div class="row">
                    <div class="col-sm-2">
                        <label class="control-label">Salud</label>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="txtSalud" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-2">
                        <label class="control-label">INFLAMABILIDAD</label>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="txtInflamabilidad" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-2">
                        <label class="control-label">INFLAMABILIDAD</label>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="txtInflamabilidadDos" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-2">
                        <label class="control-label">TOXICIDAD</label>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="txtToxicidad" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="col-sm-12">
                <div class="row">
                    <div class="col-sm-12">
                        <label class="control-label">OBSERVACIONES</label>
                        <asp:TextBox ID="txtObservaciones" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
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
