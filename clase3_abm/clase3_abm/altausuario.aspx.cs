﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Security.Claims;

namespace clase3_abm
{
    public partial class WebForm2 : System.Web.UI.Page
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
            SqlCommand comando = new SqlCommand("insert into usuarios(nombre, clave, mail) values('" +
           
            this.TextBox1.Text + "','" + this.TextBox2.Text +
           "','"
            + this.TextBox3.Text + "')", conexion);
            comando.ExecuteNonQuery();
            this.resultado.Text = "Se registro el usuario";
            conexion.Close();
        }
    }
}