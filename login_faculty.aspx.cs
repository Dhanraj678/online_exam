using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class login_faculty : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.ConnectionString = "Data Source=DHANRAJ_LAPTOP;Initial Catalog=online_exam;User ID=sa;Password=123";
        cn.Open();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        String str = "select * from t_faculty where f_id='" + txt_fac_id.Text + "' and f_password='" + txt_PASSWORD.Text + "'";

        cmd.CommandText = str;
        cmd.Connection = cn;

        SqlDataAdapter da = new SqlDataAdapter(cmd);

        DataSet ds = new DataSet();
        da.Fill(ds);

        if (ds.Tables[0].Rows.Count > 0)
        {
            Session.Contents["id"] = txt_fac_id.Text;
            Session.Contents["name"] = ds.Tables[0].Rows[0].ItemArray[2].ToString();
            Session.Contents["user_type"] = "faculty";
            Response.Redirect("Create_question_faculty.aspx");
        }
        else
        {
            Response.Write("<script>alert('data not found');</script>");
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("create_faculty_page.aspx");
    }
}
