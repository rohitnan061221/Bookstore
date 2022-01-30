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
    public partial class registernewuser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String mycon = "Data Source=localhost\\SQLEXPRESS;Database=master;Trusted_Connection=True;";
            SqlConnection scon = new SqlConnection(mycon);
            String myquery = "select * from logindetails where username='" + TextBox1.Text + "'";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = scon;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            String uname;
            String pass;
            if (ds.Tables[0].Rows.Count > 0)
            {
                uname = ds.Tables[0].Rows[0]["username"].ToString();
                pass = ds.Tables[0].Rows[0]["password"].ToString();

                scon.Close();
                if (uname == TextBox1.Text && pass == TextBox2.Text)
                {
                    Session["username"] = uname;
                    Session["buyitems"] = null;
                    fillsavedCart();
                    Response.Redirect("Default.aspx");
                }
                else
                {
                    Label3.Text = "Invalid Username or Password - Relogin with Correct Username Password";
                }
            }
            else
            {
                Label3.Text = "Invalid Username or Password - Relogin with Correct Username Password";
            }
        }
        private void fillsavedCart()
        {
            DataTable dt = new DataTable();
            DataRow dr;
            dt.Columns.Add("sno");
            dt.Columns.Add("productid");
            dt.Columns.Add("productname");
            dt.Columns.Add("quantity");
            dt.Columns.Add("price");
            dt.Columns.Add("totalprice");
            dt.Columns.Add("productimage");

            String mycon = "Data Source=localhost\\SQLEXPRESS;Database=master;Trusted_Connection=True;";
            SqlConnection scon = new SqlConnection(mycon);
            String myquery = "select * from SavedCartDetail where username='" + Session["username"].ToString() + "'";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = scon;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                int i = 0;
                int counter = ds.Tables[0].Rows.Count;
                while (i < counter)
                {
                    dr = dt.NewRow();
                    dr["sno"] = i + 1;
                    dr["productid"] = ds.Tables[0].Rows[i]["productid"].ToString();
                    dr["productname"] = ds.Tables[0].Rows[i]["productname"].ToString();
                    dr["productimage"] = ds.Tables[0].Rows[i]["productimage"].ToString();
                    dr["quantity"] = "1";
                    dr["price"] = ds.Tables[0].Rows[i]["price"].ToString();
                    int price1 = Convert.ToInt16(ds.Tables[0].Rows[i]["price"].ToString());
                    int quantity1 = Convert.ToInt16(ds.Tables[0].Rows[i]["quantity"].ToString());
                    int totalprice1 = price1 * quantity1;
                    dr["totalprice"] = totalprice1;
                    dt.Rows.Add(dr);
                    i = i + 1;
                }

            }
            else
            {
                Session["buyitems"] = null;
            }
            Session["buyitems"] = dt;
        }

    }
}