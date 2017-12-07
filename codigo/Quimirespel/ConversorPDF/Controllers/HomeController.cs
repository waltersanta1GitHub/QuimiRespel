using SelectPdf;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ConversorPDF.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult SubmitAction(FormCollection collection)
        {

            string text = System.IO.File.ReadAllText(@"C:\Users\Juan Pablo\Desktop\ProyectoWalter\Plantillas\" + collection["TxtPath"]);

            byte[] pdf = convertir(text);
            FileResult fileResult = new FileContentResult(pdf, "application/pdf");
            fileResult.FileDownloadName = "Document.pdf";
            return fileResult;
        }

        public byte[] convertir(string texto)
        {
            var convertir = new HtmlToPdf();
            PdfDocument documentoPdf = convertir.ConvertHtmlString(texto);

            byte[] pdf = documentoPdf.Save();
            documentoPdf.Close();

            return pdf;
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}