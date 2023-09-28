using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ElectionManagementSystem.Views
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            EMSEntities db = new EMSEntities();
            List<Party> allParties = db.Parties.ToList();
            List<Party> sortedParties = allParties.OrderByDescending(p => p.Votes).ThenBy(p => p.Partyname).ToList();




            foreach (Party party in sortedParties)
            {
                LiteralControl partyControl = new LiteralControl();

                partyControl.Text = $@"
                                    <div class = ""row"">
                                    <center>
                                        <div class=""col-md-6"">
                                            <div class=""m-3 card"">
                                                <div class=""row no-gutters"">
                                                    <div class=""col-md-4"">
                                                        <center>
                                                            <img src=""/PartyLogo/{party.Logourl}"" width=""190"">
                                                        </center>
                                                    </div>
                                                    <div class=""col-md-8"">
                                                        <div class=""card-body"">
                                                            <h5 class=""card-title"">{party.Partyname}</h5>

                                                            <ul class=""list-group list-group-flush"">
                                                                <li class=""list-group-item"">Party Leader: <b>{party.Senator}</b></li>
                                                                <li class=""list-group-item"">Age: <b>{party.Age}</b></li>
                                                                <li class=""list-group-item"">Total Votes: <b>{party.Votes}</b></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                               
                                            </div>
                                        </div>
                                        </center>
                                    </div> 
                                    ";

                // Add the HTML for the item to the placeholder
                ItemPlaceholder.Controls.Add(partyControl);
            }

          


        }

       
    }
}