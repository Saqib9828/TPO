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

namespace new_co
{
    public partial class hrreg : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            sqlcon.Open();
            SqlCommand sqlcmd = new SqlCommand("insert into prehrreg values( @a, @b, @c, @d, @e, @f, @g, @h, @i)", sqlcon);
            sqlcmd.Parameters.AddWithValue("@a", TextBox1.Text);
            sqlcmd.Parameters.AddWithValue("@b", TextBox10.Text);
            sqlcmd.Parameters.AddWithValue("@c", TextBox13.Text);
            sqlcmd.Parameters.AddWithValue("@d", TextBox5.Text);
            sqlcmd.Parameters.AddWithValue("@e", TextBox14.Text);
            sqlcmd.Parameters.AddWithValue("@f", TextBox11.Text);
            sqlcmd.Parameters.AddWithValue("@g", TextBox12.Text);
            sqlcmd.Parameters.AddWithValue("@h", TextBox7.Text);
            sqlcmd.Parameters.AddWithValue("@i", TextBox9.Text);
            sqlcmd.ExecuteNonQuery();
            {

                Label1.Text = "Your Registration Comleted. Check your mail to confirm your ID.";

            }
            sqlcon.Close();
        }
    }
}