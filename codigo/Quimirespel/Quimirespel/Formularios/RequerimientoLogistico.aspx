<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RequerimientoLogistico.aspx.cs" Inherits="Quimirespel.Formularios.RequerimientoLogistico" %>

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

            <!-- INFORMACION DEL SERVICIO -->
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-2">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-3">
                    </div>
                    <label class="control-label col-sm-6 sectionheader">
                        2. INFORMACION DEL SERVICIO
                    </label>
                    <div class="col-sm-3">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
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
            </div>


            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-2">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-3">
                    </div>
                    <label class="control-label col-sm-6 sectionheader">
                        3. CLASIFICACIÓN, ALMACENAMIENTO Y LIMPIEZA
                    </label>
                    <div class="col-sm-3">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <asp:GridView ID="GridView2" runat="server"></asp:GridView>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-4">
                            <label class="control-label">CLASE/DIVISIÓN</label>
                        </div>
                        <div class="col-sm-8">
                            <label class="control-label">NOMBRE Y DESCRIPCIÓN</label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-4">
                            <label class="control-label">4/4.1</label>
                        </div>
                        <div class="col-sm-8">
                            <asp:TextBox ID="txtNombreDescripcion" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-4">
                            <label class="control-label">RÓTULO</label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-4">
                        </div>
                        <div class="col-sm-8">
                            <label class="control-label">HERRAMIENTAS PARA LA PRESTACIÓN DEL SERVICIO</label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-4">
                        </div>
                        <div class="col-sm-2">
                            <label class="control-label">RECURSO</label>
                        </div>
                        <div class="col-sm-2">
                            <label class="control-label">CANTIDAD</label>
                        </div>
                        <div class="col-sm-2">
                            <label class="control-label">RECURSO</label>
                        </div>
                        <div class="col-sm-2">
                            <label class="control-label">DESCRIPCIÓN</label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-4">
                        </div>
                        <div class="col-sm-2">
                            <label class="control-label">ROTULOS</label>
                        </div>
                        <div class="col-sm-2">
                            <asp:TextBox ID="txtCantidadRotulos" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                        <div class="col-sm-2">
                            <label class="control-label">KIT DE ASEO</label>
                        </div>
                        <div class="col-sm-2">
                            <asp:TextBox ID="txtDescripcionKitAseo" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-4">
                        </div>
                        <div class="col-sm-2">
                            <label class="control-label">ETIQUETAS</label>
                        </div>
                        <div class="col-sm-2">
                            <asp:TextBox ID="txtCantidadEtiquetas" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                        <div class="col-sm-2">
                            <label class="control-label">KIT DE DERRAME</label>
                        </div>
                        <div class="col-sm-2">
                            <asp:TextBox ID="txtDescripcionKitDerrame" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-4">
                        </div>
                        <div class="col-sm-2">
                            <label class="control-label">PERSONAL</label>
                        </div>
                        <div class="col-sm-2">
                            <asp:TextBox ID="txtCantidadPersonal" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                        <div class="col-sm-2">
                            <label class="control-label">EPP</label>
                        </div>
                        <div class="col-sm-2">
                            <asp:TextBox ID="txtDescripcionEPP" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-4">
                        </div>
                        <div class="col-sm-2">
                        </div>
                        <div class="col-sm-2">
                        </div>
                        <div class="col-sm-2">
                            <label class="control-label">EMBALAJE</label>
                        </div>
                        <div class="col-sm-2">
                            <asp:TextBox ID="txtDescripcionEmbalaje" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-2">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-3">
                    </div>
                    <label class="control-label col-sm-6 sectionheader">
                        4. RECOLECCIÓN Y TRANSPORTE
                    </label>
                    <div class="col-sm-3">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <asp:GridView ID="GridView3" runat="server"></asp:GridView>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-4">
                            <label class="control-label">PLACA N° ONU</label>
                        </div>
                        <div class="col-sm-8">
                            <label class="control-label">NOMBRE Y DESCRIPCIÓN</label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-4">
                            <asp:TextBox ID="txtPlaca" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                        <div class="col-sm-8">
                            <asp:TextBox ID="txtNombreDescripcionCuatro" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-2">
                            <label class="control-label">CLASE</label>
                        </div>
                        <div class="col-sm-2">
                            <label class="control-label">DIVISION</label>
                        </div>
                        <div class="col-sm-8">
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-2">
                            <asp:TextBox ID="txtClase" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                        <div class="col-sm-2">
                            <asp:TextBox ID="txtDescripcion" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                        <div class="col-sm-8">
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-4">
                            <label class="control-label">RÓTULO</label>
                        </div>
                        <div class="col-sm-8">
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-4">
                        </div>
                        <div class="col-sm-8">
                            <label class="control-label">HERRAMIENTAS PARA LA PRESTACIÓN DEL SERVICIO</label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-4">
                        </div>
                        <div class="col-sm-2">
                            <label class="control-label">RECURSO</label>
                        </div>
                        <div class="col-sm-2">
                            <label class="control-label">CANTIDAD</label>
                        </div>
                        <div class="col-sm-2">
                            <label class="control-label">RECURSO</label>
                        </div>
                        <div class="col-sm-2">
                            <label class="control-label">DESCRIPCIÓN</label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-4">
                        </div>
                        <div class="col-sm-2">
                            <label class="control-label">ROTULOS</label>
                        </div>
                        <div class="col-sm-2">
                            <asp:TextBox ID="txtRotulosCuatro" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                        <div class="col-sm-2">
                            <label class="control-label">KIT DE ASEO</label>
                        </div>
                        <div class="col-sm-2">
                            <asp:TextBox ID="txtKitAseoCuatro" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-4">
                        </div>
                        <div class="col-sm-2">
                            <label class="control-label">PLACA N° ONU</label>
                        </div>
                        <div class="col-sm-2">
                            <asp:TextBox ID="txtCantidadPlaca" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                        <div class="col-sm-2">
                            <label class="control-label">KIT DE DERRAME</label>
                        </div>
                        <div class="col-sm-2">
                            <asp:TextBox ID="txtDescripcionKitDerrameCuatro" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-4">
                        </div>
                        <div class="col-sm-2">
                            <label class="control-label">PERSONAL</label>
                        </div>
                        <div class="col-sm-2">
                            <asp:TextBox ID="txtCantidadPersonalCuatro" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                        <div class="col-sm-2">
                            <label class="control-label">EPP</label>
                        </div>
                        <div class="col-sm-2">
                            <asp:TextBox ID="txtDescripcionEPPCuatro" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-4">
                        </div>
                        <div class="col-sm-2">
                        </div>
                        <div class="col-sm-2">
                        </div>
                        <div class="col-sm-2">
                            <label class="control-label">EMBALAJE</label>
                        </div>
                        <div class="col-sm-2">
                            <asp:TextBox ID="txtDescripcinEmbalajeCuatro" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-4">
                        </div>
                        <div class="col-sm-4">
                            <label class="control-label">TIPO DE VEHICULO</label>
                        </div>
                        <div class="col-sm-4">
                            <label class="control-label">CAPACIDAD DE VEHICULO</label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-4">
                        </div>
                        <div class="col-sm-4">
                            <asp:TextBox ID="txtTipoVehiculo" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                        <div class="col-sm-4">
                            <asp:TextBox ID="txtCapacidadVehiculo" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>


            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-2">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-3">
                    </div>
                    <label class="control-label col-sm-6 sectionheader">
                        5. SUCCIÓN, LIMPIEZA, RECOLECCIÓN Y TRANSPORTE.
                    </label>
                    <div class="col-sm-3">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <asp:GridView ID="GridView4" runat="server"></asp:GridView>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-4">
                            <label class="control-label">PLACA N° ONU</label>
                        </div>
                        <div class="col-sm-8">
                            <label class="control-label">NOMBRE Y DESCRIPCIÓN</label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-4">
                            <asp:TextBox ID="txtPlacaCinco" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                        <div class="col-sm-8">
                            <asp:TextBox ID="txtNombreDescripcionCinco" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-2">
                            <label class="control-label">CLASE</label>
                        </div>
                        <div class="col-sm-2">
                            <label class="control-label">DIVISION</label>
                        </div>
                        <div class="col-sm-8">
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-2">
                            <asp:TextBox ID="txtClaseCinco" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                        <div class="col-sm-2">
                            <asp:TextBox ID="txtDivisionCinco" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                        <div class="col-sm-8">
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-4">
                            <label class="control-label">RÓTULO</label>
                        </div>
                        <div class="col-sm-8">
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-4">
                        </div>
                        <div class="col-sm-8">
                            <label class="control-label">HERRAMIENTAS PARA LA PRESTACIÓN DEL SERVICIO</label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-4">
                        </div>
                        <div class="col-sm-3">
                            <label class="control-label">RECURSO</label>
                        </div>
                        <div class="col-sm-5">
                            <label class="control-label">DESCRIPCION</label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-4">
                        </div>
                        <div class="col-sm-3">
                            <label class="control-label">KIT DE DERRAME</label>
                        </div>
                        <div class="col-sm-5">
                            <asp:TextBox ID="txtDescripcionKitDerrameCinco" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-4">
                        </div>
                        <div class="col-sm-3">
                            <label class="control-label">EPP </label>
                        </div>
                        <div class="col-sm-5">
                            <asp:TextBox ID="txtDescripcionEPPeCinco" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-4">
                        </div>
                        <div class="col-sm-3">
                            <label class="control-label">KIT ASEO</label>
                        </div>
                        <div class="col-sm-5">
                            <asp:TextBox ID="txtDescripcionKitAseoCinco" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-4">
                        </div>
                        <div class="col-sm-3">
                            <label class="control-label">MOTOBOMBA</label>
                        </div>
                        <div class="col-sm-5">
                            <asp:TextBox ID="txtDescripcionMotoBomba" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-4">
                        </div>
                        <div class="col-sm-3">
                            <label class="control-label">EMBALAJE</label>
                        </div>
                        <div class="col-sm-5">
                            <asp:TextBox ID="txtDescripcionEmbalajeCinco" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-4">
                        </div>
                        <div class="col-sm-3">
                        </div>
                        <div class="col-sm-2">
                            <label class="control-label">DESCRIPCIÓN</label>
                        </div>
                        <div class="col-sm-3">
                            <label class="control-label">DIÁMETRO INTERNO</label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-4">
                        </div>
                        <div class="col-sm-3">
                            <label class="control-label">MANGUERA</label>
                        </div>
                        <div class="col-sm-2">
                            <asp:TextBox ID="txtDescripcionManguera" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                        <div class="col-sm-1">
                            <label class="control-label">in</label>
                        </div>
                        <div class="col-sm-2">
                            <asp:TextBox ID="txtDiametroManguera" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-2">
                            <label class="control-label">RECURSO</label>
                        </div>
                        <div class="col-sm-2">
                            <label class="control-label">CANTIDAD</label>
                        </div>
                        <div class="col-sm-4">
                            <label class="control-label">TIPO DE VEHÍCULO</label>
                        </div>
                        <div class="col-sm-4">
                            <label class="control-label">CAPACIDAD DE VEHICULO</label>
                        </div>
                    </div>
                </div>
            </div>
             <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-2">
                            <label class="control-label">RÓTULO</label>
                        </div>
                        <div class="col-sm-2">
                            <asp:TextBox ID="txtCantidadRotuloCinco" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                        <div class="col-sm-4">
                            <asp:TextBox ID="txtTipoVehiculoCinco" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                        <div class="col-sm-4">
                            <asp:TextBox ID="txtCapacidadVehiculoCinco" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-2">
                            <label class="control-label">PLACA N° ONU</label>
                        </div>
                        <div class="col-sm-2">
                            <asp:TextBox ID="txtCantidadPlacaCinco" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                        <div class="col-sm-8">
                        </div>
                    </div>
                </div>
            </div> 
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-2">
                            <label class="control-label">PERSONAL</label>
                        </div>
                        <div class="col-sm-2">
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                        <div class="col-sm-8">
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

