using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CLASE9_
{
    public partial class pagina1session : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Almacenamos las dos variables de sesion
            this.Session["usuario"] = this.TextBox1.Text;
            this.Session["clave"] = this.TextBox2.Text;
            //Redireccionamos a la segunda pagina
            this.Response.Redirect("pagina2session.aspx");
        }
    }
}