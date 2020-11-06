using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class question_grid_view : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.ConnectionString = "Data Source=DHANRAJ_LAPTOP;Initial Catalog=online_exam;User ID=sa;Password=123";
        cn.Open();

        string str = "select * from t_subject";

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = str;
        cmd.Connection = cn;

        SqlDataAdapter da = new SqlDataAdapter(cmd);

        DataSet ds = new DataSet();
        da.Fill(ds);

        GridView1.DataSource = ds;
        GridView1.DataBind();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int row_no = int.Parse(e.CommandArgument.ToString());//how to find row number by this way this code will work
        String s_id = GridView1.Rows[row_no].Cells[1].Text;//row id or record to find to edit 
        Response.Redirect("subject_master_page.aspx?sid="+s_id);//to find and id and go to that page and edit and save through that page
    }
}