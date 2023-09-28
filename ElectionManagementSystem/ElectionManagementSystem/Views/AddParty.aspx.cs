using System;
using System.Collections.Generic;
using System.Data.Entity.Validation;
using System.IO;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ElectionManagementSystem.Views
{
    public partial class AddParty : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblSaveSuccessfull.Text = "";
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string pname = tbPartyname.Text;
            string senator = tbSenator.Text;
            int age = int.Parse(tbAge.Text);
            int votes = 0;

            // File Path 
            //string filepath = "~/../PartyLogo/";
            //string filename = Path.GetFileName(fuPartylogo.PostedFile.FileName);
            //fuPartylogo.SaveAs(Server.MapPath("../PartyLogo/" + filename));
            //filepath = "~/../PartyLogo/" + filename;


          
            string filename = Path.GetFileName(fuPartylogo.PostedFile.FileName);
            string uploadFolderPath = Server.MapPath("~/PartyLogo/"); // Use "~/PartyLogo/" to specify a virtual path within your app

            // Ensure the "PartyLogo" directory exists, and create it if it doesn't.
            if (!Directory.Exists(uploadFolderPath))
            {
                Directory.CreateDirectory(uploadFolderPath);
            }

            string filePath = Path.Combine(uploadFolderPath, filename);


            fuPartylogo.SaveAs(filePath);

            // Now, 'filePath' contains the full path to the saved file within your application's root directory.



            EMSEntities db = new EMSEntities();
            Party party = db.Parties.Where(x => x.Partyname == pname).FirstOrDefault<Party>();
            if (party != null)
            {
                lblSaveSuccessfull.ForeColor = System.Drawing.Color.Red;
                lblSaveSuccessfull.Text = $"Party with {pname} is already exist!";
                return;
            }

            Party p = new Party();
            p.Partyname = pname;
            p.Senator = senator;
            p.Age = age;
            p.Votes = votes;
            p.Logourl = filename;
            //Response.Write(p.Partyname);
            try
            {
                // Your code...
                // Could also be before try if you know the exception occurs in SaveChanges

                db.Parties.Add(p);
                db.SaveChanges();
                lblSaveSuccessfull.ForeColor = System.Drawing.Color.Green;
                lblSaveSuccessfull.Text = "Party Added Successfully.";
            }
            catch (DbEntityValidationException exp)
            {
                foreach (var eve in exp.EntityValidationErrors)
                {
                  
                    foreach (var ve in eve.ValidationErrors)
                    {
                        Console.WriteLine("- Property: \"{0}\", Value: \"{1}\", Error: \"{2}\"",
                            ve.PropertyName,
                            eve.Entry.CurrentValues.GetValue<object>(ve.PropertyName),
                            ve.ErrorMessage);
                    }
                }
                
            }
         

           
        }
    }
}