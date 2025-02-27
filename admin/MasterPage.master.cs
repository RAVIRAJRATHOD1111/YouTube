using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) // Ensure this only runs on the first load of the page
        {
            if (Session["user"] != null) // Check if Session["user"] is not null
            {
                Label1.Text = Session["user"].ToString();
            }
            else
            {
                // Redirect to login if the user session is not available
                Response.Redirect("login.aspx");
            }
        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if(Session["user"] != null)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("login.aspx");
        }
    }
}
