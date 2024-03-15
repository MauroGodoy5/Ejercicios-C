using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace clase8_ejercicio1
{
    public partial class consultaautospormodelo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.SqlDataSource1.SelectParameters["modelo1"].DefaultValue = this.TextBox1.Text;
            this.SqlDataSource1.SelectParameters["modelo2"].DefaultValue = this.TextBox2.Text;
            this.SqlDataSource1.DataSourceMode = SqlDataSourceMode.DataReader;
            SqlDataReader registros = (SqlDataReader)this.SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            this.resultado.Text = "";
            while (registros.Read() == true)
            {
                this.resultado.Text = this.resultado.Text + "<img src=\"" +
                registros["foto"] + "\"><br><br>";
            }
        }
    }
}