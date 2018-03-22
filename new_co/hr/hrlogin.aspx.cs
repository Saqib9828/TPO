using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Configuration;

namespace new_co.hr
{
    public partial class hrlogin : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ValidateUser(TextBox1.Text.Trim(), TextBox2.Text.Trim());
        }
        private void ValidateUser(string p, string p_2)
        {
           

            SqlCommand sqlcmd = new SqlCommand("select * from hrlogin where id=@id and pass=@USERPWD", sqlcon);
            sqlcmd.Parameters.AddWithValue("@id", p);
            sqlcmd.Parameters.AddWithValue("@USERPWD", p_2);
            sqlcon.Open();
            SqlDataAdapter da = new SqlDataAdapter(sqlcmd);
            DataSet ds = new DataSet();

            sqlcmd.ExecuteScalar();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["hrid"] = TextBox1.Text;
                Response.Redirect("hrhome.aspx");

            }
            else
            {

                Label1.Text = "Please Enter correct Username and Passward";
            }
            sqlcon.Close();

        }
    }
}