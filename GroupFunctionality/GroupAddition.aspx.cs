using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;


namespace WebApplication3
{
    public partial class GroupAddition : System.Web.UI.Page
    {
       
        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["GroupName"] = TextBox1.Text;
            Response.Redirect("AddMembers.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;" + "Initial Catalog=UserDetails;Integrated Security=SSPI"))
            {
                using (SqlCommand cmd = new SqlCommand("insert into groups values (@f1,@f2,@f3,@f4)", con))
                {
                    con.Open();
                    cmd.Parameters.AddWithValue("f1", TextBox1.Text);
                    cmd.Parameters.AddWithValue("f2", TextBox2.Text);
                    cmd.Parameters.AddWithValue("f4", TextBox3.Text);
                    int m;
                    int.TryParse(TextBox4.Text, out m);
                    cmd.Parameters.AddWithValue("f3",m);
                    int l = cmd.ExecuteNonQuery();
                    if (l != 0)
                    {
                            Label1.Text = "Group Created";
                        
                    }
                    else {
                        Label1.Text = "NOT";
                    }
                    
                }
            }

        }

       
    }
}