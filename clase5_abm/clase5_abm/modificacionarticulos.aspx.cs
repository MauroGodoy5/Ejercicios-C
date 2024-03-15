using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace clase5_abm
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.SqlDataSourceArticulos.SelectParameters["codigo"].DefaultValue = this.TextBox1.Text;
            this.SqlDataSourceArticulos.DataSourceMode = SqlDataSourceMode.DataReader;
            SqlDataReader registros;
            registros =
           (SqlDataReader)SqlDataSourceArticulos.Select(DataSourceSelectArguments.Empty);
            if (registros.Read())
            {
                this.TextBox2.Text =
               registros["descripcion"].ToString();
                this.TextBox3.Text = registros["precio"].ToString();
                this.DropDownList1.SelectedValue =
               registros["codigorubro"].ToString();
                this.DropDownList1.DataSource =
               this.SqlDataSourceRubros;
                this.DropDownList1.DataTextField = "descripcion";
                this.DropDownList1.DataValueField = "codigo";
                this.DropDownList1.DataBind();
            }
            else
                this.resultado1.Text = "No existe un artículo con dicho código"; 
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            this.SqlDataSourceArticulos.UpdateParameters["descripcion"].DefaultValue = this.TextBox2.Text;

            this.SqlDataSourceArticulos.UpdateParameters["precio"].DefaultValue =
            this.TextBox3.Text;

            this.SqlDataSourceArticulos.UpdateParameters["codigorubro"].DefaultValue = this.DropDownList1.SelectedValue;

            this.SqlDataSourceArticulos.UpdateParameters["codigo"].DefaultValue = this.TextBox1.Text;
            int cant;
            cant = this.SqlDataSourceArticulos.Update();
            if (cant == 1)
                this.resultado2.Text = "Se modifico el artículo";
            else
                this.resultado2.Text = "No existe el codigo";
        }
    }
}