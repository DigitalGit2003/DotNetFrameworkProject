using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace ElectionManagementSystem.Views
{
    public partial class VoterProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string name = "Sandip";
            string email = "sandip@gmail.com";
            string dob = "29-02-2003";
            string address = "Heaven";
            string oldpassword = "Sandip";
            string phone = "1111111111";
            tbName.Text = name;
            tbEmail.Text = email;
            tbDOB.Text = dob;
            tbAddress.Text = address;
            tbOldPassword.Text = oldpassword;
            tbPhone.Text = phone;

        }
    }
}

