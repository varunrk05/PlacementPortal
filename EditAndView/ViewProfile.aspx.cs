using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
namespace WebApplication13
{
    public partial class ViewProfile : System.Web.UI.Page
    {
        public static DataTable FlipDataTable(DataTable dt)

        {

            DataTable table = new DataTable();

            //Get all the rows and change into columns

            for (int i = 0; i <= dt.Rows.Count; i++)

            {

                table.Columns.Add(Convert.ToString(i));

            }

            DataRow dr;

            //get all the columns and make it as rows

            for (int j = 0; j < dt.Columns.Count; j++)

            {

                dr = table.NewRow();

                dr[0] = dt.Columns[j].ToString();

                for (int k = 1; k <= dt.Rows.Count; k++)

                    dr[k] = dt.Rows[k - 1][j];

                table.Rows.Add(dr);

            }
            return table;

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            int k = (int)Session["Registration"];
            string cs = "Data Source=(localdb)\\MSSQLLocalDB;" + "Initial Catalog=UserDetails;Integrated Security=SSPI";
            string query = "select * from userDetails where [Registraton Number]  = @reg";
            using (SqlConnection con = new SqlConnection(cs)) {
                using (SqlCommand cmd = new SqlCommand(query,con)) {
                    con.Open();
                    cmd.Parameters.AddWithValue("@reg", k);
                    dt.Load(cmd.ExecuteReader());
                }
            }
            GridView1.DataSource = FlipDataTable(dt);
            GridView1.DataBind();

        }
    }
}