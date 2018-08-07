using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;

namespace Quimirespel.Util
{
    public class Helper
    {

        public static string ValidarHora(string valor)
        {

            if (valor.Length > 5)
            {
                valor = "00:00";
            }

            if (!valor.Contains(":"))
            {
                valor = string.Empty;
            }

            var reg = new Regex("^([0-9]|0[0-9]|1[0-9]|2[0-3]):[0-5][0-9]$");
            if (!reg.IsMatch(valor))
            {
                valor = "00:00";
            }

            return valor;
        }


        public static string ValidarFecha(string valor)
        {

            if (valor.Length > 10)
            {
                valor = "00:00";
            }

            if (!valor.Contains("/"))
            {
                valor = string.Empty;
            }

            var reg = new Regex(@"^\d{2,2}/\d{2,2}/\d{4,4}");
            if (!reg.IsMatch(valor))
            {
                valor = string.Empty;
            }

            return valor;
        }

    }
}