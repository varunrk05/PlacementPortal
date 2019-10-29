using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace PlacementPortal
{
    public partial class ViewGroups : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string regID = (string)Request.QueryString["RegID"];
            if (regID != (string)Session["RegID"] || Session["RegID"] == null)
            {
                Session.Abandon();
                Response.Redirect("Login.aspx");
            }

            DataSet ds = new DataSet();
            string reg = regID;
            string cs = WebConfigurationManager.ConnectionStrings["DBConStr"].ConnectionString;
            string cmdtxt = "Select groupname as GroupName from studentgroups where regno = @f1";
            using (SqlConnection con = new SqlConnection(cs))
            {
                using (SqlCommand cmd = new SqlCommand(cmdtxt, con))
                {
                    cmd.Parameters.AddWithValue("f1", reg);
                    con.Open();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(ds, "ss");
                    con.Close();
                }
            }
            GridView1.DataSource = ds.Tables["ss"];
            GridView1.DataBind();
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            string url = "StudDashboard.aspx?RegID=" + (string)Session["RegID"];
            Response.Redirect(url);
        }
    }
}