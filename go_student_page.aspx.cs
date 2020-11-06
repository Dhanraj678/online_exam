using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class go_student_page : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.ConnectionString = "Data Source=DHANRAJ_LAPTOP;Initial Catalog=online_exam;User ID=sa;Password=123";
        cn.Open();
        load_class();
        load_sub();



    }
    public void load_class()
    {

        // String class_id = "";




        SqlCommand cmd_class = new SqlCommand();

        cmd_class.CommandText = "select * from t_class";

        cmd_class.Connection = cn;

        SqlDataAdapter da_class = new SqlDataAdapter();

        DataSet ds_class = new DataSet();

        da_class.SelectCommand = cmd_class;
        da_class.Fill(ds_class);

        for (int i = 0; i < ds_class.Tables[0].Rows.Count; i++)
        {
            drp_class.Items.Add(ds_class.Tables[0].Rows[i].ItemArray[1].ToString());
        }


    }

    public void load_sub()
    {

        SqlCommand cmd_sub = new SqlCommand();

        cmd_sub.CommandText = "select * from t_subject";
        cmd_sub.Connection = cn;

        SqlDataAdapter da_sub = new SqlDataAdapter();

        DataSet ds_sub = new DataSet();

        da_sub.SelectCommand = cmd_sub;
        da_sub.Fill(ds_sub);

        for (int i = 0; i < ds_sub.Tables[0].Rows.Count; i++)
        {
            Drp_subject.Items.Add(ds_sub.Tables[0].Rows[i].ItemArray[1].ToString());
        }

    }



    protected void btn_new_Click(object sender, EventArgs e)
    {
        Session.Contents["class"] = drp_class.Text;
        Session.Contents["subject"] = Drp_subject.Text;

        Response.Redirect("test_student.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Result_list.aspx");
    }
}