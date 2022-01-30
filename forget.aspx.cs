using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Specialized;

namespace bookstoreonline
{
    public partial class forget : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           

            

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            String mycon = "Data Source=localhost\\SQLEXPRESS;Database=master;Trusted_Connection=True;";
            SqlConnection scon = new SqlConnection(mycon);
            scon.Open();
            SqlCommand cmd = new SqlCommand("select ph from logindetails where username=@UserName", scon);
            cmd.Parameters.AddWithValue("@UserName", TextBox1.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            int s = 0;
            if (dr.Read())
            {
                TextBox3.Text = dr["ph"].ToString();
                s = s + 1;
            }
            else
            {
                Label6.Text = "INVALID MOBILE NUMBER ENTERED";
            }
            scon.Close();
            if (s == 1)
            {
                Label6.Text = "VERIFIED SUCCESSFUL";
                Panel2.Visible = true;
                Panel1.Visible = false;
            }
        }

        protected void Button2_Click1(object sender, EventArgs e)
        { String mycon = "Data Source=localhost\\SQLEXPRESS;Database=master;Trusted_Connection=True;";
            SqlConnection scon = new SqlConnection(mycon);
            scon.Open();
            SqlCommand cmd = new SqlCommand("UPDATE logindetails SET password=@Password where ph=@PH", scon);
            cmd.Parameters.AddWithValue("@Password", TextBox2.Text);
            cmd.Parameters.AddWithValue("@PH", TextBox3.Text);
            Label6.Text = "PASSWORD CHANGED SUCCESSFULLY";
            HyperLink2.Visible = true;
            

        }
    }
}