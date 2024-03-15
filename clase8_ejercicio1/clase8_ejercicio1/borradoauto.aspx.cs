using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace clase8_ejercicio1
{
    public partial class borradoauto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.SqlDataSource1.DeleteParameters["patente"].DefaultValue = this.TextBox1.Text;
            int cant;
            cant = this.SqlDataSource1.Delete();
            if (cant == 0)
                this.resultado.Text = "No existe un auto con el valor de patente ingresado";
            else
            {
                this.resultado.Text = "Se borro el auto con dicha patente";
                this.SqlDataSource1.SelectParameters["patente"].DefaultValue = this.TextBox1.Text;
                this.SqlDataSource1.DataSourceMode = SqlDataSourceMode.DataReader;
                SqlDataReader registro;
                registro = (SqlDataReader)this.SqlDataSource1.Select(DataSourceSelectArguments.Empty);
                if (registro.Read())
                    File.Delete(Server.MapPath(".") + "/" + registro["foto"]);
            }
        }

    }
}
