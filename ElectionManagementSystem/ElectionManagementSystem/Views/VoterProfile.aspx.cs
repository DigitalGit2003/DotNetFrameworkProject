using System;
using System.Collections.Generic;
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
            
            string dob = vtr.DOB.ToString();
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
    }
}