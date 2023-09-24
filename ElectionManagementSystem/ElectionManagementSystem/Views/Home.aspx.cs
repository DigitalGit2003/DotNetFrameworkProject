using System;
using System.Collections;
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
            //    EMSEntities db = new EMSEntities();
            //    List<Party> allParties = db.Parties.ToList();
            //    GridView1.DataSource =  allParties ;
            //    GridView1.DataBind();




            //foreach (Party party in allParties)
            //{
            LiteralControl partyControl = new LiteralControl();

            partyControl.Text = $@"
<div class = ""row"">
    <div class=""col-md-6"">
        <div class=""m-3 card"">
            <div class=""row no-gutters"">
                <div class=""col-md-4"">
                    <center>
                        <img src=""/PartyLogo/Party-1.png"" width=""190"">
                    </center>
                </div>
                <div class=""col-md-8"">
                    <div class=""card-body"">
                        <h5 class=""card-title"">Spark</h5>
                        <ul class=""list-group list-group-flush"">
                            <li class=""list-group-item"">Party Leader: <b>Sandip</b></li>
                            <li class=""list-group-item"">Age: <b>20</b></li>
                            <li class=""list-group-item"">Total Votes: <b>200</b></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class=""card-footer"">
                <button id=""btnVote"" class=""btn btn-primary btn-lg btn-block"" onclick=""incrementVote();"">Vote</button>
            </div>
        </div>
    </div>

    <div class=""col-md-6"">
        <div class=""m-3 card"">
            <div class=""row no-gutters"">
                <div class=""col-md-4"">
                    <center>
                        <img src=""/images/voter.jpeg"" width=""190"">
                    </center>
                </div>
                <div class=""col-md-8"">
                    <div class=""card-body"">
                        <h5 class=""card-title"">Spark</h5>
                        <ul class=""list-group list-group-flush"">
                            <li class=""list-group-item"">Party Leader: <b>Sandip</b></li>
                            <li class=""list-group-item"">Age: <b>20</b></li>
                            <li class=""list-group-item"">Total Votes: <b>200</b></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class=""card-footer"">
                <button id=""btnVote"" class=""btn btn-primary btn-lg btn-block"" onclick=""incrementVote();"">Vote</button>
            </div>
        </div>
    </div>


    <div class=""col-md-6"">
        <div class=""m-3 card"">
            <div class=""row no-gutters"">
                <div class=""col-md-4"">
                    <center>
                        <img src=""/images/voter.jpeg"" width=""190"">
                    </center>
                </div>
                <div class=""col-md-8"">
                    <div class=""card-body"">
                        <h5 class=""card-title"">Spark</h5>
                        <ul class=""list-group list-group-flush"">
                            <li class=""list-group-item"">Party Leader: <b>Sandip</b></li>
                            <li class=""list-group-item"">Age: <b>20</b></li>
                            <li class=""list-group-item"">Total Votes: <b>200</b></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class=""card-footer"">
                <button id=""btnVote"" class=""btn btn-primary btn-lg btn-block"" onclick=""incrementVote();"">Vote</button>
            </div>
        </div>
    </div>
</div>
    ";


            // Add the HTML for the item to the placeholder
            ItemPlaceholder.Controls.Add(partyControl);
            //}

        }
    }
}


