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
    public partial class AdminDashboard : System.Web.UI.Page
    {
        static string cs = WebConfigurationManager.ConnectionStrings["DBConStr"].ConnectionString;
        SqlConnection con = new SqlConnection(cs);
        static string q = "select Name, Dept from AdminDetails where AdminID=@rn";
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            //Doesn't allow for unauthorized access
            string regID = (string)Request.QueryString["RegID"];
            if(regID != (string)Session["RegID"] || Session["RegID"] == null)
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
            nameLbl.Text = "Name: " + rd["Name"];
            deptLbl.Text = "Dept: " + rd["Dept"];
            con.Close();
        }

        protected void btnComp_Click(object sender, EventArgs e)
        {
            string url = "AddCompany.aspx?RegID=" + Server.UrlEncode((string)Session["RegID"]);
            url += "&newCompany=true";
            Response.Redirect(url);
        }

        protected void btnViewComp_Click(object sender, EventArgs e)
        {
            string url = "CompanyList.aspx?RegID=" + Server.UrlEncode((string)Session["RegID"]);
            Response.Redirect(url);
        }

        protected void btnStud_Click(object sender, EventArgs e)
        {
            string url = "StudentList.aspx?RegID=" + Server.UrlEncode((string)Session["RegID"]);
            Response.Redirect(url);
        }

        protected void btnCreateGroup_Click(object sender, EventArgs e)
        {
            string url = "CreateGroup.aspx?RegID=" + Server.UrlEncode((string)Session["RegID"]);
            Response.Redirect(url);
        }
    }
}