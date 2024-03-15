using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace clase8_ejercicio1
{
    public partial class consultamarcaauto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.SqlDataSourceauto.SelectParameters["codigomarca"].DefaultValue = this.DropDownList1.SelectedValue;
            this.SqlDataSourceauto.DataSourceMode = SqlDataSourceMode.DataReader;
            SqlDataReader registros =
           (SqlDataReader)this.SqlDataSourceauto.Select(DataSourceSelectArguments.Empty);
            this.resultado.Text = "";
            while (registros.Read() == true)
            {
                this.resultado.Text = this.resultado.Text + "<img src=\"" +
                registros["foto"] + "\"><br>";
            }
        }
    }
}