using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace clase8_upload_de_Archivos
{
    public partial class upload3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (File.Exists(this.Server.MapPath(".") + "/" + this.FileUpload1.FileName))
            {
                this.Label1.Text = "Existe un archivo con dicho nombre en el servidor";
            }
            else
            {
                this.FileUpload1.SaveAs(Server.MapPath(".") + "/imagenes/" +
               this.FileUpload1.FileName);
                this.Label1.Text = "Archivo subido";
            }



            this.Label2.Text =
           this.FileUpload1.PostedFile.ContentLength.ToString();
            this.Label3.Text = this.FileUpload1.FileName;
            this.Label4.Text = this.FileUpload1.PostedFile.ContentType;
        }
    }
}