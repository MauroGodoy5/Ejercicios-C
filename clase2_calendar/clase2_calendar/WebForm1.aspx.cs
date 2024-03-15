using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace clase2_calendar
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DateTime fecha = this.Calendar1.SelectedDate;
            string cadena = fecha.Day.ToString() + fecha.Month.ToString() +
           fecha.Year.ToString();
            StreamWriter archi = new StreamWriter(Server.MapPath(".") + "/"
           + cadena);
            archi.Write(this.TextBox1.Text);
            archi.Close();
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            DateTime fecha = this.Calendar1.SelectedDate;
            string cadena = fecha.Day.ToString() + fecha.Month.ToString() +
           fecha.Year.ToString();
            if (File.Exists(Server.MapPath(".") + "/" + cadena))
            {
                StreamReader archi = new StreamReader(Server.MapPath(".") +
               "/" + cadena);
                this.TextBox1.Text = archi.ReadToEnd();
                archi.Close();
            }
            else
            {
                this.TextBox1.Text = "";
            }

        }
    }
}