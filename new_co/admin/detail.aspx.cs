using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace new_co.admin
{
    public partial class detail : System.Web.UI.Page
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
            pn = Request.QueryString["u"];
            checksec(pn);
            string user = pn;
            // selecting 
            String getdata = "SELECT * FROM student_data where Sr_no='"+user+"'";
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
    }
}