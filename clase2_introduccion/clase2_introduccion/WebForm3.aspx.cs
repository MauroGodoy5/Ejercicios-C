using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace clase2_introduccion
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            StreamReader arch = new StreamReader(this.Server.MapPath(".") +
"/visitas.txt");
            this.datos.Text = arch.ReadToEnd();
            arch.Close();
        }
    }
}