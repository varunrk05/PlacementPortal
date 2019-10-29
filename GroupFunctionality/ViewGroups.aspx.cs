using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace WebApplication3
{
    public partial class ViewCompanies : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //int reg = (int)Session["Registartion"];
            DataSet ds = new DataSet();
            int reg = 1234;
            string cs = "Data Source=(localdb)\\MSSQLLocalDB;" + "Initial Catalog=UserDetails;Integrated Security=SSPI";
            string cmdtxt = "Select groupname from studentgroups where regno = @f1";
            using (SqlConnection con = new SqlConnection(cs)) {
                using (SqlCommand cmd = new SqlCommand(cmdtxt, con)) {
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
    }
}