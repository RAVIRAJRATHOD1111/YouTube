using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class youtube : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\a\Documents\Visual Studio 2015\WebSites\youtube\youtube.mdf;Integrated Security=True;Connect Timeout=30");

    protected void Page_Load(object sender, EventArgs e)
    {
       
        SqlDataAdapter da = new SqlDataAdapter("SELECT title, chname, video FROM upload", cn);
        DataTable dt = new DataTable();
        da.Fill(dt);
        DataList1.DataSource = dt;
        DataList1.DataBind();

    }

}