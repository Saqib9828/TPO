using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace new_co.hr
{
    public partial class hreditprofile : System.Web.UI.Page
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
            TextBox1.Text = Session["hrid"] as String;
            checksec(TextBox1.Text);
            sqlcon.Open();
            string namel = ("select name,contact,contact_alter,email,address,fax,website,otherinfo from hrprofile  where hrid='" + TextBox1.Text + "'");
            SqlCommand cmdl = new SqlCommand(namel, sqlcon);
            SqlDataReader sdrl = cmdl.ExecuteReader();

            while (sdrl.Read())
            {
                TextBox2.Text = sdrl["name"].ToString();
                TextBox3.Text = sdrl["contact"].ToString();
                TextBox4.Text = sdrl["contact_alter"].ToString();
                TextBox5.Text = sdrl["email"].ToString();
                TextBox9.Text = sdrl["address"].ToString();
                TextBox6.Text = sdrl["fax"].ToString();
                TextBox7.Text = sdrl["website"].ToString();
                TextBox8.Text = sdrl["otherinfo"].ToString();
            }
            sqlcon.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand sqlcmd = new SqlCommand("Update hrprofile set name='" + TextBox2.Text + "',contact='" + TextBox3.Text + "',contact_alter='" + TextBox4.Text + "',email='" + TextBox5.Text + "',address='" + TextBox9.Text + "',fax='" + TextBox6.Text + "',website='" + TextBox7.Text + "',otherinfo='" + TextBox8.Text + "' where hrid='" + Convert.ToString(Session["hrid"]) + "'", sqlcon);
            sqlcon.Open();
            sqlcmd.ExecuteNonQuery();

            {

                Label1.Text = "Data Update Succesfully";

            }

            sqlcon.Close();
        }
    }
}