using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class class_grid_view : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.ConnectionString = "Data Source=DHANRAJ_LAPTOP;Initial Catalog=online_exam;User ID=sa;Password=123";
        cn.Open();

        string str = "select * from t_class";

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
        int row_no = int.Parse(e.CommandArgument.ToString());//to find the grid view row id
        String s_id = GridView1.Rows[row_no].Cells[1].Text;//to do edit in grid view by the help the id
        Response.Redirect("class_master.aspx?sid="+s_id);
    }
}