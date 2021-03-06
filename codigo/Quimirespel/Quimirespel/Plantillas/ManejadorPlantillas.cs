﻿using Quimirespel.Models;
using Quimirespel.Models.Secciones;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;

namespace Quimirespel.Plantillas
{
    public class ManejadorPlantillas
    {
        public static string GenerarPlantillaCompleta(VisitaTecnicaModel visitatecnica)
        {
            var plantillatotal = new StringBuilder();
            plantillatotal.Append(EncabezadoPagina("VISITA TECNICA","1425898",visitatecnica));
            plantillatotal.Append(VisitaTecnicaSeccionMedia(visitatecnica));
            plantillatotal.Append(Piepagina(visitatecnica));
            return plantillatotal.ToString();
        }

        public static string GenerarPlantillaSeccionMediaPiePagina()
        {
            return "";
        }

        private static string imagen= "data:image/jpeg;base64,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";

        private static string estilos =           
            " body {	font-family:Verdana, Geneva, sans-serif;	font-size: 10px;}   "+
            ".itable {  border-collapse: collapse;  border-top: none;}    "+
            ".itable td, .ftable th{    border: 1px solid black;}   "+
            ".itable tr:first-child th{    border-top: none;}   "+
            ".itable tr:last-child td{    border-bottom: none;}   "+
            ".itable tr td:first-child,.itable tr th:first-child {  border-left: none;}   "+
            ".itable tr td:last-child,.itable tr th:last-child {  border-right: none;}  "+
            ".cell-title {	height: 30px;	padding-top: 10px;	padding-bottom:10px;	background:#09F;	font-size:12px;	font-weight:bold;	color:#000;}   "+
            ".cell-description-clasi {	height: 150px;	color:#666;	padding:10px;} "+
            ".cell-header {	height: 20px;	padding-top: 5px;	font-weight: bold;	color:#000;} "+
            ".cell-header-info { height: 20px;	font-weight: bold;	padding-left: 10px;	color:#000;} "+
            ".cell-header-clasi {	height: 20px;	font-weight: bold;	padding-left: 10px;	color:#000;} "+
            ".cell-content-condi {	height: 20px;	padding: 10px;	color:#666;} "+
            ".cell-content { height: 40px;	padding: 10px;	color:#666;} "+
            ".cell-content-info {	height: 30px;	padding-left: 10px;	color:#666;}"+
            ".cell-content-clasi {	height:20px;	color:#666;	padding-left: 10px;} "+
            ".cell-content-note {	height: 30px;	padding-left: 10px;	color:#F00;}  ";

