using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookShop.Views
{
    public partial class AddBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBookSave_Click(object sender, EventArgs e)
        {
            String BName = tbBookName.Text;
            String Author = tbAuthor.Text;
            int price = int.Parse(tbPrice.Text);
            String Category = tbCategory.Text;

            // save this in books database table through query
            // refer lab06.....
        }
    }
}