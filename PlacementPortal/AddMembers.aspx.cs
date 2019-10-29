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
    public partial class AddMembers : System.Web.UI.Page
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            string groupname = (string)Session["GroupName"];
            foreach (GridViewRow gvrow in GridView1.Rows)
            {
                var checkbox = gvrow.FindControl("CheckBox1") as CheckBox;
                if (checkbox.Checked)
                {
                    string k = gvrow.Cells[0].Text;
                    string name = gvrow.Cells[1].Text;
                    string cs = WebConfigurationManager.ConnectionStrings["DBConStr"].ConnectionString;
                    using (SqlConnection con = new SqlConnection(cs))
                    {
                        using (SqlCommand cmd = new SqlCommand("insert into studentgroups values (@f1,@f2,@f3)", con))
                        {
                            con.Open();
                            cmd.Parameters.AddWithValue("f1", k);
                            cmd.Parameters.AddWithValue("f2", name);
                            cmd.Parameters.AddWithValue("f3", groupname);
                            int l = cmd.ExecuteNonQuery();
                            if (l != 0)
                            {
                                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "usrAdd", "alert('User Added!')", true);
                            }
                        }

                    }
                }
            }
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            string url = "AdminDashboard.aspx?RegID=" + (string)Session["RegID"];
            Response.Redirect(url);
        }
    }
}