         static string EncabezadoPagina(string titulo,string viencia, VisitaTecnicaModel visitatecnica)
        {
            var contructoEncabezado = new StringBuilder();
            contructoEncabezado.Append("<!DOCTYPE html PUBLIC \" -//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\" >");
            contructoEncabezado.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\" >");
            contructoEncabezado.Append("<head>");
            contructoEncabezado.Append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />");
            contructoEncabezado.Append("<title> "+titulo+" </title>");
            contructoEncabezado.Append("<style type=\"text/css\"> "+estilos+" </style>");
            contructoEncabezado.Append("</head>");
            contructoEncabezado.Append("<body> "); 
            contructoEncabezado.Append("<table width=\"800\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">");
            contructoEncabezado.Append("<tr>");
            contructoEncabezado.Append("<td height=\"138\"><table width=\"100% \" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">");
            contructoEncabezado.Append("<tr>");
            contructoEncabezado.Append("<td height=\"115\"><table width=\"100% \" border=\"1px\" cellspacing=\"0\" cellpadding=\"0\">");
                contructoEncabezado.Append("<tr>");
                    contructoEncabezado.Append("<td width=\"153\" rowspan=\"2\" align=\"center\"> <img src=\""+imagen+"\" width=\"130\" height=\"113\" /> </td>");
                    contructoEncabezado.Append("<td width=\"375\" rowspan=\"2\" align=\"center\" class=\"cell-header\"><strong>"+titulo+"</strong></td>");
                    contructoEncabezado.Append("<td width=\"264\" height=\"76\" align=\"center\" class=\"cell-header\" > VERSION: 1</td>");
                contructoEncabezado.Append("</tr>");
                contructoEncabezado.Append("<tr>");  
                   contructoEncabezado.Append("<td align=\"center\" class=\"cell-header\" > VIGENCIA: "+viencia+"</td>");
                contructoEncabezado.Append("</tr>");
                contructoEncabezado.Append("</table></td>");
                contructoEncabezado.Append("</tr>");
                 contructoEncabezado.Append("<tr>");
                   contructoEncabezado.Append("<td>&nbsp;</td>");
                 contructoEncabezado.Append("</tr>");
            contructoEncabezado.Append("</table></td>"); 
            contructoEncabezado.Append("</tr>");  
            contructoEncabezado.Append("<tr>");
            contructoEncabezado.Append("<td align=\"center\" ><table width=\"803\" border =\"1\" cellspacing =\"0\" cellpadding =\"0\" > ");
            contructoEncabezado.Append("<tr>");
            contructoEncabezado.Append("<td width=\"799\" align =\"center\" class=\"cell-title\" > 1. INFORMACION DEL GENERADOR</td>");
            contructoEncabezado.Append("</tr>");
            contructoEncabezado.Append("<tr>");
            contructoEncabezado.Append("<td align=\"center\" class=\"cell-header\" ><strong>ACTIVIDAD ECONOMICA</strong></td>");
            contructoEncabezado.Append("</tr>");
            contructoEncabezado.Append("<tr>");
            contructoEncabezado.Append("<td><table width=\"100% \" cellpadding =\"0\" cellspacing =\"0\" class=\"itable\" > ");
            contructoEncabezado.Append("<tr class=\"cell-header\"> ");
            contructoEncabezado.Append("<td width=\"209\" align =\"center\" class=\"cell-header\" ><strong>CÓDIGO CIIU</strong></td>");
            contructoEncabezado.Append("<td width=\"591\" align =\"center\" class=\"cell-header\" ><strong>DESCRIPCIÓN</strong></td>");
            contructoEncabezado.Append("</tr>");
            contructoEncabezado.Append("<tr>");
            contructoEncabezado.Append("<td align=\"center\" class=\"cell - content\" >"+visitatecnica.CIIU.Valor+"</td>");
            contructoEncabezado.Append("<td align=\"center\" class=\"cell - content\" >" + visitatecnica.CIIU.Texto + "</td>");
            contructoEncabezado.Append("</tr>");
            contructoEncabezado.Append("<tr class=\"cell - content\">");
            contructoEncabezado.Append("<td align=\"center\" class=\"cell-header\">RAZÓN SOCIAL</td>");
            contructoEncabezado.Append("<td align=\"center\" class=\"cell - content\">Lorem ipsum dolor sit amet</td>");
            contructoEncabezado.Append("</tr>");
            contructoEncabezado.Append("<tr class=\"cell - content\">");  // Linea 52
            contructoEncabezado.Append("<td colspan=\"2\" align=\"center\" ><table width=\"100% \" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"itable\">");
            contructoEncabezado.Append("<tr>");
            contructoEncabezado.Append("<td align=\"center\" class=\"cell-header\"><strong>NIT</strong></td>");
            contructoEncabezado.Append("<td align=\"center\" class=\"cell-header\"><strong>CIUDAD</strong></td>");
            contructoEncabezado.Append("<td align=\"center\" class=\"cell-header\"><strong>MUNICIPIO</strong></td>");
            contructoEncabezado.Append("</tr>");
            contructoEncabezado.Append("<tr>");
            contructoEncabezado.Append("<td width=\"33% \" align=\"center\" class=\"cell-content\">Lorem ipsum dolor sit amet</td>");
            contructoEncabezado.Append("<td width=\"33% \" align=\"center\" class=\"cell-content\">Lorem ipsum dolor sit amet</td>");
            contructoEncabezado.Append("<td align=\"center\" class=\"cell-content\">Lorem ipsum dolor sit amet</td>");
            contructoEncabezado.Append("</tr>");
            contructoEncabezado.Append("</table></td>");
            contructoEncabezado.Append("</tr>");
            contructoEncabezado.Append("</table></td>");
            contructoEncabezado.Append("</tr>");
            contructoEncabezado.Append("<tr>");  
            contructoEncabezado.Append("<td><table width=\"100% \" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"itable\">");
            contructoEncabezado.Append("<tr>");
            contructoEncabezado.Append("<td align=\"center\" class=\"cell-header\">TELEFONO</td>");
            contructoEncabezado.Append("<td align=\"center\" class=\"cell-header\"><strong>DIRECCION</strong></td>");
            contructoEncabezado.Append("</tr>");
            contructoEncabezado.Append("<tr>");
            contructoEncabezado.Append("<td width=\"40% \" height=\"133\" align=\"center\" class=\"cell - content\">"+visitatecnica.TelefonoH.ToUpper()+ "</td>");
            contructoEncabezado.Append("<td align=\"center\" class=\"cell - content\">"+visitatecnica.DirOperativa.ToUpper()+"</td>");
            contructoEncabezado.Append("</tr>");
            contructoEncabezado.Append("</table></td>");
            contructoEncabezado.Append("</tr>");   
            contructoEncabezado.Append("<tr>");
            contructoEncabezado.Append("<td><table width=\"100% \" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"itable\">");
            contructoEncabezado.Append("<tr>");
            contructoEncabezado.Append("<td align=\"center\" class=\"cell-header\">NOMBRE DE CONTACTO</td>");
            contructoEncabezado.Append("<td width=\"35% \" align=\"center\" class=\"cell-header\">CELULAR</td>");
            contructoEncabezado.Append("<td width=\"23% \" align=\"center\" class=\"cell-header\">E-MAIL</td>");
            contructoEncabezado.Append("</tr>");
            contructoEncabezado.Append("<tr>");
            contructoEncabezado.Append("<td width=\"40% \" align=\"center\" class=\"cell - content\">Lorem ipsum dolor sit amet</td>");
            contructoEncabezado.Append("<td align=\"center\" class=\"cell - content\">" + visitatecnica.CelularContactoH.ToUpper() + "</td>");
            contructoEncabezado.Append("<td align=\"center\" class=\"cell - content\">"+visitatecnica.EmailContactoH.ToUpper() + "</td>");
            contructoEncabezado.Append("</tr>");
            contructoEncabezado.Append("</table></td>");
            contructoEncabezado.Append("</tr>");
           

            return contructoEncabezado.ToString();
        }

         static string Piepagina(VisitaTecnicaModel visitatecnica)
        {
            var contructoPiePagina = new StringBuilder();
            contructoPiePagina.Append("<tr><td align=\"center\" class=\"cell-title\">3. INFORMACIÓN DEL REPRESENTANTE DE QUIMIRESPEL TRANSPORTADORA S.A.S</td></tr>"); // linea 179
            contructoPiePagina.Append("<tr><td><table width=\"100% \" border =\"0\" cellpadding =\"0\" cellspacing =\"0\" class=\"itable\" > ");
            contructoPiePagina.Append("<tr>");
            contructoPiePagina.Append("<td colspan=\"2\" class=\"cell-header-info\">DILIGENCIADO POR:</td>");
            contructoPiePagina.Append("<td colspan=\"3\" class=\"cell-content-info\"><span class=\"cell - content\">Lorem ipsum dolor sit amet</span></td>");
            contructoPiePagina.Append("<td colspan=\"3\" class=\"cell-header-info\">N°  SOLICITUD DE VISITA</td>");
            contructoPiePagina.Append("<td class=\"cell-content-info\">8989898</td>");
            contructoPiePagina.Append("</tr>");
            contructoPiePagina.Append("<tr>");
            contructoPiePagina.Append("<td width=\"16% \" class=\"cell-header-info\">CARGO</td>");
            contructoPiePagina.Append("<td colspan=\"4\" class=\"cell-content-info\"><span class=\"cell - content\">Lorem ipsum dolor sit amet</span></td>");
            contructoPiePagina.Append("<td width=\"10% \" class=\"cell-header-info\">FECHA</td>");
            contructoPiePagina.Append("<td width=\"11% \" class=\"cell-content-info\">00/00/0000</td>");
            contructoPiePagina.Append("<td width=\"9% \" class=\"cell-header-info\">HORA</td>");
            contructoPiePagina.Append("<td width=\"9% \" class=\"cell-content-info\">00;00</td>");
            contructoPiePagina.Append("</tr>");
            contructoPiePagina.Append("<tr>");
            contructoPiePagina.Append("<td class=\"cell-header - info\">TELEFONO</td>");
            contructoPiePagina.Append("<td width=\"13% \" class=\"cell-content-info\">0000000</td>");
            contructoPiePagina.Append("<td width=\"10% \" class=\"cell-header-info\">EXT</td>");
            contructoPiePagina.Append("<td width=\"10% \" class=\"cell-content-info\">0000</td>");
            contructoPiePagina.Append("<td width=\"12% \" class=\"cell-header-info\">N° CELULAR</td>");
            contructoPiePagina.Append("<td colspan=\"4\" class=\"cell-content-info\">0000000000</td>");
            contructoPiePagina.Append("</tr>");
            contructoPiePagina.Append("<tr>");
            contructoPiePagina.Append("<td class=\"cell-header-info\">E-MAIL</td>");
            contructoPiePagina.Append("<td colspan=\"8\" class=\"cell-content-info\">asdasdasd@asdasdas.asd</td>");
            contructoPiePagina.Append("</tr>");
            contructoPiePagina.Append("<tr>");
            contructoPiePagina.Append("<td class=\"cell-header - info\">MUNICIPIO</td>");
            contructoPiePagina.Append("<td colspan=\"5\" class=\"cell-content-info\"><span class=\"cell - content\">"+visitatecnica.CiudadF.NomCiudad+"</span></td>");
            contructoPiePagina.Append("<td colspan=\"2\" class=\"cell-header-info\">DEPARTAMENTO</td>");
            contructoPiePagina.Append("<td class=\"cell-content-info\">"+ visitatecnica.CiudadF.NomCiudad + "</td>");
            contructoPiePagina.Append("</tr>");
            contructoPiePagina.Append("<tr>");
            contructoPiePagina.Append("<td colspan=\"2\" class=\"cell-header-info\">DIRECCION ADMINISTRATIVA</td>");
            contructoPiePagina.Append("<td colspan=\"3\" class=\"cell-content-info\"><span class=\"cell - content\">"+visitatecnica.DirAdmin+"</span></td>");
            contructoPiePagina.Append("<td colspan=\"2\"><span class=\"cell-header-info\">DIRECCIÓN OPERATIVA</span></td>");
            contructoPiePagina.Append("<td colspan=\"2\" class=\"cell-content-info\"><span class=\"cell - content\">"+visitatecnica.DirOperativa+"</span></td>");
            contructoPiePagina.Append("</tr>");
            contructoPiePagina.Append("</table></td></tr>");
            contructoPiePagina.Append("</table></td>");
            contructoPiePagina.Append("</tr>");
            contructoPiePagina.Append("<tr>");
            contructoPiePagina.Append("<td align=\"center\">&nbsp;</td>");
            contructoPiePagina.Append("</tr>");
            contructoPiePagina.Append("<tr>");
            contructoPiePagina.Append("<td>&nbsp;</td>");
            contructoPiePagina.Append("</tr>");
            contructoPiePagina.Append("</table>");
            contructoPiePagina.Append("</body>");
            contructoPiePagina.Append("</html>");
            return contructoPiePagina.ToString();
        }
                
        public static string VisitaTecnicaSeccionMedia(VisitaTecnicaModel visitatecnica)
        {
            var contructorVisitaTecnica = new StringBuilder();           
            contructorVisitaTecnica.Append("<tr>"); // linea 192          
            contructorVisitaTecnica.Append("<td align=\"center\" class=\"cell-title\">2. RESIDUOS DECLARADOS POR EL GENERADOR</td>");
            contructorVisitaTecnica.Append("</tr>");
            contructorVisitaTecnica.Append("<tr>");
            contructorVisitaTecnica.Append("<td><table width=\"100% \" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"itable\">");
                contructorVisitaTecnica.Append("<tr>");
                contructorVisitaTecnica.Append("<td width=\"9 % \" align=\"center\" class=\"cell-header\">RESIDUO</td>");
                contructorVisitaTecnica.Append("<td width=\"38 % \" align=\"center\" class=\"cell-header\">NOMBRE DE RESIDUO/MERCANCIA PELIGROSA</td>");
                contructorVisitaTecnica.Append("<td width=\"11 % \" align=\"center\" class=\"cell-header\">CANTIDAD</td>");
                contructorVisitaTecnica.Append("<td width=\"8 % \" align=\"center\" class=\"cell-header\">UNIDAD</td>");
                contructorVisitaTecnica.Append("<td width=\"8 % \" align=\"center\" class=\"cell-header\">ESTADO</td>");
                contructorVisitaTecnica.Append("<td width=\"16 % \" align=\"center\" class=\"cell-header\">EMBALAJE</td>");
                contructorVisitaTecnica.Append("</tr>");
            // Item Tabla
                        contructorVisitaTecnica.Append("<tr>");
                        contructorVisitaTecnica.Append("<td align=\"center\" class=\"cell-header\">1</td>");
                        contructorVisitaTecnica.Append("<td align=\"center\" class=\"cell- content\">Lorem ipsum dolor sit amet</td>");
                        contructorVisitaTecnica.Append("<td align=\"center\"><span class=\"cell - content\">100</span></td>");
                        contructorVisitaTecnica.Append("<td align=\"center\"><span class=\"cell - content\">100</span></td>");
                        contructorVisitaTecnica.Append("<td align=\"center\" class=\"cell - content\">UXZ45</td>");
                        contructorVisitaTecnica.Append("<td align=\"center\">ASDA243</td>");
                        contructorVisitaTecnica.Append("</tr>");
            // Fin item tabla
            contructorVisitaTecnica.Append("</table></td>");
            contructorVisitaTecnica.Append("</tr>");
            contructorVisitaTecnica.Append("<tr>");
                contructorVisitaTecnica.Append("<td><table width=\"100% \" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"itable\">");// Linea 142
                    contructorVisitaTecnica.Append("<tr>");
                        contructorVisitaTecnica.Append("<td width=\"20 % \" align=\"center\" class=\"cell-header\">ASESOR ASIGNADO</td>");
                        contructorVisitaTecnica.Append("<td width=\"80 % \" align=\"center\" class=\"cell - content\">Lorem ipsum dolor sit amet</td>");
                    contructorVisitaTecnica.Append("</tr>");
                contructorVisitaTecnica.Append("</table></td>");
            contructorVisitaTecnica.Append("</tr>");
            contructorVisitaTecnica.Append("<tr>");
                contructorVisitaTecnica.Append("<td> <table width=\"100% \" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">");
                contructorVisitaTecnica.Append("<tr class=\"itable\">");  
                    contructorVisitaTecnica.Append("<td width=\"25% \" align=\"center\" class=\"cell-header\">FECHA ASIGNADA DE VISITA</td>");
                    contructorVisitaTecnica.Append("<td width=\"29% \" align=\"center\" class=\"cell - content\">Lorem ipsum dolor sit amet</td>");
                    contructorVisitaTecnica.Append("<td width=\"16% \" align=\"center\" class=\"cell-header\">HORA ASIGNADA</td>");
                    contructorVisitaTecnica.Append("<td width=\"30% \" align=\"center\" class=\"cell - content\">Lorem ipsum dolor sit amet</td>");
                contructorVisitaTecnica.Append("</tr>");
                contructorVisitaTecnica.Append("</table></td>");
            contructorVisitaTecnica.Append("</tr>");
            contructorVisitaTecnica.Append("<tr>");
            contructorVisitaTecnica.Append("<td><table width=\"100% \" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"itable\">");
            contructorVisitaTecnica.Append("<tr>"); 
            contructorVisitaTecnica.Append("<td align=\"center\" class=\"cell-header\">ESPECIFICACIONES DE SEGURIDAD PARA INGRESO A EMPRESA</td>"); //OK
            contructorVisitaTecnica.Append("</tr>");
            contructorVisitaTecnica.Append("<tr>");
            contructorVisitaTecnica.Append("<td align=\"center\" class=\"cell-content\">Lorem ipsum dolor sit amet</td>");
            contructorVisitaTecnica.Append("</tr>");
            contructorVisitaTecnica.Append("</table></td>");
            contructorVisitaTecnica.Append("</tr>");
            contructorVisitaTecnica.Append("<tr>");
            contructorVisitaTecnica.Append("<td><table width=\"100% \" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"itable\">");
            contructorVisitaTecnica.Append("<tr>"); 
            contructorVisitaTecnica.Append(" <td align=\"center\" class=\"cell-header\">OBSERVACIONES Y RECOMENDACIONES ADICIONALES POR EL GENERADOR</td>");
            contructorVisitaTecnica.Append("</tr>");
            contructorVisitaTecnica.Append("<tr>");
            contructorVisitaTecnica.Append("<td align=\"center\" class=\"cell-content\">Lorem ipsum dolor sit amet</td>");
            contructorVisitaTecnica.Append("</tr>");
            contructorVisitaTecnica.Append("</table></td>");
            contructorVisitaTecnica.Append("</tr>");
            return contructorVisitaTecnica.ToString();
        }
    }
}