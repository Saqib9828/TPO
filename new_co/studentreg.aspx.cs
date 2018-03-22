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
    public partial class studentreg : System.Web.UI.Page
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

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            sqlcon.Open();
            string namel = ("select * from studentlogin where stid='" + TextBox1.Text + "'");
            SqlCommand cmdl = new SqlCommand(namel, sqlcon);
            SqlDataReader sdrl = cmdl.ExecuteReader();

            while (sdrl.Read())
            {
                Label2.Text = sdrl["stid"].ToString();

            }
            sqlcon.Close();
            if (Label2.Text == TextBox1.Text)
            {
                Label2.Text = "Enrolment No. already Exists.";
                return;
            }
            
            
            string en = TextBox1.Text;
            string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
            string fileName2 = Path.GetFileName(FileUpload2.PostedFile.FileName);
            string fileName3 = Path.GetFileName(FileUpload3.PostedFile.FileName);
            fileName = en +"_"+fileName;
            fileName2 = en + "_" + fileName2;
            fileName3 = en + "_" + fileName3;
            checksec(TextBox5.Text);
            checksec(TextBox8.Text);
            sqlcon.Open();
            SqlCommand sqlcmd = new SqlCommand("insert into student_data values(@a, @b, @c, @d, @e, '" + TextBox5.Text + "', @g, @h, @i, @j, @k, '" + TextBox8.Text + "', @m, @n, @fileName, @fileName1, @fileName2)", sqlcon);
            sqlcmd.Parameters.AddWithValue("@a", TextBox1.Text);
            sqlcmd.Parameters.AddWithValue("@b", TextBox2.Text);
            sqlcmd.Parameters.AddWithValue("@c", TextBox3.Text);
            sqlcmd.Parameters.AddWithValue("@d", TextBox4.Text);
            sqlcmd.Parameters.AddWithValue("@e", DropDownList1.Text);
            sqlcmd.Parameters.AddWithValue("@g", TextBox6.Text);
            sqlcmd.Parameters.AddWithValue("@h", TextBox7.Text);
            sqlcmd.Parameters.AddWithValue("@i", DropDownList2.Text);
            sqlcmd.Parameters.AddWithValue("@j", DropDownList3.Text);
            sqlcmd.Parameters.AddWithValue("@k", DropDownList4.Text);
            sqlcmd.Parameters.AddWithValue("@m", DropDownList5.Text);
            sqlcmd.Parameters.AddWithValue("@n", TextBox9.Text);
            sqlcmd.Parameters.AddWithValue("@fileName", "~/student/cv/" + fileName);
            sqlcmd.Parameters.AddWithValue("@fileName1", "~/student/id/" + fileName2);
            sqlcmd.Parameters.AddWithValue("@fileName2", "~/student/pic/" + fileName3);

            sqlcmd.ExecuteNonQuery();

            {

                Label1.Text = "Your Registration Success. Confirm your mail login detail.";

            }
            sqlcon.Close();

            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/student/cv/") + fileName);
            FileUpload2.PostedFile.SaveAs(Server.MapPath("~/student/id/") + fileName2);
            FileUpload3.PostedFile.SaveAs(Server.MapPath("~/student/pic/") + fileName3);
            Response.Redirect(Request.Url.AbsoluteUri);
            
        }

        
    }
}