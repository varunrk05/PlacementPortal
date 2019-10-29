using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PlacementPortal
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogIn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void Page_PreInit(object sender, EventArgs e)
        {
            if(Session["Theme"] != null)
            {
                Page.Theme = Session["Theme"].ToString();
            }
        }

        protected void btnTheme_Click(object sender, EventArgs e)
        {
            if (Session["Theme"] == null || (string)Session["Theme"] == "Blue")
            {
                Session["Theme"] = "Green";
            }
            else
            {
                Session["Theme"] = "Blue";
            }
            Server.Transfer("Index.aspx");
        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }
    }
}