<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InformeFinal.aspx.cs" Inherits="Quimirespel.Formularios.Operativa.InformeFinal" %>
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
                                <asp:TextBox ID="txtBuscar" runat="server" CssClass="form-control input-sm" placeholder="Buscar Num Informe">
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
                <label class="form-control">FORMATO INFORME FINAL</label>
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
                        2. TRAZABILIDAD DEL SERVICIO
                    </label>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-12">
                     <div class="row">
                        <div class="col-sm-3">
                            <label class="control-label">DESCRIPCIÓN</label>
                         </div>
                        <div class="col-sm-2">
                            <label class="control-label">FECHA</label>
                         </div>
                          <div class="col-sm-5">
                            <label class="control-label">SEGUIMIENTO</label>
                         </div>
                          <div class="col-sm-2">
                            <label class="control-label">ADJUNTAR/ARCHIVO</label>
                         </div>
                    </div>
                </div>
             </div>

  <!-- SOLICITUD VISITA ROW -->
            <div class="row">
                <div class="col-sm-12">
                     <div class="row">
                        <div class="col-sm-3">
                            <label class="control-label">SOLICITUD DE VISITA</label>
                         </div>
                        <div class="col-sm-2">
                            <asp:TextBox ID="txtFechaSolVisita" CssClass="form-control input-sm text" Width="100%" runat="server"></asp:TextBox>
                         </div>
                          <div class="col-sm-5">
                               <div class="row">
                                     <div class="col-sm-12">
                                         <div class="col-sm-6">
                                            <label class="control-label">N° SOLICITUD DE VISITA</label>
                                             </div>
                                         <div class="col-sm-6">
                                              <asp:TextBox ID="txtNumSolVisita" CssClass="form-control input-sm text" Width="100%" runat="server"></asp:TextBox>                    
                                             </div>
                                     </div>
                               </div>                             
                         </div>
                          <div class="col-sm-2">
                            <asp:Label ID="lblSolvisita" class="control-label" runat="server" >...</asp:Label>
                            <asp:Button ID="btnAdjuntaSolvisita"  runat="server" Text="Add"/>
                         </div>
                    </div>
                </div>
             </div>

    <!-- VISITA TECNICA ROW -->
            <div class="row">
                <div class="col-sm-12">
                     <div class="row">
                        <div class="col-sm-3">
                            <label class="control-label">VISITA TECNICA</label>
                         </div>
                        <div class="col-sm-2">
                            <asp:TextBox ID="txtFechaVisTecnica" CssClass="form-control input-sm text" Width="100%" runat="server"></asp:TextBox>
                         </div>
                          <div class="col-sm-5">
                               <div class="row">
                                     <div class="col-sm-12">
                                         <div class="col-sm-6">
                                            <label class="control-label">N° REQUERIMIENTO DEL SERVICIO</label>
                                             </div>
                                         <div class="col-sm-6">
                                              <asp:TextBox ID="txtNumReServicio" CssClass="form-control input-sm text" Width="100%" runat="server"></asp:TextBox>                    
                                             </div>
                                     </div>
                               </div>
                              <div class="row">
                                     <div class="col-sm-12">
                                         <div class="col-sm-6">
                                            <label class="control-label">N° REQUERIMIENTO LOGISTICO</label>
                                             </div>
                                         <div class="col-sm-6">
                                              <asp:TextBox ID="txtNumReqLogistico" CssClass="form-control input-sm text" Width="100%" runat="server"></asp:TextBox>                    
                                             </div>
                                     </div>
                               </div> 
                              <div class="row">
                                     <div class="col-sm-12">
                                         <div class="col-sm-6">
                                            <label class="control-label">N° RECOLECCIÓN DE MUESTRA</label>
                                             </div>
                                         <div class="col-sm-6">
                                              <asp:TextBox ID="txtRecMuestra" CssClass="form-control input-sm text" Width="100%" runat="server"></asp:TextBox>                    
                                             </div>
                                     </div>
                               </div>                             
                         </div>
                          <div class="col-sm-2">
                            <asp:Label ID="lblVisitaTecnica" class="control-label" runat="server" >...</asp:Label>
                            <asp:Button ID="btnVisitaTecnica"  runat="server" Text="Add"/>
                         </div>
                    </div>
                </div>
             </div>

    <!-- ANALISIS MUESTRA ROW -->
            <div class="row">
                <div class="col-sm-12">
                     <div class="row">
                        <div class="col-sm-3">
                            <label class="control-label">ANÁLISIS DE MUESTRAS</label>
                         </div>
                        <div class="col-sm-2">
                            <asp:TextBox ID="txtFechaAnaMuestra" CssClass="form-control input-sm text" Width="100%" runat="server"></asp:TextBox>
                         </div>
                          <div class="col-sm-5">
                               <div class="row">
                                     <div class="col-sm-12">
                                         <div class="col-sm-6">
                                            <label class="control-label">N° ANÁLISIS DE MUESTRA</label>
                                             </div>
                                         <div class="col-sm-6">
                                              <asp:TextBox ID="txtNumAnaMuestra" CssClass="form-control input-sm text" Width="100%" runat="server"></asp:TextBox>                    
                                             </div>
                                     </div>
                               </div>                             
                         </div>
                          <div class="col-sm-2">
                            <asp:Label ID="lblAnaMuestras" class="control-label" runat="server" >...</asp:Label>
                            <asp:Button ID="btnAnaMuestras"  runat="server" Text="Add"/>
                         </div>
                    </div>
                </div>
             </div>

     <!-- COSTOS DEL SERVICIO ROW -->
            <div class="row">
                <div class="col-sm-12">
                     <div class="row">
                        <div class="col-sm-3">
                            <label class="control-label">COSTOS DEL SERVICIO</label>
                         </div>
                        <div class="col-sm-2">
                            <asp:TextBox ID="txtFechaCostServicio" CssClass="form-control input-sm text" Width="100%" runat="server"></asp:TextBox>
                         </div>
                          <div class="col-sm-5">
                               <div class="row">
                                     <div class="col-sm-12">
                                         <div class="col-sm-6">
                                            <label class="control-label">N°  COSTOS Y SERVICIO</label>
                                             </div>
                                         <div class="col-sm-6">
                                              <asp:TextBox ID="txtNumCostServicio" CssClass="form-control input-sm text" Width="100%" runat="server"></asp:TextBox>                    
                                             </div>
                                     </div>
                               </div>                             
                         </div>
                          <div class="col-sm-2">
                            <asp:Label ID="LblCostServicio" class="control-label" runat="server" >...</asp:Label>
                            <asp:Button ID="btnCostServicio"  runat="server" Text="Add"/>
                         </div>
                    </div>
                </div>
             </div>

     <!-- ACEPTACION COTIZACIÓN ROW -->
            <div class="row">
                <div class="col-sm-12">
                     <div class="row">
                        <div class="col-sm-3">
                            <label class="control-label">ACEPTACIÓN COTIZACIÓN</label>
                         </div>
                        <div class="col-sm-2">
                            <asp:TextBox ID="txtFechaAcepCotiza" CssClass="form-control input-sm text" Width="100%" runat="server"></asp:TextBox>
                         </div>
                          <div class="col-sm-5">
                               <div class="row">
                                     <div class="col-sm-12">
                                         <div class="col-sm-6">
                                            <label class="control-label">N° COTIZACIÓN DEL SERVICIO</label>
                                             </div>
                                         <div class="col-sm-6">
                                              <asp:TextBox ID="txtNumCotizacion" CssClass="form-control input-sm text" Width="100%" runat="server"></asp:TextBox>                    
                                             </div>
                                     </div>
                               </div>                             
                         </div>
                          <div class="col-sm-2">
                            <asp:Label ID="lblAdjCotiza" class="control-label" runat="server" >...</asp:Label>
                            <asp:Button ID="btnAdjCotiza"  runat="server" Text="Add"/>
                         </div>
                    </div>
                </div>
             </div>

