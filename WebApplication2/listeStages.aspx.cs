using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace WebApplication2
{
    public partial class listeStages : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInscription_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection(@"Data Source =.\sqlexpress; Initial Catalog = volontaires; User ID = sa; Password = P@ssw0rd");
            cn.Open();
            SqlCommand cm = new SqlCommand("insert into Demande_Inscription values (getdate(),@idVlt,@idStage,'En Attente')", cn);
            cm.Parameters.AddWithValue("@idVlt", Session["id"].ToString());
            cm.Parameters.AddWithValue("@idStage", GridView1.SelectedValue);
            cm.ExecuteNonQuery();
            cn.Close();
            cn = null;
            cm= null;   


        }
    }
}