using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace clase4_abm
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.SqlDataSource1.InsertParameters["nombre"].DefaultValue = this.TextBox1.Text;
            this.SqlDataSource1.InsertParameters["clave"].DefaultValue =
           this.TextBox2.Text;
            this.SqlDataSource1.InsertParameters["mail"].DefaultValue =
           this.TextBox3.Text;
            this.SqlDataSource1.Insert();
            this.resultado.Text = "Se efectuó la carga";
            this.TextBox1.Text = "";
            this.TextBox2.Text = "";
            this.TextBox3.Text = "";
        }
    }
}