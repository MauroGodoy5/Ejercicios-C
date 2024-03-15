using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CLASE9_
{
    public partial class recuperarcookie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.Request.Cookies["edad"] == null)
            {
                this.resultado.Text = "No existe la cookie edad";
 }
            else
            {

                this.resultado.Text = this.Request.Cookies["edad"].Value;
            }
        }
    }
}