<!-- PROGRAMACION DE SERVICIO ROW -->
            <div class="row">
                <div class="col-sm-12">
                     <div class="row">
                        <div class="col-sm-3">
                            <label class="control-label">PROGRAMACIÓN DE SERVICIO</label>
                         </div>
                        <div class="col-sm-2">
                            <asp:TextBox ID="txtFechaProgServicio" CssClass="form-control input-sm text" Width="100%" runat="server"></asp:TextBox>
                         </div>
                          <div class="col-sm-5">
                               <div class="row">
                                     <div class="col-sm-12">
                                         <div class="col-sm-6">
                                            <label class="control-label">N° PROGRAMACIÓN</label>
                                             </div>
                                         <div class="col-sm-6">
                                              <asp:TextBox ID="txtNumProgramacion" CssClass="form-control input-sm text" Width="100%" runat="server"></asp:TextBox>                    
                                             </div>
                                     </div>
                               </div>                             
                         </div>
                          <div class="col-sm-2">
                            <asp:Label ID="lblAdjPrograma" class="control-label" runat="server" >...</asp:Label>
                            <asp:Button ID="btnAdjPrograma"  runat="server" Text="Add"/>
                         </div>
                    </div>
                </div>
             </div>

   <!-- MANIFIESTO CARGA ROW -->
            <div class="row">
                <div class="col-sm-12">
                     <div class="row">
                        <div class="col-sm-3">
                            <label class="control-label">MANIFIESTO DE CARGA PARA EL TRANSPORTE DE RESIDUOS Y MERCANCÍAS PELIGROSAS</label>
                         </div>
                        <div class="col-sm-2">
                            <asp:TextBox ID="txtFechaManifiesto" CssClass="form-control input-sm text" Width="100%" runat="server"></asp:TextBox>
                         </div>
                          <div class="col-sm-5">
                               <div class="row">
                                     <div class="col-sm-12">
                                         <div class="col-sm-6">
                                            <label class="control-label">N° MANIFIESTO CTRMP</label>
                                             </div>
                                         <div class="col-sm-6">
                                              <asp:TextBox ID="txtNumManifieso" CssClass="form-control input-sm text" Width="100%" runat="server"></asp:TextBox>                    
                                             </div>
                                     </div>
                               </div>                             
                         </div>
                          <div class="col-sm-2">
                            <asp:Label ID="lblAdjManifiesto" class="control-label" runat="server" >...</asp:Label>
                            <asp:Button ID="btnAdjManifiesto"  runat="server" Text="Add"/>
                         </div>
                    </div>
                </div>
             </div>

