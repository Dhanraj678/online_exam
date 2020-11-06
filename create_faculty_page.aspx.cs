using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class create_faculty_page : System.Web.UI.Page
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
        SqlCommand cmd = new SqlCommand();
        String str = "insert into t_faculty values(";
        str = str + "'" + txt_id.Text + "',";
        str = str + "'" + txt_password.Text + "',";
        str = str + "'" + txt_name.Text + "',";
        str = str + "'" + drp_class.Text + "',";
        str = str + "'" + Drp_subject.Text + "',";
        str = str + "'" + Txt_aadhar.Text + "',";
        str = str + "'" + txt_email.Text + "',";
        str = str + "'" + txt_date.Text + "')";


        cmd.CommandText = str;
        cmd.Connection = cn;

        cmd.ExecuteNonQuery();

        Response.Write("<script>alert('DATA SAVED')</script>");

    }
    //creating the automatic id creation 
    private void id_gen()
    {
        String faculty_id = "";

        SqlCommand cmd_id = new SqlCommand();

        cmd_id.CommandText = "select max(f_id) from t_faculty";

        cmd_id.Connection = cn;

        SqlDataAdapter da_id = new SqlDataAdapter(cmd_id);

        DataSet ds_id = new DataSet();

        da_id.Fill(ds_id);

        if(ds_id.Tables[0].Rows[0].ItemArray[0].ToString() == "")
        {

            faculty_id = "F0001";
        }
        else
        {
            String old_id = ds_id.Tables[0].Rows[0].ItemArray[0].ToString();
            int d = int.Parse(old_id.Substring(1)) + 1;
            faculty_id = "F" + d.ToString().PadLeft(4, '0');
        }
        txt_id.Text = faculty_id;
    }

    protected void btn_update_Click(object sender, EventArgs e)
    {

    }
}