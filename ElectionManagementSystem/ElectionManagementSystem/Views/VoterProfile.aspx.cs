using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ElectionManagementSystem.Views
{
    public partial class VoterProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            EMSEntities db = new EMSEntities();
            string email = Session["email"].ToString();
            Voter vtr = db.Voters.FirstOrDefault(v => v.Email == email);

            string name = vtr.Name;

            string dob = vtr.DOB;
            string address = vtr.Address;
            string oldpassword = vtr.Password;
            string phone = vtr.Phone;


            tbName.Text = name;
            tbEmail.Text = email;
            tbDOB.Text = dob;
            tbAddress.Text = address;
            tbOldPassword.Text = oldpassword;
            tbPhone.Text = phone;


        }

        protected void Update_Click(object sender, EventArgs e)
        {

            string name = tbName.Text;
            string dob = tbDOB.Text;
            string address = tbAddress.Text;
            string phone = tbPhone.Text;
            string newpass = tbNewPassword.Text;

            if (newpass.Equals(""))
            {
                newpass = tbOldPassword.Text;
            }

            using (EMSEntities db = new EMSEntities())
            {
                string email = Session["email"].ToString();
                Voter vtr = db.Voters.FirstOrDefault(v => v.Email == email);

                vtr.Name = name;
                vtr.DOB = dob;
                vtr.Address = address;
                vtr.Phone = phone;
                vtr.Password = newpass;

                db.Entry(vtr).State = EntityState.Modified;
                db.SaveChanges();

                Response.Write("<script>alert'debug : "+ address + "/ " + phone +"');</script>");
            }
        }
    }
}