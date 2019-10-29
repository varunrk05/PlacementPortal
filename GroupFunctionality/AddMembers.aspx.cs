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
    public partial class AddMembers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = "";
            string groupname = (string)Session["GroupName"];
            foreach (GridViewRow gvrow in GridView1.Rows)
            {
                var checkbox = gvrow.FindControl("CheckBox1") as CheckBox;
                if (checkbox.Checked)
                {
                    string k = gvrow.Cells[0].Text;
                    string name = gvrow.Cells[1].Text;
                    using (SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;" + "Initial Catalog=UserDetails;Integrated Security=SSPI"))
                    {
                        using (SqlCommand cmd = new SqlCommand("insert into studentgroups values (@f1,@f2,@f3)", con))
                        {
                            con.Open();
                            int reg;
                            int.TryParse(k, out reg);
                            cmd.Parameters.AddWithValue("f1", reg);
                            cmd.Parameters.AddWithValue("f2", name);
                            cmd.Parameters.AddWithValue("f3",groupname);
                            int l = cmd.ExecuteNonQuery();
                            if (l != 0)
                            {
                                Label1.Text += name + " ADDED";
                            }


                        }

                    }
                }
            }
        }
    }
}