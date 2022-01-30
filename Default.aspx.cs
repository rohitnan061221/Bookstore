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
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            if (dt != null)
            {

                Label3.Text = dt.Rows.Count.ToString();
            }
            else
            {
                Label3.Text = "0";

            }

            if (Session["username"] == null)
            {
                Label9.Text = "Hello Guest,";
                LinkButton2.Visible = false;
                
            }
            else
            {
                Label9.Text = "Hello " + Session["username"].ToString();
                LinkButton2.Visible = true;

            }
            DataTable d = new DataTable();
            d = (DataTable)Session["buyitems"];
            if (d != null)
            {

                Label3.Text = d.Rows.Count.ToString();
            }
            else
            {
                Label3.Text = "0";

            }



        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1"));
            Response.Redirect("AddtoCart.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + dlist.SelectedItem.ToString());
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("home.aspx");
        }
    }
}