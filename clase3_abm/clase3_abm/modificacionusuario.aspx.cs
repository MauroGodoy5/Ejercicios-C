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
            SqlCommand comando = new SqlCommand("select nombre, clave, mail from usuarios " + " where nombre='" + this.TextBox1.Text + "'", conexion);
            SqlDataReader registro = comando.ExecuteReader();
            if (registro.Read())
            {
                this.TextBox2.Text = registro["clave"].ToString();
                this.TextBox3.Text = registro["mail"].ToString();
            }
            else
                this.resultado1.Text = "No existe un usuario con dicho nombre";
            conexion.Close();
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            string s =
System.Configuration.ConfigurationManager.ConnectionStrings["administracion"].ConnectionString;
 SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand("update usuarios set" + " clave='" + this.TextBox2.Text +"',mail='" + this.TextBox3.Text +"' where nombre='" + this.TextBox1.Text + "'",conexion);
            int cantidad = comando.ExecuteNonQuery();
            
            if (cantidad == 1)
                this.resultado2.Text = "Datos Modificados";
            else
                this.resultado2.Text = "No existe el usuario";
            conexion.Close();
        }

       
    }
}