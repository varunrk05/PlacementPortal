using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Web.Configuration;

namespace PlacementPortal
{
    public partial class CreateGroup : System.Web.UI.Page
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
            string url = "AdminDashboard.aspx?RegID=";
            url += Server.UrlEncode((string)Session["RegID"]);
            Server.Transfer(url);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string cs = WebConfigurationManager.ConnectionStrings["DBConStr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                using (SqlCommand cmd = new SqlCommand("insert into groups values (@f1,@f2,@f3,@f4)", con))
                {
                    con.Open();
                    cmd.Parameters.AddWithValue("f1", TextBox1.Text);
                    cmd.Parameters.AddWithValue("f2", TextBox2.Text);
                    cmd.Parameters.AddWithValue("f4", TextBox3.Text);
                    int m;
                    int.TryParse(TextBox4.Text, out m);
                    cmd.Parameters.AddWithValue("f3", m);
                    int l = cmd.ExecuteNonQuery();
                    if (l != 0)
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "grpCreate", "alert('Group Created!')", true);
                    }
                    else
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "grpCreate", "alert('Group Not Created!')", true);
                    }

                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["GroupName"] = TextBox1.Text;
            string url = "AddMembers.aspx?RegID=" + Server.UrlEncode((string)Session["RegID"]);
            Response.Redirect(url);
        }
    }
}