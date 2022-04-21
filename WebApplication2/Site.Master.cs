using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["pass"] != null)
            {
                if (Session["pass"].ToString() != "ok")
                {
                   Response.Redirect("question3.aspx");
                }
            }
          else
                Response.Redirect("question3.aspx");


// Label1.Text ="connection: id" +" "+ Session["id"].ToString() + " " + Session["Nom"].ToString() + " " + Session["Prenom"].ToString();
        }
    }
}