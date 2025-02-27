using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_category : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\a\Documents\Visual Studio 2015\WebSites\youtube\youtube.mdf;Integrated Security=True;Connect Timeout=30");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["did"] != null)
        {
            SqlDataAdapter da = new SqlDataAdapter("delete from cat where id=" + Request.QueryString["did"], cn);
            DataTable Dt = new DataTable();
            da.Fill(Dt);
        }
        if (!IsPostBack)
        {
            if (Request.QueryString["edi"] != null)
            {
                SqlDataAdapter da = new SqlDataAdapter("select * from cat where id=" + Request.QueryString["edi"], cn);
                DataTable Dt = new DataTable();
                da.Fill(Dt);
                catnm.Text = Dt.Rows[0][1].ToString();
            }
        }
        show();
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("insert into cat values('" + catnm.Text +"')", cn);
        DataTable dt = new DataTable();
        da.Fill(dt);
        show();
        catnm.Text = null;
    }



    protected void gv_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    
    private void show()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from cat", cn);
        DataTable dt = new DataTable();
        da.Fill(dt);
        gv.DataSource = dt;
        gv.DataBind();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("update cat set catname='" + catnm.Text + "' where id=" + Request.QueryString["edi"], cn);
        DataTable Dt = new DataTable();
        da.Fill(Dt);
        show();
        catnm.Text = null;
    }
}