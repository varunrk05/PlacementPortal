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
    public partial class Login : System.Web.UI.Page
    {
        static string conStringDB = WebConfigurationManager.ConnectionStrings["DBConStr"].ConnectionString;
        SqlConnection con = new SqlConnection(conStringDB);
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Dictionary<int, string> LoginOptions = new Dictionary<int, string>();
                LoginOptions.Add(1, "Student");
                LoginOptions.Add(2, "Admin");
                ddlOption.DataTextField = "Value";
                ddlOption.DataValueField = "Key";
                ddlOption.DataSource = LoginOptions;
                ddlOption.DataBind();
            }

            //check.Text = ddlOption.SelectedValue;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string UserOption = ddlOption.SelectedValue;
            string sqlQuery;
            if(UserOption == "1")
            {
                sqlQuery = "select count(*) as NoOfRows from StudentLogin where studentID=@id and studentPass=@pw";
                Session["User"] = 1;
            }
            else
            {
                sqlQuery = "select count(*) as NoOfRows from AdminLogin where adminID=@id and adminPass=@pw";
                Session["User"] = 2;
            }

            cmd.CommandText = sqlQuery;
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("id", tbRegID.Text);
            cmd.Parameters.AddWithValue("pw", tbPassword.Text);
            con.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            rd.Read();
            int NoOfRows = (int)rd["NoOfRows"];
            con.Close();
            if(NoOfRows == 1)
            {
                //Using both session and query string will allow for a check to be maintained
                //Session["RegID"] = tbRegID.Text;
                //Response.Redirect("Dashboard.aspx?RegID=" + tbRegID.Text);
                //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Success')", true);
                int userType = (int)Session["User"];
                Session["RegID"] = tbRegID.Text;
                if (userType == 1)
                {
                    string url = "StudDashboard.aspx?RegID=";
                    url += Server.UrlEncode(tbRegID.Text);
                    Response.Redirect(url);
                }
                else if(userType == 2)
                {
                    string url = "AdminDashboard.aspx?RegID=";
                    url += Server.UrlEncode(tbRegID.Text);
                    Response.Redirect(url);
                }
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Incorrect ID/Password, Please try again!')", true);
            }
        }
    }
}