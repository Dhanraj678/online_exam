using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class subject_page : System.Web.UI.Page
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
        String str = "insert into t_subject values(";
        str = str + "'" + txt_id.Text + "',";
        str = str + "'" + txt_name.Text + "',";
        str = str + "'" + txt_DISCREPTION.Text + "')";

        SqlCommand cmd = new SqlCommand();

        cmd.CommandText = str;

        cmd.Connection = cn;

        cmd.ExecuteNonQuery();

        Response.Write("<script>alert('DATA IS SAVED')</script>");


    }
    //creating the automatic id creation 
    private void id_gen()
    {
        String sub_id = "";

        SqlCommand cmd_id = new SqlCommand();

        cmd_id.CommandText = "select max(sub_id) from t_subject";

        cmd_id.Connection = cn;

        SqlDataAdapter da_id = new SqlDataAdapter(cmd_id);

        DataSet ds_id = new DataSet();

        da_id.Fill(ds_id);

        if (ds_id.Tables[0].Rows[0].ItemArray[0].ToString() == "")
        {

            sub_id = "S0001";
        }
        else
        {
            String old_id = ds_id.Tables[0].Rows[0].ItemArray[0].ToString();
            int d = int.Parse(old_id.Substring(1)) + 1;
            sub_id = "S" + d.ToString().PadLeft(4, '0');
        }
        txt_id.Text = sub_id;
    }

    protected void btn_NEW_Click(object sender, EventArgs e)
    {
        txt_id.Text = "";
        txt_name.Text = "";
        txt_DISCREPTION.Text = "";

        Response.Write("<script>alert('TEXT BOX IS CLEARED')</script>");
    }

    protected void btn_list_Click(object sender, EventArgs e)
    {
        Response.Redirect("question_grid_view.aspx");
    }
}