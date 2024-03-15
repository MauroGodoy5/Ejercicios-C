using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace clase3_abm
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
            SqlCommand comando = new SqlCommand("delete from usuarios where nombre = '" + this.TextBox1.Text + "'", conexion);
           
            int cantidad = comando.ExecuteNonQuery();
            if (cantidad == 1)
                this.resultado.Text = "Se borró el usuario";
            else
                this.resultado.Text = "No existe un usuario con dicho nombre";
 conexion.Close();
        }
    }
}