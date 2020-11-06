using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class test_student : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection();
    int[] ar = new int[100];
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.ConnectionString = "Data Source=DHANRAJ_LAPTOP;Initial Catalog=online_exam;User ID=sa;Password=123";
        cn.Open();
        if (Session.Contents["id"] == null)
            Response.Redirect("student_login page.aspx");
        lbl_stu_id.Text = Session.Contents["id"].ToString();
        lbl_stu_name.Text = Session.Contents["name"].ToString();
        lbl_stu_class.Text = Session.Contents["class"].ToString();
        lbl_stu_sub.Text = Session.Contents["subject"].ToString();

        if(!Page.IsPostBack)
            load_ques();



    }
    private void load_ques()
    {
        SqlCommand cmd = new SqlCommand();

        String str = "select * from t_question where class='" + lbl_stu_class.Text + "' and subject='" + lbl_stu_sub.Text + "'";

        cmd.CommandText = str;
        cmd.Connection = cn;

        SqlDataAdapter da = new SqlDataAdapter(cmd);

        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            gen_rand(5);

            DataTable dt = new DataTable();
            dt.Columns.Add("q_id");
            dt.Columns.Add("ques");
            dt.Columns.Add("op1");
            dt.Columns.Add("op2");
            dt.Columns.Add("op3");
            dt.Columns.Add("op4");
            dt.Columns.Add("ans");
            dt.Columns.Add("class");
            dt.Columns.Add("subject");


            for (int i = 0; i < 5; i++)
            {
                dt.ImportRow(ds.Tables[0].Rows[ar[i]]);
            }

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        if (lbl_sec.Text == "0")
        {
            lbl_sec.Text = "59";
            lbl_mint.Text = (int.Parse(lbl_mint.Text) - 1).ToString();

        }
        else
        {
            lbl_sec.Text = (int.Parse(lbl_sec.Text) - 1).ToString();
            if (lbl_mint.Text == "0" && lbl_sec.Text == "0")
            {
                Timer1.Enabled = false;
                id_gen();
                save();
             
            }
        }
    }

    /*generating the ramdom number code*/
    private void gen_rand(int l)
    {
        
        int f;
        for (int i = 0; i < l;)
        {
            Random r = new Random();

            int n = r.Next(0, 10);

            f= 0;

            for (int j = 0; j < i; j++)
            {
                if (n == ar[j])
                {
                    f = 1;
                    break;
                }
            }
            if (f == 0)
            {
                ar[i] = n;
                i++;
            }
        }


    }








    protected void btn_new_Click(object sender, EventArgs e)
    {
        id_gen();
        save();
      

    }
    //creating the automatic id creation 
    private void id_gen()
    {
        String test_id = "";

        SqlCommand cmd_id = new SqlCommand();

        cmd_id.CommandText = "select max(test_id) from t_test";

        cmd_id.Connection = cn;

        SqlDataAdapter da_id = new SqlDataAdapter(cmd_id);

        DataSet ds_id = new DataSet();

        da_id.Fill(ds_id);

        if (ds_id.Tables[0].Rows[0].ItemArray[0].ToString() == "")
        {

            test_id = "T0001";
        }
        else
        {
            String old_id = ds_id.Tables[0].Rows[0].ItemArray[0].ToString();
            int d = int.Parse(old_id.Substring(1)) + 1;
            test_id = "T" + d.ToString().PadLeft(4, '0');
        }
         lbl_test_id.Text= test_id;
    }

    private void save()
    {
        int i;
        DropDownList dans;
        for (i = 0; i < GridView1.Rows.Count; i++)
        {
            String str = "insert into t_test values(";
            str = str + "'" + lbl_test_id.Text + "',";
            str = str + "'" + lbl_stu_id.Text + "',";
            str = str + "'" + lbl_stu_class.Text + "',";
            str = str + "'" + lbl_stu_sub.Text + "',";

            Label q_id = new Label();
            q_id = (Label)GridView1.Rows[i].FindControl("lbl_q_id");
            str = str + "'" + q_id.Text + "',";

           // DropDownList dans = new DropDownList();

            dans = (DropDownList)GridView1.Rows[i].FindControl("drp_ans1");

            str = str + "'" + dans.SelectedIndex + "',";

            Label l_ans = new Label();
            l_ans = (Label)GridView1.Rows[i].FindControl("lbl_ans");

            str = str + "'" + l_ans.Text + "',";

            str = str + "'" + DateTime.Today.Year.ToString() + "-" + DateTime.Today.Month.ToString() + "-" + DateTime.Today.Day.ToString() + "')";

            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = str;
            cmd.Connection = cn;

            cmd.ExecuteNonQuery();
           

        }
        Response.Write("<script>alert('YOUR DATA HAS BEEN SUBMITED THANKU');</script>");
        Response.Redirect("index.aspx");
    }

}
