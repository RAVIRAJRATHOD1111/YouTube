using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_uploadv : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\a\Documents\Visual Studio 2015\WebSites\youtube\youtube.mdf;Integrated Security=True;Connect Timeout=30");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["did"] != null)
        {
            cn.Open();
            SqlCommand cmd = new SqlCommand("delete from upload where id=" + Request.QueryString["did"], cn);
            cmd.ExecuteNonQuery();
            cn.Close();
        }
        if (!IsPostBack)
        {
            if (Request.QueryString["edi"] != null)
            {
                cn.Open();
                SqlCommand cmd = new SqlCommand("select * from upload where id=" + Request.QueryString["edi"], cn);
                SqlDataReader d = cmd.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(d);
                name.Text = dt.Rows[0][2].ToString();
                title.Text = dt.Rows[0][3].ToString();
                desc.Text = dt.Rows[0][4].ToString();
                chname.Text = dt.Rows[0][5].ToString();
                cn.Close();
            }
        }
        if (!IsPostBack)
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from cat", cn);
            DataTable Dt = new DataTable();
            da.Fill(Dt);
            DropDownList1.DataSource = Dt;
            DropDownList1.DataValueField = "id";
            DropDownList1.DataTextField = "catname";
            DropDownList1.DataBind();
        }
        show();
    }
    private void show()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from upload", cn);
        DataTable dt = new DataTable();
        da.Fill(dt);
        gv.DataSource = dt;
        gv.DataBind();
    }
    private void clean()
    {
        name.Text = string.Empty;
        title.Text = string.Empty;
        desc.Text = string.Empty;
        chname.Text = string.Empty;
        DropDownList1.ClearSelection();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            String path;
            string folder = DropDownList1.SelectedItem.ToString().Trim();
            //Directory.CreateDirectory(Server.MapPath(TextBox1.Text));
            Directory.CreateDirectory(Server.MapPath(DropDownList1.SelectedItem.ToString()));
            path = "~/Admin/" + folder + "/" + DateTime.Now.Ticks + FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath(path));

            SqlDataAdapter da = new SqlDataAdapter("insert into upload values('" + DropDownList1.SelectedItem.ToString() + "','" + name.Text + "','" + title.Text + "','" + desc.Text + "','" + chname.Text + "','" + path + "')", cn);
            DataTable Dt = new DataTable();
            da.Fill(Dt);
        }
        show();
        clean();

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            String path;
            string folder = DropDownList1.SelectedItem.ToString().Trim();
            //Directory.CreateDirectory(Server.MapPath(TextBox1.Text));
            Directory.CreateDirectory(Server.MapPath(DropDownList1.SelectedItem.ToString()));
            path = "~/Admin/" + folder + "/" + DateTime.Now.Ticks + FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath(path));

            SqlDataAdapter da = new SqlDataAdapter("update upload set cname='" + DropDownList1.SelectedItem.ToString() + "',name='" + name.Text + "',title='" + title.Text + "',desc='" + desc.Text + "',chname='" + chname.Text + "',video='" + path + "')", cn);
            DataTable Dt = new DataTable();
            da.Fill(Dt);
        }
        show();
        clean();
    }
}