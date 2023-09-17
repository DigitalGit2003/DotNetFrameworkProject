using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace ElectionManagementSystem.Views
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            EMSEntities db = new EMSEntities();
            List<Party> allParties = db.Parties.ToList();
            GridView1.DataSource =  allParties ;
            GridView1.DataBind();

        }
    }
}