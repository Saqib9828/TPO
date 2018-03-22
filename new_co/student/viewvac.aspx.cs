using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
namespace new_co.student
{
    public partial class viewvac : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        String location_string = "";
        String[] location_array;
        String[] location_array_no_duplicate;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (DropDownList2.Text != "" || DropDownList2.Text !=null )
            {
                Session["locses"] = DropDownList2.Text;
            }
            if (DropDownList1.Text != "" || DropDownList1.Text != null)
            {
                Session["catses"] = DropDownList1.Text;
            }
            // selecting vacancy all
            String getdata = "SELECT * FROM [vacancy]";
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

            //selecting location-A
            sqlcon.Open();
            string namel = ("select location from vacancy order by location");
            SqlCommand cmdl = new SqlCommand(namel, sqlcon);
            SqlDataReader sdrl = cmdl.ExecuteReader();

            while (sdrl.Read())
            {
                location_string += sdrl["location"].ToString();
                location_string += ",";
                
            }
            sqlcon.Close();
            //seprate location-B
            location_array = location_string.Replace(" ", "").Split(',');
            location_array_no_duplicate = location_array.Distinct().ToArray();
            //make dropdown from array-C
            DropDownList2.DataSource = location_array_no_duplicate;
            DropDownList2.DataBind();
            //
            ListItem li = new ListItem();
            li.Text = "-Select Location-";
            li.Value = "-1";
            DropDownList2.Items.Insert(0, li);
            DropDownList2.SelectedIndex = 0;

            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String getdata = "SELECT * FROM [vacancy] WHERE (([cat] LIKE '%' + @cat + '%') AND ([location] LIKE '%' + @location + '%') )";
            SqlCommand cmd = new SqlCommand(getdata, sqlcon);
            cmd.Parameters.AddWithValue("@cat", Session["catses"]);
            cmd.Parameters.AddWithValue("@location", Session["locses"]);
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
        protected void Button2_Click(object sender, EventArgs e)
        {
            DropDownList1.SelectedIndex = -1;
            DropDownList2.SelectedIndex = -1;

        }
}
}