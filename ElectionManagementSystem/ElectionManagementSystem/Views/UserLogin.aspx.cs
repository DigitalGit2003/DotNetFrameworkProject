using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ElectionManagementSystem.Views
{
    public partial class UserLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //string email = tbEmail.Text;
            //string password = tbPassword.Text;

            //EMSEntities db = new EMSEntities();
            //Voter voter = db.Voters.Where(x => x.Email == email).FirstOrDefault<Voter>();
            //if (voter == null)
            //{
            //    lblEmailValidate.Text = $"User with {email} does not exist";
            //    return;
            //}
            //else
            //{
            //    lblEmailValidate.Text = "";
            //    if (voter.Password != password)
            //    {
            //        lblPasswordValidate.Text = "Enter correct password";
            //        return;
            //    }
            //    else
            //    {
            //        lblPasswordValidate.Text = "";
            //        Session["email"] = email;

            //        Session["role"] = "user";

            //        Response.Redirect("~/Views/Home.aspx");
            //    }
            //}

        }
    }
}
