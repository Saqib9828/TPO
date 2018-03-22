using System;
using System.Collections.Generic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Collections.Generic;
using System.Configuration;
using System.Data;

namespace new_co.hr
{
    public partial class stdetail : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        
        protected void Page_Load(object sender, EventArgs e)
        {
            String str = Request.QueryString["u"];

            String getdata = "SELECT * from student_data where Enro_No='" + str + "'";
            SqlCommand cmd = new SqlCommand(getdata, sqlcon);
            sqlcon.Open();
            cmd.ExecuteNonQuery();
            Session[""] = null;
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
            sqlcon.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String str = Request.QueryString["u"];
            String str2 = Request.QueryString["o"];

            string cmd = "UPDATE application SET status ='" + DropDownList1.Text + "' where (student_enrol = '" + str + "' and vacancy_no='"+ str2 +"')";


            SqlCommand sqlcmd = new SqlCommand(cmd, sqlcon);
            sqlcon.Open();
            sqlcmd.ExecuteNonQuery();
            {
                Label14.Text = " Status updated successfully";
            }
            sqlcon.Close();
        }
    }
}