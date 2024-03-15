using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace clase7_controles_de_validacion
{
    public partial class CustomValidator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            int valor;
            valor = int.Parse(this.TextBox1.Text);
            if (valor % 5 == 0)
                args.IsValid = true;
            else
                args.IsValid = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (this.IsValid)
            {
                this.Response.Redirect("WebForm2.aspx");
            }
        }
    }
}