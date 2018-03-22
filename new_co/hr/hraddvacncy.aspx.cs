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

namespace new_co.hr
{
    public partial class hraddvacncy : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        
        private void checksec(string pn)
        {
            if (pn == "" || pn == null)
            {
                Response.Redirect("~/Default.aspx");
            }
            int strleng = pn.Length;
            char sing1 = Convert.ToChar(34);
            char sing2 = Convert.ToChar(39);
            char sing3 = Convert.ToChar(36);
            char sing4 = Convert.ToChar(59);
            char sing5 = Convert.ToChar(61);


            if (strleng > 14)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('URL not found')", true);

                Response.Redirect("~/Default.aspx");
            }

            for (int i = 0; i < strleng; i++)
            {
                if (pn[i] == sing1 || pn[i] == sing2 || pn[i] == sing3 || pn[i] == sing4 || pn[i] == sing5)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('URL not found')", true);
                    Response.Redirect("~/Default.aspx");
                }
            }

        }
        
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Text = Convert.ToString(Session["hrid"]);
            sqlcon.Open();
            string namel = ("select cid from hrprofile  where hrid='" + TextBox1.Text + "'");
            SqlCommand cmdl = new SqlCommand(namel, sqlcon);
            SqlDataReader sdrl = cmdl.ExecuteReader();

            while (sdrl.Read())
            {
                TextBox2.Text = sdrl["cid"].ToString();
            }
            sqlcon.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            checksec(TextBox3.Text);
            checksec(TextBox12.Text);
            checksec(TextBox4.Text);
            checksec(TextBox13.Text);
            sqlcon.Open();
            SqlCommand sqlcmd = new SqlCommand("insert into vacancy values( @a, @b,'" + TextBox3.Text + "','" + TextBox12.Text + "','" + TextBox4.Text + "', @f, @g,'" + TextBox13.Text + "', @i, @j, @k, @l, @m, @n, @o, @p)", sqlcon);
            sqlcmd.Parameters.AddWithValue("@a", TextBox1.Text);
            sqlcmd.Parameters.AddWithValue("@b", TextBox2.Text);
            sqlcmd.Parameters.AddWithValue("@f", DropDownList1.Text);
            sqlcmd.Parameters.AddWithValue("@g", Label3.Text);
            sqlcmd.Parameters.AddWithValue("@i", " ");
            sqlcmd.Parameters.AddWithValue("@j", TextBox9.Text);
            sqlcmd.Parameters.AddWithValue("@k", TextBox8.Text);
            sqlcmd.Parameters.AddWithValue("@l", TextBox7.Text);
            sqlcmd.Parameters.AddWithValue("@m", TextBox14.Text);
            sqlcmd.Parameters.AddWithValue("@n", TextBox16.Text);
            sqlcmd.Parameters.AddWithValue("@o", TextBox17.Text);
            sqlcmd.Parameters.AddWithValue("@p", Label2.Text);
            sqlcmd.ExecuteNonQuery();
            {

                Label1.Text = "Vacancy Published";

            }
                sqlcon.Close();
        }

        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox2.Checked == true)
            {
                TextBox17.Text = "Home";
                TextBox17.Visible = false;
            }
            else
            {
                TextBox17.Text = "";
                TextBox17.Visible = true;
            }
        }

        protected void CheckBox3_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox4.Checked == true && CheckBox3.Checked == true)
            {
                TextBox13.Text = "2";
                TextBox13.Visible = false;
            }
            else if (CheckBox4.Checked == true)
            {
                TextBox13.Text = "1";
                TextBox13.Visible = false;
            }
            else if (CheckBox3.Checked == true)
            {
                TextBox13.Text = "0";
                TextBox13.Visible = false;
            }
            else
            {
                TextBox13.Text = "";
                TextBox13.Visible = true;
            }
        }

        protected void CheckBox5_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox5.Checked == true && CheckBox6.Checked == true)
            {
                Label3.Text = "Both";
            }
            else if (CheckBox6.Checked == true)
            {
                Label3.Text = "Part Time";
            }
            else if (CheckBox5.Checked == true)
            {
                Label3.Text = "Full Time";
            }
            else
            {
                Label3.Text = "Not Mentioned";
            }
        }

        
    }
}