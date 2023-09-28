using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ElectionManagementSystem.Views
{
    public partial class Register : System.Web.UI.Page
    {
        int flag = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            if (flag == 1)
            {
                return;
            }
            string username = tbName.Text;
            string email = tbEmail.Text;
            string dob = tbDOB.Text;
            string password = tbPassword.Text;
            string cpassword = tbConfirmPassword.Text;
            if (password != cpassword)
            {
                lblConfirmPassword.Text = "Confirm password is not matching with password.";
                return;
            }
            lblConfirmPassword.Text = "";



            EMSEntities db = new EMSEntities();


            Voter voter = new Voter();


            voter.Name = username;
            voter.Email = email;
            voter.DOB = dob;
            voter.Password = password;
            voter.IsVoted = 0;
            db.Voters.Add(voter);
            db.SaveChanges();
            lblSignUpSuccessfull.Text = "Registration is Successfull.";
        }

        protected void EmailUnique_Validate(object source, ServerValidateEventArgs args)
        {
            string email = tbEmail.Text;
            //Response.Write("js js sjs sjjsjjsj");
            EMSEntities db = new EMSEntities();
            Voter voter = db.Voters.Where(x => x.Email == email).FirstOrDefault<Voter>();
            if (voter != null)
            {
                flag = 1;
                lblSignUpSuccessfull.Text = "";
                args.IsValid = false;
            }
        }
    }
}