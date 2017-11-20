namespace Quimirespel.Models.Tablas
{
    public class RecepcionVerificacionTablaModelo
    {
        public string NumeroRecibo { get; set; }
        public string FechaRecepcion { get; set; }
        public string NombreResiduo { get; set; }
        public string Cantidad { get; set; }
        public BaseModelo Unidad { get; set; }
        public string Clase { get; set; }
        public string Divicion { get; set; }
        public string ListaCorriente { get; set; }
        public string EnviadoBodega { get; set; }
        public string Lote { get; set; }
    }
}