<!-- PLANIFICACION CARGA ROW -->
            <div class="row">
                <div class="col-sm-12">
                     <div class="row">
                        <div class="col-sm-3">
                            <label class="control-label">PLANIFICACIÓN PARA EL CARGUE Y TRANSPORTE DE RESIDUOS Y MERCANCÍAS PELIGROSAS</label>
                         </div>
                        <div class="col-sm-2">
                            <asp:TextBox ID="txtFechaPlanifica" CssClass="form-control input-sm text" Width="100%" runat="server"></asp:TextBox>
                         </div>
                          <div class="col-sm-5">
                               <div class="row">
                                     <div class="col-sm-12">
                                         <div class="col-sm-6">
                                            <label class="control-label">N° PLANIFICACIÓN CTRMP</label>
                                             </div>
                                         <div class="col-sm-6">
                                              <asp:TextBox ID="txtNumPlanificacion" CssClass="form-control input-sm text" Width="100%" runat="server"></asp:TextBox>                    
                                             </div>
                                     </div>
                               </div>                             
                         </div>
                          <div class="col-sm-2">
                            <asp:Label ID="lblAdjPlanifica" class="control-label" runat="server" >...</asp:Label>
                            <asp:Button ID="btnAdjPlanifica"  runat="server" Text="Add"/>
                         </div>
                    </div>
                </div>
             </div>

