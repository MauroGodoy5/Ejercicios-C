using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace clase1_pruebatextbox
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int x1 = int.Parse(this.TextBox1.Text);
            int x2 = int.Parse(this.TextBox2.Text);
            int suma = x1 + x2;
            this.Label_Resultado.Text = "La suma de los dos valores es:" + suma;
        }
    }
}