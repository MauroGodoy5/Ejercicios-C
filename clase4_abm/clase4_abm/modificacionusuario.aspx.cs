using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace clase4_abm
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.SqlDataSource1.SelectParameters["nombre"].DefaultValue = this.TextBox1.Text;
            this.SqlDataSource1.DataSourceMode =
            SqlDataSourceMode.DataReader;
            SqlDataReader datos;
            datos =
           (SqlDataReader)this.SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            if (datos.Read())
            {
                this.TextBox2.Text = datos["clave"].ToString();
                this.TextBox3.Text = datos["mail"].ToString();
            }
            else
                this.resultado1.Text = "No existe un usuario con dicho nombre";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            this.SqlDataSource1.UpdateParameters["nombre"].DefaultValue = this.TextBox1.Text;
            this.SqlDataSource1.UpdateParameters["clave"].DefaultValue = this.TextBox2.Text;
            this.SqlDataSource1.UpdateParameters["mail"].DefaultValue = this.TextBox3.Text;
            int cant;
            cant = this.SqlDataSource1.Update();
            if (cant == 1)
                this.resultado2.Text = "Se modificaron los datos";
            else
                this.resultado2.Text = "No existe dicho codigo de usuario";
        }
    }
}