using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Security.Claims;

namespace clase3_abm
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s =
System.Configuration.ConfigurationManager.ConnectionStrings["administracion"].ConnectionString;
 SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand("select nombre, clave, mail from usuarios " +
           " where nombre='" + this.TextBox1.Text + "'",
           conexion);
            SqlDataReader registro = comando.ExecuteReader();
            if (registro.Read())
                this.resultado.Text = "Clave:" + registro["clave"] +
               "<br>" +
                "Mail:" + registro["mail"];
            else
                this.resultado.Text = "No existe un usuario con dicho nombre";
 conexion.Close();
        }
    }
}