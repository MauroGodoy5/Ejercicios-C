using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace clase5_abm
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.SqlDataSource1.SelectParameters["codigo"].DefaultValue = this.TextBox1.Text;

            this.SqlDataSource1.DataSourceMode = SqlDataSourceMode.DataReader;
            SqlDataReader registros;

            registros = (SqlDataReader)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            if (registros.Read())
                this.resultado.Text = "Descripcion:" +
                registros["descriarticulo"] + "<br>" +
                "Precio:" + registros["precio"] + "<br>" +
                "Rubro:" + registros["descrirubro"];
            else
                this.resultado.Text = "No existe un artículo con dicho código"; 
        }
    }
}