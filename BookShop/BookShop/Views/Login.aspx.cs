using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookShop.Views
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            String Uname = tbLoginPassword.Text;
            String Pass = tbLoginPassword.Text;
            // check in data base of Users
            // if match, then isvalid = true
            // else isvalid = false;

            // Do your Code here....
            Response.Write($"User : {Uname} ,Password : {Pass}");
        }
    }
}