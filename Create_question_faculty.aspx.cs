using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Data;

public partial class Create_question_faculty : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.ConnectionString = "Data Source=DHANRAJ_LAPTOP;Initial Catalog=online_exam;User ID=sa;Password=123";
        cn.Open();
        load_class();
        load_sub();





    }
    //for genrating automatic new class values into the create question from class page 
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

    protected void btn_save_Click(object sender, EventArgs e)
    {
        //inserting the data in table 
        id_gen();
        SqlCommand cmd = new SqlCommand();
        String str = "insert into t_question values(";

        str = str + "'" + txt_id.Text + "',";
        // str = str + "'" + txt_name.Text + "',";
        str = str + "'" + txt_question.Text + "',";
        str = str + "'" + txt_op1.Text + "',";
        str = str + "'" + txt_op2.Text + "',";
        str = str + "'" + txt_op3.Text + "',";
        str = str + "'" + txt_op4.Text + "',";
        str = str + "'" + drp_ans.Text + "',";
        str = str + "'" + drp_class.Text + "',";
        str = str + "'" + Drp_subject.Text + "')";


        cmd.CommandText = str;
        cmd.Connection = cn;

        cmd.ExecuteNonQuery();

        Response.Write("<script>alert('DATA IS SAVED THANK YOU')</script>");



    }

    public void id_gen()
    {
        String question_id = "";

        SqlCommand cmd_id = new SqlCommand();

        cmd_id.CommandText = "select max(q_id) from t_question";

        cmd_id.Connection = cn;

        SqlDataAdapter da_id = new SqlDataAdapter(cmd_id);

        DataSet ds_id = new DataSet();

        da_id.Fill(ds_id);

        if (ds_id.Tables[0].Rows[0].ItemArray[0].ToString() == "")
        {

            question_id = "Q0001";
        }
        else
        {
            String old_id = ds_id.Tables[0].Rows[0].ItemArray[0].ToString();
            int a = int.Parse(old_id.Substring(1)) + 1;
            question_id = "Q" + a.ToString().PadLeft(4, '0');
        }

        txt_id.Text = question_id;
    }


    
    protected void btn_delete_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        String str = "delete from t_question where q_id='" + txt_id.Text + "'";

        cmd.CommandText = str;
        cmd.Connection = cn;

        cmd.ExecuteNonQuery();

        Response.Write("<script>alert('DATA IS DELETED')</script>");


    }

    protected void btn_new_Click1(object sender, EventArgs e)
    {

        txt_id.Text = "";
        txt_question.Text = "";
        txt_op1.Text = "";
        txt_op2.Text = "";
        txt_op3.Text = "";
        txt_op4.Text = "";
        drp_ans.SelectedIndex = 0;
        /*drp_class.SelectedIndex = 0;
        Drp_subject.SelectedIndex = 0;*/

        Response.Write("<script>alert('ALL CLEAR')</script>");
    }
}