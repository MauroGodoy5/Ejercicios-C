using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CLASE9_
{
    public partial class pagina2session : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = this.Session["usuario"].ToString();
            Label1.Text = this.Session["clave"].ToString();

        }
    }
}