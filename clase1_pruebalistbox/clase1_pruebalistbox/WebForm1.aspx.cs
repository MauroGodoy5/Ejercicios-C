using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace clase1_pruebalistbox
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
            this.Label1.Text = "";
            if (this.ListBox1.Items[0].Selected)
            {
                int suma = x1 + x2;
                this.Label_resultado.Text = "La suma es:" + suma + "<br>";
            }
            if (this.ListBox1.Items[1].Selected)
            {
                int resta = x1 - x2;
                this.Label_resultado.Text += "La diferencia:" + resta + "<br>";
            }
            if (this.ListBox1.Items[2].Selected)
            {
                int multi = x1 * x2;
                this.Label_resultado.Text += "El producto:" + multi + "<br>";
            }
            if (this.ListBox1.Items[3].Selected)
            {
                int divi = x1 / x2;
                this.Label_resultado.Text += "La division:" + divi + "<br>";
            }

        }
    }
}