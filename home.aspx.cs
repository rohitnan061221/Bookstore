using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace bookstoreonline
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DATE.Text = DateTime.Now.ToString("ddd,dd MMM yyy HH':'mm':'ss'IST'");

            Label5.Text = "PLEASE LOG IN FIRST";


        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("contact.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("about.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("registernewuser.aspx");
        }

       
    }
}