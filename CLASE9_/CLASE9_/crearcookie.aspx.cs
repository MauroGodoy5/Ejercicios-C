using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CLASE9_
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpCookie cookie1 = new
            HttpCookie("edad", this.TextBox1.Text);
            cookie1.Expires = new DateTime(2023, 12, 25);
            this.Response.Cookies.Add(cookie1);
            this.resultado.Text = "Se creó la cookie";
        }
    }
}