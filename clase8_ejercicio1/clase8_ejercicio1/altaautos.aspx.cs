using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace clase8_ejercicio1
{
    public partial class altaautos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath(".") + "/" + this.FileUpload1.FileName);
            this.SqlDataSourceautos.InsertParameters["patente"].DefaultValue = this.TextBox1.Text;
            this.SqlDataSourceautos.InsertParameters["propietario"].DefaultValue = this.TextBox2.Text;
            this.SqlDataSourceautos.InsertParameters["precio"].DefaultValue = this.TextBox3.Text;
            this.SqlDataSourceautos.InsertParameters["modelo"].DefaultValue = this.TextBox4.Text;
            this.SqlDataSourceautos.InsertParameters["codigomarca"].DefaultValue = this.DropDownList1.SelectedValue;
            this.SqlDataSourceautos.InsertParameters["foto"].DefaultValue = this.FileUpload1.FileName;
            this.SqlDataSourceautos.Insert();
            this.Resultado.Text = "Los datos fueron cargados";
            this.TextBox1.Text = "";
            this.TextBox2.Text = "";
            this.TextBox3.Text = "";
            this.TextBox4.Text = "";
        }
    }
}