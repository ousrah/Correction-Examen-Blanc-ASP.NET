using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication2
{
    public partial class question2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_inscription_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection(@"Data Source =.\sqlexpress; Initial Catalog = volontaires; User ID = sa; Password = P@ssw0rd");
            cn.Open();
            SqlCommand cm = new SqlCommand("insert into volontaire (id_vlt, nom_vlt, prenom_vlt, mail, Mot_Passe, id_ville, actif) values ((select max(id_Vlt)+1 from volontaire),@nom,@prenom,@mail, @mdp,@ville,1)", cn);
            cm.Parameters.AddWithValue("@nom", txt_nom.Text);
            cm.Parameters.AddWithValue("@prenom", txt_prenom.Text);
            cm.Parameters.AddWithValue("@mail", txt_email.Text);
            cm.Parameters.AddWithValue("@mdp", txt_mdp1.Text);
            cm.Parameters.AddWithValue("@ville", cmb_ville.SelectedValue);
            cm.ExecuteNonQuery();
            cm = null;
            cn.Close();
            cn = null;
        }
    }
}