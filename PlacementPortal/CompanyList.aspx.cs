using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PlacementPortal
{
    public partial class CompanyList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string regID = (string)Request.QueryString["RegID"];
            if (regID != (string)Session["RegID"] || Session["RegID"] == null)
            {
                Session.Abandon();
                Response.Redirect("Login.aspx");
            }
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            string url = "";
            if ((int)Session["User"] == 1)
            {
                url = "StudDashboard.aspx?RegID=";
            } 
            else if((int)Session["User"] == 2)
            {
                url = "AdminDashboard.aspx?RegID=";
            }
            
            url += Server.UrlEncode((string)Session["RegID"]);
            Response.Redirect(url);
        }
    }
}