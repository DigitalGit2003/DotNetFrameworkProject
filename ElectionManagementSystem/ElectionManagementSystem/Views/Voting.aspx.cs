using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ElectionManagementSystem.Views
{
    public partial class Voting : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Bind the Party data to the GridView.
                BindPartyData();
            }
        }

        private void BindPartyData()
        {
            using (EMSEntities db = new EMSEntities())
            {
                var parties = db.Parties.ToList();
                PartyGridView.DataSource = parties;
                PartyGridView.DataBind();
            }
        }



        protected void VoteButton_Click(object sender, EventArgs e)
        {
            string email = Session["email"].ToString();


            Button btnVote = (Button)sender;
            string partyName = btnVote.CommandArgument;

            using (EMSEntities db = new EMSEntities())
            {

                Voter vtr = db.Voters.FirstOrDefault(v => v.Email == email);
                if(vtr.IsVoted == 1)
                {
                    //Page.ClientScript.RegisterStartupScript(this.GetType(), "DisableVoteButtons", "disableAllVoteButtons();", true);
                    Response.Write("<script>alert('You have already voted.');</script>");
                    return;
                }
                var party = db.Parties.FirstOrDefault(p => p.Partyname == partyName);
                if (party != null)
                {
                    // Increase the vote count by 1.
                    party.Votes++;
                    vtr.IsVoted = 1;
                    db.Entry(vtr).State = EntityState.Modified;
                    db.Entry(party).State = EntityState.Modified;
                    db.SaveChanges();

                    // Disable all vote buttons after one is clicked.
                    //Page.ClientScript.RegisterStartupScript(this.GetType(), "DisableVoteButtons", "disableAllVoteButtons();", true);

                    // Re-bind the Party data to update the GridView.
                    BindPartyData();

                }
            }
        }




    }
}