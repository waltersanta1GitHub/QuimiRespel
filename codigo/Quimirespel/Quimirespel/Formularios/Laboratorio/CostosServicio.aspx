﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CostosServicio.aspx.cs" Inherits="Quimirespel.Formularios.Laboratorio.CostosServicio" %>

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

            <!-- ENSAYOS APLICADOS  -->
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-2">
                    </div>
                    <label class="control-label col-sm-8 sectionheader">2. ENSAYOS APLICADOS</label>
                    <div class="col-sm-2">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-2">
                        <label class="control-label">N° MUESTRA</label>
                        <asp:TextBox ID="txtNumMuestra" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-2">
                        <label class="control-label">TRATAMIENTO FÍSICO</label>
                        <asp:TextBox ID="txtTratamientoFisico" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-2">
                        <label class="control-label">TRATAMIENTO QUÍMICO</label>
                        <asp:TextBox ID="txtTratamientoQuimico" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-3">
                        <label class="control-label">TRATAMIENTO TÉRMICO</label>
                        <asp:TextBox ID="txtTratamientoTermico" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-3">
                        <label class="control-label">TRATAMIENTO BIÓLOGÍCO</label>
                        <asp:TextBox ID="txtTratamientoBiologico" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>

                </div>
            </div>

            <!-- COSTO DE SERVICIO  -->
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-2">
                    </div>
                    <label class="control-label col-sm-8 sectionheader">3. COSTO DE SERVICIO</label>
                    <div class="col-sm-2">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-4">

                    </div>
                    <div class="col-sm-2">
                        <label class="control-label">No. MUESTRA</label>
                    </div>
                    <div class="col-sm-3">
                        <label class="control-label">NOMBRE DE MUESTRA</label>
                    </div>
                    <div class="col-sm-3">
                        <label class="control-label">$VALOR/kg TRATADO</label>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-4">
                        <label class="control-label">COSTOS DE TRATAMIENTO</label>
                    </div>
                    <div class="col-sm-2">
                        <asp:TextBox ID="txtNumMuestraCostoTratamiento" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                    </div>
                    <div class="col-sm-3">
                        <asp:TextBox ID="txtNombreMuestraCostoTratamiento" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                    </div>
                    <div class="col-sm-3">
                        <asp:TextBox ID="txtValorCostoTratamiento" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-4">
                        <label class="control-label">COSTOS DE INSUMOS</label>
                    </div>
                    <div class="col-sm-2">
                        <asp:TextBox ID="txtNumMuestraCostoInsumos" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                    </div>
                    <div class="col-sm-3">
                        <asp:TextBox ID="txtNombreMuestraCostoInsumo" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                    </div>
                    <div class="col-sm-3">
                        <asp:TextBox ID="txtValorCostoInsumos" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-4">
                        <label class="control-label">COSTOS DE MANO DE OBRA</label>
                    </div>
                    <div class="col-sm-2">
                        <asp:TextBox ID="txtNumMuestraCostoManoObra" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                    </div>
                    <div class="col-sm-3">
                        <asp:TextBox ID="txtNombreMuestraCostoManoObra" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                    </div>
                    <div class="col-sm-3">
                        <asp:TextBox ID="txtValorCostoManoObra" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-4">
                        <label class="control-label">COSTOS DE RECOLECCIÓN Y TRANSPORTE.</label>
                    </div>
                    <div class="col-sm-2">
                        <asp:TextBox ID="txtNumMuestraRecoleccion" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                    </div>
                    <div class="col-sm-3">
                        <asp:TextBox ID="txtNombreMuestraRecoleccion" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                    </div>
                    <div class="col-sm-3">
                        <asp:TextBox ID="txtValorRecoleccion" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-4">
                        <label class="control-label">COSTOS DE DISPOSICIÓN FINAL.</label>
                    </div>
                    <div class="col-sm-2">
                        <asp:TextBox ID="txtNumMuestraDispocicionFinal" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                    </div>
                    <div class="col-sm-3">
                        <asp:TextBox ID="txtNombreMuestraDisposicionFinal" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
                    </div>
                    <div class="col-sm-3">
                        <asp:TextBox ID="txtValorDisposicionFinal" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
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
