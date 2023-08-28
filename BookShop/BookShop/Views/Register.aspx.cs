using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookShop.Views
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            String Uname = tbRegisterUserName.Text;
            String Pass = tbRegisterPassword.Text;
            // add this user to register table....
            Response.Write($"User : {Uname} ,Password : {Pass}");
        }

        protected void checkConfirmPassword(object source, ServerValidateEventArgs args)
        {
            String Pass = tbRegisterPassword.Text;
            if(args.Value != Pass)
            {
                args.IsValid = false;
            }
            
        }
    }
}