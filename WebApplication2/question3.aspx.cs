using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication2
{
    public partial class question3 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {if(!IsPostBack)
            Session["nbFois"]=0;
            Label2.Text = Session["nbFois"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection(@"Data Source =.\sqlexpress; Initial Catalog = volontaires; User ID = sa; Password = P@ssw0rd");
            cn.Open();
            SqlCommand cm = new SqlCommand("select * from volontaire where actif = 1 and mail = '"+txtmail.Text+"'", cn) ;
            SqlDataReader dr = cm.ExecuteReader();
            Session["pass"] = "";
            Session["id"] = "";
            Session["Nom"] = "";
            Session["Prenom"] = "";

            if (dr.Read())
            {
                if (dr["mot_passe"].ToString() == txtpwd.Text)
                {
                    Session["pass"] = "ok";
                    Session["id"] = dr["id_vlt"];
                    Session["Nom"] = dr["nom_vlt"];
                    Session["Prenom"] = dr["prenom_vlt"];

                }
            }
            dr.Close();
            dr = null;
            
             if (Convert.ToInt32(Session["nbFois"]) == 3)
            {
                cm = new SqlCommand("update volontaire set actif=0 where mail ='" + txtmail.Text + "'", cn);
                cm.ExecuteNonQuery();
                Label3.Visible = true;
            }
 
            cm =null;
            cn.Close();
            cn=null;

            if (Session["pass"].ToString() == "ok")
                Response.Redirect("listeStages.aspx");
            else
            {
                Label1.Visible = true;
                Session["nbFois"]= Convert.ToInt32(Session["nbFois"]) + 1;
            }
         

        }
    }
}