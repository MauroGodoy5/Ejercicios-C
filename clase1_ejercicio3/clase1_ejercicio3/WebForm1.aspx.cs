using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace clase1_ejercicio3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            double numero;
            if (double.TryParse(TextBox1.Text, out numero))
            {
                // Si es un número, contar la cantidad de dígitos
                int cantidadDigitos = 0;
                while (numero >= 1)
                {
                    cantidadDigitos++;
                    numero /= 10;
                }
                resultado.Text = "Cantidad de dígitos: " + cantidadDigitos;
            }
            else
            {
                // Si no es un número, mostrar un mensaje de error
                resultado.Text= "Ingrese un número válido";
            }
        }
    }
}