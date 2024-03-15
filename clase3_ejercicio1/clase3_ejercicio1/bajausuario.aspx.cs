using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace clase3_ejercicio1
{
    public partial class WebForm4 : System.Web.UI.Page
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
            SqlCommand comando = new SqlCommand("delete from alumnos where dni = '" + this.TextBox1.Text + "'", conexion);

            int cantidad = comando.ExecuteNonQuery();
            if (cantidad == 1)
                this.resultado.Text = "Se borró el alumno";
            else
                this.resultado.Text = "No existe un alumno con dicho dni";
            conexion.Close();
        }
    }
}