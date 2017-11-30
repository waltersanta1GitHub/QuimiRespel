<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProgramacionServicio.aspx.cs" Inherits="Quimirespel.Formularios.Transporte.ProgramacionServicio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Image ID="calendar1" runat="server" ImageUrl="~/Imagenes/calendar-icon.png" />
    <div class="container">
        <div class="form-group">
            <div class="row">
                <label class="form-control">FORMATO PROGRAMACÍON DE SERVICIO</label>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-5">
                        <label class="col-sm-4 sectionheader">DESCRIPCIÓN</label>
                    </div>
                    <div class="col-sm-1">
                        <label class="col-sm-4 sectionheader">LUNES </label>
                    </div>
                    <div class="col-sm-1">
                        <label class="col-sm-4 sectionheader">MARTES</label>
                    </div>
                    <div class="col-sm-1">
                        <label class="col-sm-4 sectionheader">MIERCOLES</label>
                    </div>
                    <div class="col-sm-1">
                        <label class="col-sm-4 sectionheader">JUEVES</label>
                    </div>
                    <div class="col-sm-1">
                        <label class="col-sm-4 sectionheader">VIERNES</label>
                    </div>
                    <div class="col-sm-1">
                        <label class="col-sm-4 sectionheader">SÁBADO</label>
                    </div>
                    <div class="col-sm-1">
                        <label class="col-sm-4 sectionheader">DOMINGO</label>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-5">
                        <label class="col-sm-4">FECHA</label>
                    </div>
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
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-5">
                        <label class="col-sm-4">RAZÓN SOCIAL</label>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox10" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox11" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox12" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox13" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox14" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-5">
                        <label class="col-sm-4r">DIRECCION</label>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox15" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox16" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox17" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox18" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox19" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox20" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox21" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-5">
                        <label class="col-sm-4">NOMBRE DE CONTACTO</label>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox22" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox23" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox24" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox25" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox26" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox27" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox28" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-5">
                        <label class="col-sm-4">TELEFONO</label>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox29" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox30" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox31" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox32" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox33" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox34" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox35" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-5">
                        <label class="col-sm-4">PLACA DE VEHICULO</label>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox36" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox37" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox38" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox39" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox40" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox41" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox42" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-5">
                        <label class="col-sm-4">TIPO DE VEHICULO</label>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox43" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox44" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox45" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox46" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox47" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox48" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox49" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-5">
                        <label class="col-sm-4">CAPACIDAD DE VEHICULO</label>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox50" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox51" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox52" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox53" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox54" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox55" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox56" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-5">
                        <label class="col-sm-4">RUTA SELECCIONADA</label>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox57" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox58" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox59" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox60" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox61" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox62" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox63" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-5">
                        <label class="col-sm-4">HORA SALIDA</label>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox64" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox65" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox66" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox67" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox68" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox69" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox70" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-5">
                        <label class="col-sm-4">HORA LLEGADA DESTINO</label>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox71" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox72" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox73" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox74" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox75" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox76" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox77" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-5">
                        <label class="col-sm-4">NOMBRE DE CONDUCTOR</label>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox78" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox79" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox80" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox81" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox82" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox83" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox84" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-5">
                        <label class="col-sm-4">NOMBRE DE AUXILIAR</label>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox85" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox86" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox87" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox88" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox89" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox90" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox91" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-5">
                        <label class="col-sm-4">NOMBRE DE OPERARIO</label>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox92" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox93" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox94" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox95" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox96" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox97" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox98" runat="server" CssClass="form-control input-sm"></asp:TextBox>
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


