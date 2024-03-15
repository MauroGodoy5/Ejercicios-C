using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace clase8_upload_de_Archivos
{
    public partial class upload2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.FileUpload1.SaveAs(Server.MapPath(".") + "/imagenes/" +
this.FileUpload1.FileName);
            this.resultado.Text = "Archivo subido";
        }
    }
}