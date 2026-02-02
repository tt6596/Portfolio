using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void okButton1_Click(object sender, EventArgs e)
    {

        SqlDataSource1.SelectParameters["sid"].DefaultValue = sidTextBox.Text;
        DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        if (dv.Count > 0 && (passwordTextBox.Text.Trim() == dv[0]["password"].ToString()))
            //    Response.Redirect("Aboutus.aspx");
            //else
            //    Response.Write("<script>alert('帳密錯誤請重新輸入');</script>");

            //SqlConnection constr = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\S9A932100.mdf;Integrated Security=True;");
            //SqlCommand cmd = new SqlCommand("select * from userTable where sid=@sid and password=@password", constr);
            //cmd.Parameters.AddWithValue("@sid", sidTextBox.Text);
            //cmd.Parameters.AddWithValue("@password", passwordTextBox.Text);
            //SqlDataAdapter sda = new SqlDataAdapter(cmd);
            //DataTable dt = new DataTable();
            //sda.Fill(dt);
            //constr.Open();
            //int i = cmd.ExecuteNonQuery();
            //constr.Close();

            //if (dt.Rows.Count > 0)
            //{
            if (captchaTextBox.Text.ToString().ToUpper() == Session["randomStr"].ToString())
                Response.Redirect("Aboutus.aspx");
            else
                Response.Write("<script>alert('認證碼有誤，請重新輸入！！');</script>");
        //}
        //else
        //{
        //    Response.Write("<script>alert('帳密錯誤請重新輸入');</script>");
        //}
    }

    protected void captchaImageButton_Click(object sender, ImageClickEventArgs e)
    {
        captchaImage.ImageUrl = "captchadraw.aspx";
    }

    protected void restButton_Click(object sender, EventArgs e)
    {

    }
}