﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace clase5_abm
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.SqlDataSource1.DeleteParameters["codigo"].DefaultValue = this.TextBox1.Text;
            int cant;
            cant = this.SqlDataSource1.Delete();
            if (cant == 1)
                this.resultado.Text = "Se borró el artículo";
            else
                this.resultado.Text = "No existe el codigo";
        }
    }
}