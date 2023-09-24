using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ElectionManagementSystem.Views
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string uname = tbAdminname.Text;
            string password = tbPassword.Text;

            if (uname == "admin" && password == "a")
            {
                Session["role"] = "admin";
                Response.Write("<script>alert('" + Session["role"] + "');</script>");

                Response.Redirect("Home.aspx");
            }
            else
            {
                Response.Write("<script>alert('" + "Enter Correct Credential " + "');</script>");
            }
        }
    }
}

