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
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DropDownList1.Items.Add("CBSE");
            DropDownList1.Items.Add("ICSE");
            DropDownList2.Items.Add("CBSE");
            DropDownList2.Items.Add("ICSE");
            DropDownList3.Items.Add("MIT");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            int k;
            int.TryParse(TextBox11.Text, out k);
            using (SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;" + "Initial Catalog=UserDetails;Integrated Security=SSPI")) {
                using (SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM [UserDetails] WHERE ([Registraton Number] = @user)",con)) {
                    con.Open();
                    cmd.Parameters.AddWithValue("user", k);
                    int userExists = (int)cmd.ExecuteScalar();
                    if (userExists > 0)
                    {
                        //user exists
                        Label1.Text = "USER ALREADY EXISTS";
                        Label1.BackColor = System.Drawing.Color.Red;
                    }
                    else {
                        cmd.CommandText = "insert into UserDetails values(@f0,@f1,@f2,@f3,@f4,@f5,@f6,@f7,@f8,@f9,@f10,@f11,@f12,@f13)";
                        string first, middle, last, permanent, BOE10, BOE12, college, intern, project, extra;
                        float per10, per12, colcgpa;
                        first = TextBox1.Text;
                        middle = TextBox2.Text;
                        last = TextBox3.Text;
                        permanent = TextBox10.Text;
                        BOE10 = DropDownList1.SelectedValue.ToString();
                        BOE12 = DropDownList2.SelectedValue.ToString();
                        college = DropDownList3.SelectedValue.ToString();
                        intern = TextBox7.Text;
                        project = TextBox8.Text;
                        extra = TextBox9.Text;
                        float.TryParse(TextBox4.Text, out per10);
                        float.TryParse(TextBox6.Text, out per12);
                        float.TryParse(TextBox5.Text, out colcgpa);
                        
                        cmd.Parameters.AddWithValue("f0", k);
                        cmd.Parameters.AddWithValue("f1", first);
                        cmd.Parameters.AddWithValue("f2", middle);
                        cmd.Parameters.AddWithValue("f3", last);
                        cmd.Parameters.AddWithValue("f4", permanent);
                        cmd.Parameters.AddWithValue("f5", BOE10);
                        cmd.Parameters.AddWithValue("f6", per10);
                        cmd.Parameters.AddWithValue("f7", BOE12);
                        cmd.Parameters.AddWithValue("f8", per12);
                        cmd.Parameters.AddWithValue("f9", college);
                        cmd.Parameters.AddWithValue("f10", colcgpa);
                        cmd.Parameters.AddWithValue("f11", intern);
                        cmd.Parameters.AddWithValue("f12", project);
                        cmd.Parameters.AddWithValue("f13", extra);
                        int l = cmd.ExecuteNonQuery();
                        if (l != 0) {
                            Label1.BackColor = System.Drawing.Color.Green;
                            Label1.Text = "Record Entered";
                        }
                    }
                }
            }
        }
    }
}