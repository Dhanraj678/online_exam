using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class class_master : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.ConnectionString = "Data Source=DHANRAJ_LAPTOP;Initial Catalog=online_exam;User ID=sa;Password=123";
        cn.Open();
    }

    protected void btn_save_Click(object sender, EventArgs e)
    {
        id_gen();
        String str = "insert into t_class values(";
        str = str + "'" + txt_id.Text + "',";
        str = str + "'" + txt_name.Text + "',";
        str = str + "'" + txt_DISCREPTION.Text + "')";

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = str;
        cmd.Connection = cn;

        cmd.ExecuteNonQuery();

        Response.Write("<script>alert('data is save thank you')</script>");

    }

    protected void btn_NEW_Click(object sender, EventArgs e)
    {
        txt_id.Text = "";
        txt_name.Text = "";
        txt_DISCREPTION.Text = "";

        Response.Write("<script>alert('data has been clear thank you')</script>");
    }
    //creating the auto id gen
    private void id_gen()
    {
        String class_id = "";

        SqlCommand cmd_id = new SqlCommand();

        cmd_id.CommandText = "select max(class_id) from t_class";

        cmd_id.Connection = cn;

        SqlDataAdapter da_id = new SqlDataAdapter(cmd_id);

        DataSet ds_id = new DataSet();

        da_id.Fill(ds_id);

        if (ds_id.Tables[0].Rows[0].ItemArray[0].ToString() == "")
        {

            class_id = "C0001";
        }
        else
        {
            String old_id = ds_id.Tables[0].Rows[0].ItemArray[0].ToString();
            int d = int.Parse(old_id.Substring(1)) + 1;
            class_id = "C" + d.ToString().PadLeft(4, '0');
        }
        txt_id.Text = class_id;
    }

    protected void btn_list_Click(object sender, EventArgs e)
    {
        Response.Redirect("class_grid_view.aspx");
    }

    protected void btn_danger_Click(object sender, EventArgs e)
    {
        Response.Redirect("subject_master_page.aspx");
    }
}