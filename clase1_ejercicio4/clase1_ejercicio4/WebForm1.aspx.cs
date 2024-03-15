using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace clase1_ejercicio4
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            

            Controls.Add(Google);

            

            Controls.Add(Yahoo);

            

            Controls.Add(Bing);

            // Crear el botón y agregarle un controlador de eventos para el evento Click
            Button Button1 = new Button();

           
            Controls.Add(Button1);
            string url = "";
            foreach (Control control in Controls)
            {
                if (control is RadioButton)
                {
                    RadioButton rdo = (RadioButton)control;

                    if (rdo.Checked)
                    {
                        switch (rdo.Text)
                        {
                            case "google":
                                url = "https://www.google.com";
                                break;
                            case "bing":
                                url = "https://www.bing.com";
                                break;
                            case "yahoo":
                                url = "https://www.yahoo.com";
                                break;
                        }
                    }
                }
            }

            if (!string.IsNullOrEmpty(url))
            {
                Response.Redirect(url);
            }
        }
    }
}
    
