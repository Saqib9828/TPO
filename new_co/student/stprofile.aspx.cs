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

namespace new_co.student
{
    public partial class stprofile : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        
        protected void Page_Load(object sender, EventArgs e)
        {
            String getdata = "SELECT * from student_data where Enro_No='" + Session["stid"] + "'";
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

        protected void Button1_Click(object sender, System.EventArgs e)
        {
            Response.Redirect("studentupdate.aspx");
        }
    }
}