using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace clase3_ejercicio1
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
            SqlCommand comando = new SqlCommand("select dni, apellidonom, provincia from alumnos " +
           " where dni='" + this.TextBox1.Text + "'",
           conexion);
            SqlDataReader registro = comando.ExecuteReader();
            if (registro.Read())
                this.resultado.Text = "apellidonom:" + registro["apellidonom"] +
               "<br>" +
                "provincia:" + registro["provincia"];
            else
                this.resultado.Text = "No existe un alumno con dicho dni";
            conexion.Close();
        }
    }
}