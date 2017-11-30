<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListaVerificacionVehiculo.aspx.cs" Inherits="Quimirespel.Formularios.Transporte.ListaVerificacionVehiculo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Image ID="calendar1" runat="server" ImageUrl="~/Imagenes/calendar-icon.png" />
    <div class="container">
        <div class="form-group">
            <div class="row">
                <label class="form-control">FORMATO PROGRAMACÍON DE SERVICIO</label>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-2">
                        <label class="col-sm-4 sectionheader">ITEM</label>
                    </div>
                    <div class="col-sm-8">
                        <label class="col-sm-4 sectionheader">1. LISTA DE VERIFICACIÓN</label>
                    </div>
                    <div class="col-sm-1">
                        <label class="col-sm-4 sectionheader">SI</label>
                    </div>
                    <div class="col-sm-1">
                        <label class="col-sm-4 sectionheader">NO</label>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-2">
                        <label class="col-sm-4 ">1</label>
                    </div>
                    <div class="col-sm-8">
                        <label class="col-sm-4 ">DOCUMENTOS DEL TRANSPORTADOR</label>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-2">
                        <label class="col-sm-4 ">1.1</label>
                    </div>
                    <div class="col-sm-8">
                        <label class="col-sm-4 ">¿El personal porta la cedula de ciudadanía?</label>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-2">
                        <label class="col-sm-4 ">1.2</label>
                    </div>
                    <div class="col-sm-8">
                        <label class="col-sm-4 ">¿El conductor porta la licencia vigente de conducir de acuerdo a la categoría autorizada?</label>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-2">
                        <label class="col-sm-4 ">1.3</label>
                    </div>
                    <div class="col-sm-8">
                        <label class="col-sm-4 ">¿El personal se encuentra capacitado para el transporte de residuos y mercancías peligrosos?</label>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-2">
                        <label class="col-sm-4 ">1.4</label>
                    </div>
                    <div class="col-sm-8">
                        <label class="col-sm-4 ">¿El personal porta el certificado de capacitación para el transporte de residuos y mercancías peligrosos?</label>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox10" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-2">
                        <label class="col-sm-4 ">1.5</label>
                    </div>
                    <div class="col-sm-8">
                        <label class="col-sm-4 ">¿El personal porta el certificado de seguridad social vigente, para el ingreso a las industrias?</label>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox11" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox12" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-2">
                        <label class="col-sm-4 ">1.6</label>
                    </div>
                    <div class="col-sm-8">
                        <label class="col-sm-4 ">¿El conductor porta Manifiesto de Carga para El Transporte y Recolección de Residuos y Mercancías Peligrosas?</label>
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
                    <div class="col-sm-2">
                        <label class="col-sm-4 ">1.7</label>
                    </div>
                    <div class="col-sm-8">
                        <label class="col-sm-4 ">¿El conductor porta el Registro Nacional De Transporte De Carga?</label>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox15" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox16" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-2">
                        <label class="col-sm-4 ">1.8</label>
                    </div>
                    <div class="col-sm-8">
                        <label class="col-sm-4 ">¿El conductor porta Hojas De Seguridad o Tarjetas de Emergencias, de las mercancías a transportar? </label>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox17" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox18" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-2">
                        <label class="col-sm-4 ">1.9</label>
                    </div>
                    <div class="col-sm-8">
                        <label class="col-sm-4 ">¿El conductor porta la Planilla Para El Transporte De Sustancias Químicas?</label>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox19" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox20" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-2">
                        <label class="col-sm-4 ">1.10</label>
                    </div>
                    <div class="col-sm-8">
                        <label class="col-sm-4 ">¿El conductor porta con el Plan De Cargue y Transporte de Residuos y Mercancías Peligrosas?</label>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox21" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox22" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-2">
                        <label class="col-sm-4 ">1.11</label>
                    </div>
                    <div class="col-sm-8">
                        <label class="col-sm-4 ">¿El conductor porta el Plan Continencia Para Derrame De Residuos y Mercancías Peligrosas?</label>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox23" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox24" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-2">
                        <label class="col-sm-4 ">1.12</label>
                    </div>
                    <div class="col-sm-8">
                        <label class="col-sm-4 ">¿El conductor porta el Procedimiento Para Cargue y Descargue De Residuos y Mercancías Peligrosas?</label>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox25" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox26" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-2">
                        <label class="col-sm-4 ">1.13</label>
                    </div>
                    <div class="col-sm-8">
                        <label class="col-sm-4 ">¿El conductor porta con las Licencias Ambientales de la empresa gestora?</label>
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
                    <div class="col-sm-2">
                        <label class="col-sm-4 ">2</label>
                    </div>
                    <div class="col-sm-8">
                        <label class="col-sm-4 ">DOCUMENTOS DEL VEHÍCULO</label>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox29" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox30" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-2">
                        <label class="col-sm-4 ">2.1</label>
                    </div>
                    <div class="col-sm-8">
                        <label class="col-sm-4 ">¿El vehículo porta el SOAT vigente?</label>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox31" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox32" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-2">
                        <label class="col-sm-4 ">2.2</label>
                    </div>
                    <div class="col-sm-8">
                        <label class="col-sm-4 ">¿El vehículo porta el certificado de Revisión Técnico Mecánica vigente?</label>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox33" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox34" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-2">
                        <label class="col-sm-4 ">2.3</label>
                    </div>
                    <div class="col-sm-8">
                        <label class="col-sm-4 ">¿El vehículo porta la Tarjeta De Operación De Carga?</label>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox35" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox36" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-2">
                        <label class="col-sm-4 ">2.4</label>
                    </div>
                    <div class="col-sm-8">
                        <label class="col-sm-4 ">¿El vehículo porta con Póliza De Seguros Contractual?</label>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox37" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox38" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-2">
                        <label class="col-sm-4 ">2.5</label>
                    </div>
                    <div class="col-sm-8">
                        <label class="col-sm-4 ">¿El vehículo porta la Tarjeta De Propiedad?</label>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox39" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox40" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-2">
                        <label class="col-sm-4 ">2.6</label>
                    </div>
                    <div class="col-sm-8">
                        <label class="col-sm-4 ">¿El vehículo porta con los rótulos de identificación correspondiente a la clase de peligrosidad de las sustancias a transportar?</label>
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
                    <div class="col-sm-2">
                        <label class="col-sm-4 ">2.7</label>
                    </div>
                    <div class="col-sm-8">
                        <label class="col-sm-4 ">¿El vehículo porta las placas de identificación de las Naciones Unidas, de las sustancias a transportar?</label>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox43" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox44" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-2">
                        <label class="col-sm-4 ">2.8</label>
                    </div>
                    <div class="col-sm-8">
                        <label class="col-sm-4 ">¿El vehículo porta con recibos de recolección de los Residuos y Mercancías Peligrosas?</label>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox45" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox46" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-2">
                        <label class="col-sm-4 ">3</label>
                    </div>
                    <div class="col-sm-8">
                        <label class="col-sm-4 ">KIT ATENCIÓN DE EMERGENCIA</label>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox47" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox48" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-2">
                        <label class="col-sm-4 ">3.1</label>
                    </div>
                    <div class="col-sm-8">
                        <label class="col-sm-">¿El vehículo cuenta extintores multiproposito?</label>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox49" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox50" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-2">
                        <label class="col-sm-4">3.2</label>
                    </div>
                    <div class="col-sm-8">
                        <label class="col-sm-4">¿El vehículo cuenta con dispositivo sonoro o pito reversa?</label>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox51" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox52" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-2">
                        <label class="col-sm-4">3.3</label>
                    </div>
                    <div class="col-sm-8">
                        <label class="col-sm-4">¿El vehículo cuenta con botiquín completo ?</label>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox53" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox54" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-2">
                        <label class="col-sm-4">3.4</label>
                    </div>
                    <div class="col-sm-8">
                        <label class="col-sm-4">¿El vehículo cuenta con un Kit De Derrame ?</label>
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
                    <div class="col-sm-2">
                        <label class="col-sm-4">3.5</label>
                    </div>
                    <div class="col-sm-8">
                        <label class="col-sm-4">¿El vehículo cuenta con embalajes y embases adecuados para la atención de emergencia ?</label>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox57" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox58" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-2">
                        <label class="col-sm-4">3.6</label>
                    </div>
                    <div class="col-sm-8">
                        <label class="col-sm-4">¿El vehículo cuenta con dispositivo de carga?</label>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox59" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox60" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-2">
                        <label class="col-sm-4">3.7</label>
                    </div>
                    <div class="col-sm-8">
                        <label class="col-sm-4">¿El vehículo cuenta con un Kit De Carretera?</label>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox61" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox62" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-2">
                        <label class="col-sm-4 ">3.8</label>
                    </div>
                    <div class="col-sm-8">
                        <label class="col-sm-4 ">¿El personal cuenta con EPP adecuados para la labor?</label>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox63" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox64" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-2">
                        <label class="col-sm-4">4</label>
                    </div>
                    <div class="col-sm-8">
                        <label class="col-sm-4">CONDICIONES DE SEGURIDAD DEL VEHÍCULO</label>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox65" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox66" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-2">
                        <label class="col-sm-4">4.1</label>
                    </div>
                    <div class="col-sm-8">
                        <label class="col-sm-4 ">¿El vehículo cuenta con luces buen estado ? (Reversa, direccionales, parqueo,frenos).</label>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox67" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox68" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-2">
                        <label class="col-sm-4">4.2</label>
                    </div>
                    <div class="col-sm-8">
                        <label class="col-sm-4">¿El vehículo cuenta con sistema el eléctrico buen estado ? (Luces internas, tacometro, odometro, testigos nivel aceite y gasolina).</label>
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
                    <div class="col-sm-2">
                        <label class="col-sm-4">4.3</label>
                    </div>
                    <div class="col-sm-8">
                        <label class="col-sm-4">¿El vehículo cuenta con antena Buggy en buen estador?</label>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox71" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox72" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-2">
                        <label class="col-sm-4 ">4.4</label>
                    </div>
                    <div class="col-sm-8">
                        <label class="col-sm-4 ">¿El vehículo cuenta con el certificado de mantenimiento preventivo?</label>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox73" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox74" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-2">
                        <label class="col-sm-4 ">4.5</label>
                    </div>
                    <div class="col-sm-8">
                        <label class="col-sm-4 ">¿El vehículo cuenta con dispositivo de comunicación?</label>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox75" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox76" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-2">
                        <label class="col-sm-4 ">4.6</label>
                    </div>
                    <div class="col-sm-8">
                        <label class="col-sm-4 ">¿El vehículo cuenta con una licuadora?</label>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox77" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                    <div class="col-sm-1">
                        <asp:TextBox ID="TextBox78" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-12">
                        <label class="col-sm-4">OBSERVACIONES</label>
                        <asp:TextBox ID="TextBox79" runat="server" CssClass="form-control input-sm text"></asp:TextBox>
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
