using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace clase5_abm
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.SqlDataSourceArticulos.InsertParameters["descripcion"].DefaultValue = this.TextBox1.Text;

            this.SqlDataSourceArticulos.InsertParameters["precio"].DefaultValue = this.TextBox2.Text;

            this.SqlDataSourceArticulos.InsertParameters["codigorubro"].DefaultValue = this.DropDownList1.SelectedValue;
            this.SqlDataSourceArticulos.Insert();
            this.resultado.Text = "se efectuó la carga";
            this.TextBox1.Text = "";
            this.TextBox1.Text = "";
        }
    }
}