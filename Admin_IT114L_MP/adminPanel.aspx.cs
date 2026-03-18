using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Admin_IT114L_MP
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label lblUser = (Label)Master.FindControl("lblUser");
            Label lblRole = (Label)Master.FindControl("lblRole");
            lblUser.Text = "Admin";
            lblRole.Text = "Mannager";

            HyperLink linkDash = (HyperLink)Master.FindControl("linkDash");

            // change highlighted link nav
            if (linkDash != null)
            {
                linkDash.CssClass = "flex items-center gap-3 px-4 py-3 rounded-xl bg-primary text-white font-medium shadow-sm shadow-primary/20";
            }
        }
    }
}