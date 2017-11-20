
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.tool.xml;
using System;
using System.IO;
using System.Resources;

namespace Quimirespel
{
    public class PrintService
    {

        public void PruebaDocumento()
        {

            string valor = "texto a mostar sssssssss";
            string titulo = "Titulo Principal";
            var htmlValue =
              @"<html>    < head >        < title > Test HTML - PDF file </ title >" +
              "< style type = \"text/css\">" +
               "body {  font - face: \"Calibry\", \"Tahoma\", sans - serif;" +
           "}       p { text - indent: 3em;  }.last - cell {  text - align: center;" +
            "font - style: italic;} code {  color: #484848; border: 1px solid #dadada;" +
            "background - color: rgb(250, 250, 250); padding: 5px;  margin: 15px; display: block;" +
          "}  </ style > </ head > < body > < h1 style=\"background: red\">" + titulo + "</ h1 >  < p >" + valor + "</ p >" +
          "< table >  < tr >< th > Property </ th >< th > Value </ th ></ tr >  < tr >< td > Text </ td >" +
          "< td > Html to pdf test app</ td ></ tr >" +
          "< tr >< td > Object type </ td >< td > Form </ td ></ tr > < tr >< td > Purpose </ td >< td > " +
          "< code > libraray test </ code ></ td ></ tr >" +
          "< tr >< td colspan = \"2\" class=\"last-cell\">Nothing more.</td></tr> </table> </body></html>";

            string directory = "C:\\Test\\";
            string nombrearchivo = "IText" + DateTime.Now.ToString("ddMMyyyyhhmmss") + ".pdf";
            Imprimir(htmlValue, nombrearchivo, directory);
        }


        public void PruebaDocumentoVisita(string html)
        { 
            string directory = "C:\\Test\\";
            string nombrearchivo = "VisitaTecnica" + DateTime.Now.ToString("ddMMyyyyhhmmss2") + ".pdf";
            Imprimir(html, nombrearchivo, directory);
        }

        public void Imprimir(string plantilla, string nombrearchivo, string ruta)
        {

            using (var archivoStream = new FileStream(ruta + nombrearchivo, FileMode.Create, FileAccess.Write))
            {
                var lector = new StringReader(plantilla);
                var documentoPdf = new Document(PageSize.A4, 10f, 10f, 100f, 0f);
                var escritor = PdfWriter.GetInstance(documentoPdf, archivoStream);
                documentoPdf.Open();

                //var logo = iTextSharp.text.Image.GetInstance((Image) ResourceManager.GetObject("iconoquimirespel"));
                //logo.SetAbsolutePosition(440, 800);
                //documentoPdf.Add(logo);

                XMLWorkerHelper.GetInstance().ParseXHtml(escritor, documentoPdf, lector);
                documentoPdf.Close();
            }
        }
    }
}