using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace clase1_ejercicio2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int cantidadrespuestascorrectas = 0;

            if (RadioButton1.Checked && !RadioButton2.Checked && !RadioButton3.Checked) { 
            
                cantidadrespuestascorrectas++;
            }

            if (RadioButton6.Checked && !RadioButton4.Checked && !RadioButton5.Checked)
            {

                cantidadrespuestascorrectas++;
            }

            if (RadioButton7.Checked && !RadioButton8.Checked && !RadioButton9.Checked)
            {

                cantidadrespuestascorrectas++;
            }

            if (RadioButton10.Checked && !RadioButton11.Checked && !RadioButton12.Checked)
            {

                cantidadrespuestascorrectas++;
            }

            resultado.Text = "cantidad de respuestas correctas: " + cantidadrespuestascorrectas; 
        }
    }
}