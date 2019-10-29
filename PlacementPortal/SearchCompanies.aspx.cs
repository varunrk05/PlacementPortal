using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace PlacementPortal
{
    public partial class SearchCompanies : System.Web.UI.Page
    {
        static string conStr = WebConfigurationManager.ConnectionStrings["DBConStr"].ConnectionString;
        SqlConnection con = new SqlConnection(conStr);
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Dictionary<int, string> d = new Dictionary<int, string>();
                d.Add(0, "None Selected");
                d.Add(1, "P");
                d.Add(2, "I");
                d.Add(3, "P+I");

                ddlOfferType.DataTextField = "Value";
                ddlOfferType.DataValueField = "Key";
                ddlOfferType.DataSource = d;
                ddlOfferType.DataBind();
            }

            string regID = (string)Request.QueryString["RegID"];
            if (regID != (string)Session["RegID"] || Session["RegID"] == null)
            {
                Session.Abandon();
                Response.Redirect("Login.aspx");
            }
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            string url = "StudDashboard.aspx?RegID=";
            url += Server.UrlEncode((string)Session["RegID"]);
            Response.Redirect(url);
        }

        protected void ddlOfferType_SelectedIndexChanged(object sender, EventArgs e)
        {
            string cmdStr;
            if(ddlOfferType.SelectedItem.Text == "P")
            {
                cmdStr = "select * from Company where Placement=@p";
                cmd.CommandText = cmdStr;
                cmd.Connection = con;
                cmd.Parameters.AddWithValue("p", "1");
            }
            else if(ddlOfferType.SelectedItem.Text == "I")
            {
                cmdStr = "select * from Company where Internship=@i";
                cmd.CommandText = cmdStr;
                cmd.Connection = con;
                cmd.Parameters.AddWithValue("i", "1");
            } 
            else if(ddlOfferType.SelectedItem.Text == "P+I")
            {
                cmdStr = "select * from Company where PlaceIntern=@pi";
                cmd.CommandText = cmdStr;
                cmd.Connection = con;
                cmd.Parameters.AddWithValue("pi", "1");
            }

            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            gvCompOffer.DataSource = dr;
            gvCompOffer.DataBind();
            con.Close();
        }
    }
}