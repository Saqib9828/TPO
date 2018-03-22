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
    public partial class studentupdate : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlCommand sqlcmd = new SqlCommand("Update student_data set Mobile_No='" + TextBox1.Text + "', Email_ID='" + TextBox2.Text + "',  Address='" + TextBox3.Text + "' where Enro_No='" + Session["stid"] + "'", sqlcon);
            sqlcon.Open();
            sqlcmd.ExecuteNonQuery();

            {


                Label1.Text = "Updated";


            }

            sqlcon.Close();
        }
    }
}