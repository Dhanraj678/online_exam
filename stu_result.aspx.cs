using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class stu_result : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.ConnectionString = "Data Source=DHANRAJ_LAPTOP;Initial Catalog=online_exam;User ID=sa;Password=123";
        cn.Open();
        if (Session.Contents["id"] == null)
            Response.Redirect("student_login page.aspx");


        
        if (!Page.IsPostBack)
            load_ques();



    }
    private void load_ques()
    {
        SqlCommand cmd = new SqlCommand();

        String str = "select t.test_id,s.stu_id,s.stu_name,s.stu_class,s.stu_subject,q.q_id,q.ques,q.op1,q.op2,q.op3,q.op4,q.ans,t.stu_ans,t.correct_ans from t_test t,t_question q,t_student s where q.q_id=t.q_id and t.stu_id=s.stu_id  and test_id='t0002'";

        cmd.CommandText = str;
        cmd.Connection = cn;

        SqlDataAdapter da = new SqlDataAdapter(cmd);

        DataSet ds = new DataSet();
        da.Fill(ds);
        lbl_stu_id.Text = ds.Tables[0].Rows[0].ItemArray[1].ToString();
        lbl_stu_name.Text = ds.Tables[0].Rows[0].ItemArray[2].ToString();
        lbl_class.Text = ds.Tables[0].Rows[0].ItemArray[3].ToString();
        lbl_subject.Text = ds.Tables[0].Rows[0].ItemArray[4].ToString();

        GridView1.DataSource = ds;
        GridView1.DataBind();


    }
}