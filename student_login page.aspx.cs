using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class student_login_page : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.ConnectionString = "Data Source=DHANRAJ_LAPTOP;Initial Catalog=online_exam;User ID=sa;Password=123";
        cn.Open();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

       
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
      
    }




    protected void btn_login_Click(object sender, EventArgs e)
    {

        SqlCommand cmd = new SqlCommand();
        String str = "select * from t_student where stu_id='" + txt_stu_id.Text + "' and stu_password='" + txt_PASSWORD.Text + "'";

        cmd.CommandText = str;
        cmd.Connection = cn;

        SqlDataAdapter da = new SqlDataAdapter(cmd);

        DataSet ds = new DataSet();
        da.Fill(ds);

        if (ds.Tables[0].Rows.Count > 0)
        {
            Session.Contents["id"] = txt_stu_id.Text;
            Session.Contents["name"] = ds.Tables[0].Rows[0].ItemArray[2].ToString();
            Session.Contents["user_type"] = "student";
            Response.Redirect("go_student_page.aspx");
        }
        else
        {
            Response.Write("<script>alert('data not found');</script>");
        }

    }

    protected void btn_create_Click(object sender, EventArgs e)
    {
       
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Create_student_page.aspx");
    }
}
