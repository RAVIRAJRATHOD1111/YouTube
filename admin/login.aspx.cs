using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class login : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\a\Documents\Visual Studio 2015\WebSites\youtube\youtube.mdf;Integrated Security=True;Connect Timeout=30");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            Response.Redirect("index.aspx");
        }
    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        if(Page.IsValid)
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from reg where username='" + username.Text + "'and password='" + password.Text + "'", cn);

            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Session["user"] = username.Text;
                Response.Redirect("index.aspx");
            }
            else
            {
                // Inform the user about invalid credentials
                Response.Write("<script>alert('Invalid username & password');</script>");
                
            }
           
        }
    }
}