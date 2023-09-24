using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ElectionManagementSystem.Views
{
    public partial class EMS : System.Web.UI.MasterPage
    {
        int firstTime = 1;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals(""))
                {

                    signin.Visible = true;
                    signup.Visible = true;

                    logout.Visible = false;
                    profile.Visible = false;
                    addparty.Visible = false;
                }
                else if (Session["role"].Equals("admin"))
                {

                    
                    signin.Visible = false;
                    signup.Visible = false;

                    addparty.Visible = true;
                    logout.Visible = true;

                    Response.Write("<script>alert('" + " I am admin " + "');</script>");
                }
                else if (Session["role"].Equals("user"))
                {

                    signin.Visible = false;
                    signup.Visible = false;

                    addparty.Visible = false;
                    logout.Visible = true;
                    profile.Visible = true;
                }


            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }

        protected void logout_Click(object sender, EventArgs e)
        {

            Session["role"] = "";
            Session["email"] = "";

            signin.Visible = true;
            signup.Visible = true;

            logout.Visible = false;
            profile.Visible = false;
            addparty.Visible = false;

            Response.Redirect("Home.aspx");
        }
    }
}
