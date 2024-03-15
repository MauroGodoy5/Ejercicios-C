using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace clase2_ejercicio1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            StreamWriter arch = new StreamWriter(this.Server.MapPath(".") +
"/curriculum.txt", true);
            arch.WriteLine("Nombre:" + this.TextBox1.Text);
            arch.WriteLine("<br>");
            arch.WriteLine("apellido:" + this.TextBox2.Text);
            arch.WriteLine("<br>");
            arch.WriteLine("edad:" + this.TextBox3.Text);
            arch.WriteLine("<br>");
            arch.WriteLine("documento:" + this.TextBox4.Text);
            arch.WriteLine("<br>");
            arch.WriteLine("disponibilidad:" + this.TextBox5.Text);
            arch.WriteLine("<br>");
            arch.WriteLine("movilidad:" + this.TextBox6.Text);
            arch.WriteLine("<br>");
            arch.WriteLine("Comentarios<br>");
            arch.WriteLine(this.TextBox7.Text);
            arch.WriteLine("<br>");
            arch.WriteLine("<hr>");
            arch.Close();
            this.resultado.Text = "Datos Registrados";
        }
    }
}