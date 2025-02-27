using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class reg : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\a\Documents\Visual Studio 2015\WebSites\youtube\youtube.mdf;Integrated Security=True;Connect Timeout=30");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnreg_Click(object sender, EventArgs e)
    {
        if(male.Checked == true)
        {
        SqlDataAdapter da = new SqlDataAdapter("insert into reg values('" + name.Text + "','" + add.Text + "','" + city.Text + "','" + email.Text + "','" + male.Text + "','" + user.Text + "','" + pass.Text + "')", cn);
        DataTable dt = new DataTable();
        da.Fill(dt);
            Response.Redirect("login.aspx");
        }
        else
        {
            SqlDataAdapter da = new SqlDataAdapter("insert into reg values('" + name.Text + "','" + add.Text + "','" + city.Text + "','" + email.Text + "','" + female.Text + "','" + user.Text + "','" + pass.Text + "')", cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Response.Redirect("login.aspx");
        }
    }
}