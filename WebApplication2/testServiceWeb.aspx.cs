using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class testServiceWeb : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                DropDownList1.DataBind();
            }

            ServiceReference1.WebService1SoapClient c = new ServiceReference1.WebService1SoapClient();
            Literal1.Text = c.getInscriptionByVolontaire(Convert.ToInt32(DropDownList1.SelectedValue));

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            ServiceReference1.WebService1SoapClient c = new ServiceReference1.WebService1SoapClient();
            Literal1.Text = c.getInscriptionByVolontaire(Convert.ToInt32(DropDownList1.SelectedValue));
        }
    }
}