using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace clase3_ejercicio1
{
    public partial class WebForm5 : System.Web.UI.Page
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
            SqlCommand comando = new SqlCommand("select dni, apellidonom, provincia from alumnos " + " where dni='" + this.TextBox1.Text + "'", conexion);
            SqlDataReader registro = comando.ExecuteReader();
            if (registro.Read())
            {
                this.TextBox2.Text = registro["apellidonom"].ToString();
                this.TextBox3.Text = registro["provincia"].ToString();
            }
            else
                this.resultado1.Text = "No existe un alumno con dicho dni";
            conexion.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string s =
System.Configuration.ConfigurationManager.ConnectionStrings["administracion"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand("update alumnos set" + " apellidonom='" + this.TextBox2.Text + "',provincia='" + this.TextBox3.Text + "' where dni='" + this.TextBox1.Text + "'", conexion);
            int cantidad = comando.ExecuteNonQuery();

            if (cantidad == 1)
                this.resultado2.Text = "Datos Modificados";
            else
                this.resultado2.Text = "No existe el alumno";
            conexion.Close();
        }
    }
}