<!-- LISTA VERIFICACION ROW -->
            <div class="row">
                <div class="col-sm-12">
                     <div class="row">
                        <div class="col-sm-3">
                            <label class="control-label">LISTA DE VERIFICACIÓN DE CONDICIONES SEGURAS DE VEHÍCULOS PARA EL TRANSPORTE DE RESIDUOS Y MERCANCÍAS PELIGROSAS</label>
                         </div>
                        <div class="col-sm-2">
                            <asp:TextBox ID="txtFechaListaVerifica" CssClass="form-control input-sm text" Width="100%" runat="server"></asp:TextBox>
                         </div>
                          <div class="col-sm-5">
                               <div class="row">
                                     <div class="col-sm-12">
                                         <div class="col-sm-6">
                                            <label class="control-label">N°  LISTA VERIFIACIÓN</label>
                                             </div>
                                         <div class="col-sm-6">
                                              <asp:TextBox ID="txtNumListaVerifica" CssClass="form-control input-sm text" Width="100%" runat="server"></asp:TextBox>                    
                                             </div>
                                     </div>
                               </div>                             
                         </div>
                          <div class="col-sm-2">
                            <asp:Label ID="lblAdjListaVerifica" class="control-label" runat="server" >...</asp:Label>
                            <asp:Button ID="btnAdjListaVerifica"  runat="server" Text="Add"/>
                         </div>
                    </div>
                </div>
             </div>

<!-- RECEPCION CLASIFICACION ROW -->
            <div class="row">
                <div class="col-sm-12">
                     <div class="row">
                        <div class="col-sm-3">
                            <label class="control-label">RECEPCIÓN, CLASIFICACÍON Y VERIFICACIÓN DE RESIDUOS Y MERCANCÍAS PELIGROSAS</label>
                         </div>
                        <div class="col-sm-2">
                            <asp:TextBox ID="txtFechaRecepcion" CssClass="form-control input-sm text" Width="100%" runat="server"></asp:TextBox>
                         </div>
                          <div class="col-sm-5">
                               <div class="row">
                                     <div class="col-sm-12">
                                         <div class="col-sm-6">
                                            <label class="control-label">N° RCVRMP</label>
                                             </div>
                                         <div class="col-sm-6">
                                              <asp:TextBox ID="txtNumRecepcion" CssClass="form-control input-sm text" Width="100%" runat="server"></asp:TextBox>                    
                                             </div>
                                     </div>
                               </div>                             
                         </div>
                          <div class="col-sm-2">
                            <asp:Label ID="lblAdjRecepcion" class="control-label" runat="server" >...</asp:Label>
                            <asp:Button ID="btnAdjRecepcion"  runat="server" Text="Add"/>
                         </div>
                    </div>
                </div>
             </div>

<!-- PLANIFICACION TRATAMIENTO ROW -->
            <div class="row">
                <div class="col-sm-12">
                     <div class="row">
                        <div class="col-sm-3">
                            <label class="control-label">PLANIFICACIÓN Y  TRATAMIENTO DE RESIDUOS Y MERCANCÍAS PELIGROSAS</label>
                         </div>
                        <div class="col-sm-2">
                            <asp:TextBox ID="txtFechaPlanTratamiento" CssClass="form-control input-sm text" Width="100%" runat="server"></asp:TextBox>
                         </div>
                          <div class="col-sm-5">
                               <div class="row">
                                     <div class="col-sm-12">
                                         <div class="col-sm-6">
                                            <label class="control-label">N° PLANIFICACIÓN TRMP</label>
                                             </div>
                                         <div class="col-sm-6">
                                              <asp:TextBox ID="txtNumPlanTratamiento" CssClass="form-control input-sm text" Width="100%" runat="server"></asp:TextBox>                    
                                             </div>
                                     </div>
                               </div>                             
                         </div>
                          <div class="col-sm-2">
                            <asp:Label ID="lblAdjPlanTratamiento" class="control-label" runat="server" >...</asp:Label>
                            <asp:Button ID="btnAdjPlanTratamiento"  runat="server" Text="Add"/>
                         </div>
                    </div>
                </div>
             </div>

