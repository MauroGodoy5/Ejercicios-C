using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CLASE9_
{
    public partial class cookiemail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (this.IsPostBack == false)
            {
                if (this.Request.Cookies["mail"] != null)
                {

                    this.TextBox1.Text = this.Request.Cookies["mail"].Value;
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpCookie cookie1 = new
HttpCookie("mail", this.TextBox1.Text);
            cookie1.Expires = new DateTime(2023, 12, 25);
            this.Response.Cookies.Add(cookie1);
        }
    }
}