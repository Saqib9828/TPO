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
    public partial class detailvacancy : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        String pn;
        int pnm;
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
            //get_queiry_no
            pn = Request.QueryString["u"];
            checksec(pn);
            pnm = Convert.ToInt32(pn);

            //select session ext or not
            sqlcon.Open();
            string namel = ("select sr_no from application where vacancy_no='" + pnm + "' and student_enrol='" + Session["stid"] + "'");
            SqlCommand cmdl = new SqlCommand(namel, sqlcon);
            SqlDataReader sdrl = cmdl.ExecuteReader();

            while (sdrl.Read())
            {
                Label7.Text = sdrl["sr_no"].ToString();
                Button1.Enabled = false;
                Label7.Visible = false;
            }
            sqlcon.Close();
            

            //data_bound
            String getdata = "SELECT * FROM [vacancy] WHERE (([sr_no] = '" + pnm + "'))";
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
            pn = Request.QueryString["u"];
            checksec(pn);
            string sta = "Applied";
            pnm = Convert.ToInt32(pn);
            sqlcon.Open();
            SqlCommand sqlcmd = new SqlCommand("insert into application values('" + pnm + "', @b,'" + DateTime.Now.ToString("dd-MM-yyyy") + "', '"+sta+"')", sqlcon);
            sqlcmd.Parameters.AddWithValue("@b", Session["stid"]);
            sqlcmd.ExecuteNonQuery();
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Your Application submited for this Vacancy. ')", true);
                Label7.Text = "Your Application submited for this Vacancy. ";
                Button1.Visible = false;

            }
            sqlcon.Close();
        }
        
    }
}