using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace clase2_ejercicio1
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            StreamReader arch = new StreamReader(this.Server.MapPath(".") +
"/curriculum.txt");
            this.datos.Text = arch.ReadToEnd();
            arch.Close();
        }
    }
}