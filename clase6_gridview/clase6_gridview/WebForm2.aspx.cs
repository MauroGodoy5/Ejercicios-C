using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace clase6_gridview
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                double precio;
                precio = (double)DataBinder.Eval(e.Row.DataItem, "precio");
                if (precio > 2)
                {
                    e.Row.ForeColor = System.Drawing.Color.Red;
                    
                    e.Row.Font.Bold = true;
                }

            }
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.Label1.Text = this.GridView2.Rows[this.GridView2.SelectedIndex].Cells[2].Text;
        }
    }
}