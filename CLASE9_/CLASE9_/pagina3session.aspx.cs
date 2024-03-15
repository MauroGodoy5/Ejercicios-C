using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CLASE9_
{
    public partial class pagina3session : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Introducir aquí el código de usuario
            //y la clave
            Label1.Text = this.Session["usuario"].ToString();
            Label2.Text = this.Session["clave"].ToString();
        }
    }
}