<!-- PLANIFICACION DISPOSICION  FINAL ROW -->
            <div class="row">
                <div class="col-sm-12">
                     <div class="row">
                        <div class="col-sm-3">
                            <label class="control-label">PLANIFICACIÓN DE DISPOSICIÓN FINAL  DE RESIDUOS Y MERCANCÍAS PELIGROSAS</label>
                         </div>
                        <div class="col-sm-2">
                            <asp:TextBox ID="txtPlanDisposicionFinal" CssClass="form-control input-sm text" Width="100%" runat="server"></asp:TextBox>
                         </div>
                          <div class="col-sm-5">
                               <div class="row">
                                     <div class="col-sm-12">
                                         <div class="col-sm-6">
                                            <label class="control-label">N° PLANIFICACIÓN DFRMP</label>
                                             </div>
                                         <div class="col-sm-6">
                                              <asp:TextBox ID="txtNumPlanDisposisionFinal" CssClass="form-control input-sm text" Width="100%" runat="server"></asp:TextBox>                    
                                             </div>
                                     </div>
                               </div>                             
                         </div>
                          <div class="col-sm-2">
                            <asp:Label ID="lblAdjPlanDispoFinal" class="control-label" runat="server" >...</asp:Label>
                            <asp:Button ID="btnAdjPlanDispoFinal"  runat="server" Text="Add"/>
                         </div>
                    </div>
                </div>
             </div>

<!-- INFORME FINAL ROW -->
            <div class="row">
                <div class="col-sm-12">
                     <div class="row">
                        <div class="col-sm-3">
                            <label class="control-label">INFORME FINAL</label>
                         </div>
                        <div class="col-sm-2">
                            <asp:TextBox ID="txtFechaInfoFinal" CssClass="form-control input-sm text" Width="100%" runat="server"></asp:TextBox>
                         </div>
                          <div class="col-sm-5">
                               <div class="row">
                                     <div class="col-sm-12">
                                         <div class="col-sm-6">
                                            <label class="control-label">N° INFORME FINAL</label>
                                             </div>
                                         <div class="col-sm-6">
                                              <asp:TextBox ID="txtNumInfoFinal" CssClass="form-control input-sm text" Width="100%" runat="server"></asp:TextBox>                    
                                             </div>
                                     </div>
                               </div>                             
                         </div>
                          <div class="col-sm-2">
                            <asp:Label ID="lblAdjInfoFinal" class="control-label" runat="server" >...</asp:Label>
                            <asp:Button ID="btnAdjInfoFinal"  runat="server" Text="Add"/>
                         </div>
                    </div>
                </div>
             </div>

            <div class="row">
                <div class="col-sm-12">
                    <label class="control-label col-sm-12 sectionheader">
                        3. DESCRPCIÓN
                    </label>
                </div>
            </div>  
            <div class="row">
                <div class="col-sm-12">                    
                       <div class="col-sm-3">
                           <label class="control-label">NOMBRE DE RESIDUOS</label>
                       </div>
                    <div class="col-sm-2">
                           <label class="control-label">CANTIDAD</label>
                       </div>
                    <div class="col-sm-3">
                           <label class="control-label">TRATAMIENTO</label>
                       </div>
                    <div class="col-sm-2">
                           <label class="control-label">DISPOSICIÓN</label>
                       </div>
                    <div class="col-sm-2">
                           <label class="control-label">LOTE</label>
                    </div>                   
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">                    
                       <div class="col-sm-3">
                          <asp:TextBox ID="txtNombreResiduo" CssClass="form-control input-sm text" Width="100%" runat="server"></asp:TextBox>                    
                       </div>
                    <div class="col-sm-2">
                           <asp:TextBox ID="txtCantidad" CssClass="form-control input-sm text" Width="100%" runat="server"></asp:TextBox>                    
                       </div>
                    <div class="col-sm-3">
                          <asp:TextBox ID="txtTratamiento" CssClass="form-control input-sm text" Width="100%" runat="server"></asp:TextBox>                    
                       </div>
                    <div class="col-sm-2">
                           <asp:TextBox ID="txtDisposicion" CssClass="form-control input-sm text" Width="100%" runat="server"></asp:TextBox>                    
                       </div>
                    <div class="col-sm-2">
                           <asp:TextBox ID="txtLote" CssClass="form-control input-sm text" Width="100%" runat="server"></asp:TextBox>                    
                    </div>                   
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
