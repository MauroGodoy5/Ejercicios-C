using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
namespace clase2_introduccion
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            StreamWriter arch = new StreamWriter(this.Server.MapPath(".") +
"/visitas.txt", true);
            arch.WriteLine("Nombre:" + this.TextBox1.Text);
            arch.WriteLine("<br>");
            arch.WriteLine("Pais:" + this.TextBox2.Text);
            arch.WriteLine("<br>");
            arch.WriteLine("Comentarios<br>");
            arch.WriteLine(this.TextBox3.Text);
            arch.WriteLine("<br>");
            arch.WriteLine("<hr>");
            arch.Close();
            this.resultado.Text = "Datos Registrados";
        }
    }
}