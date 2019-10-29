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
    public partial class StudDashboard : System.Web.UI.Page
    {
        static string cs = WebConfigurationManager.ConnectionStrings["DBConStr"].ConnectionString;
        SqlConnection con = new SqlConnection(cs);
        static string q = "select [First Name], [Branch] from UserDetails where [Registration Number]=@rn";
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            //Doesn't allow for unauthorized access
            string regID = (string)Request.QueryString["RegID"];
            if (regID != (string)Session["RegID"] || Session["RegID"] == null)
            {
                Session.Abandon();
                Response.Redirect("Login.aspx");
            }

            cmd.CommandText = q;
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("rn", regID);
            con.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            rd.Read();
            regLbl.Text = "Reg. No: " + regID;
            nameLbl.Text = "Name: " + rd["First Name"].ToString();
            branchLbl.Text = "Branch: " + rd["Branch"].ToString();
            con.Close();
        }

        protected void btnViewComp_Click(object sender, EventArgs e)
        {
            string url = "CompanyList.aspx?RegID=" + Server.UrlEncode((string)Session["RegID"]);
            Response.Redirect(url);
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string url = "SearchCompanies.aspx?RegID=" + Server.UrlEncode((string)Session["RegID"]);
            Response.Redirect(url);
        }

        protected void btnUpdProf_Click(object sender, EventArgs e)
        {
            string url = "EditDetails.aspx?RegID=" + Server.UrlEncode((string)Session["RegID"]);
            Response.Redirect(url);
        }

        protected void btnViewProf_Click(object sender, EventArgs e)
        {
            string url = "ViewProfile.aspx?RegID=" + Server.UrlEncode((string)Session["RegID"]);
            Response.Redirect(url);
        }

        protected void btnGroup_Click(object sender, EventArgs e)
        {
            string url = "ViewGroups.aspx?RegID=" + Server.UrlEncode((string)Session["RegID"]);
            Response.Redirect(url);
        }
    }
}