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
    public partial class AddCompany : System.Web.UI.Page
    {
        string constr = WebConfigurationManager.ConnectionStrings["DBConStr"].ConnectionString;
        int p = 0, i = 0, pi = 0, bl = 0;
        float cg, tenm, twelm, dipm;
        string eligBr = "";
        string regid;

        protected void btnHome_Click(object sender, EventArgs e)
        {
            string url = "AdminDashboard.aspx?RegID=";
            url += Server.UrlEncode((string)Session["RegID"]);
            Server.Transfer(url);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            string regID = (string)Request.QueryString["RegID"];
            if (regID != (string)Session["RegID"] || Session["RegID"] == null)
            {
                Session.Abandon();
                Response.Redirect("Login.aspx");
            }
        }

        protected void rblP_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(rblP.SelectedItem.Text == "Yes")
            {
                p = 1;
            } 
        }

        protected void rblI_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(rblI.SelectedItem.Text == "Yes")
            {
                i = 1;
            }
        }

        protected void rblPI_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(rblPI.SelectedItem.Text == "Yes")
            {
                pi = 1;
            }
        }

        protected void cbBranch_SelectedIndexChanged(object sender, EventArgs e)
        {
            eligBr = "";
            for(int i = 0; i < cbBranch.Items.Count; i++)
            {
                if(cbBranch.Items[i].Selected)
                {
                    eligBr += cbBranch.Items[i].Text + " ";
                }
            }
        }

        protected void btnSubComp_Click(object sender, EventArgs e)
        {
            if(Page.IsValid == true)
            {
                float.TryParse(tbCG.Text, out cg);
                float.TryParse(tb10.Text, out tenm);
                float.TryParse(tb12.Text, out twelm);
                float.TryParse(tbDip.Text, out dipm);
                bl = 0;
                regid = (String)Session["RegID"];
                string cmdtext = "insert into Company(Name, Placement, Internship, PlaceIntern, Branches, CGPA, BL, TenMarks, TwelMarks, DipMarks, CTC, Location, AddedBy) values(@n, @p, @i, @pi, @br, @cg, @bl, @tem, @twm, @dm, @ctc, @loc, @ab);";
                using (SqlConnection con = new SqlConnection(constr))
                {
                    SqlCommand cmd = new SqlCommand(cmdtext, con);
                    cmd.Parameters.AddWithValue("n", tbName.Text);
                    cmd.Parameters.AddWithValue("p", p);
                    cmd.Parameters.AddWithValue("i", i);
                    cmd.Parameters.AddWithValue("pi", pi);
                    cmd.Parameters.AddWithValue("br", eligBr);
                    cmd.Parameters.AddWithValue("cg", cg);
                    cmd.Parameters.AddWithValue("bl", bl);
                    cmd.Parameters.AddWithValue("tem", tenm);
                    cmd.Parameters.AddWithValue("twm", twelm);
                    cmd.Parameters.AddWithValue("dm", dipm);
                    cmd.Parameters.AddWithValue("ctc", tbCTC.Text);
                    cmd.Parameters.AddWithValue("loc", tbLoc.Text);
                    cmd.Parameters.AddWithValue("ab", regid);

                    con.Open();
                    int nor = cmd.ExecuteNonQuery();
                    if(nor != 0)
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "insSuccess", "alert('Insertion Succesful!')", true);
                    }
                    con.Close();
                }
            }
        }

    }
}