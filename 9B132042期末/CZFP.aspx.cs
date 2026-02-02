using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class CZFP : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ProcButton_Click(object sender, EventArgs e)
    {
        string sqlinput= "";
        if (BirthTextBox.Text.Trim().Length == 0)
            sqlinput = DateTime.Now.Date.ToShortDateString();
        else
            sqlinput = BirthTextBox.Text.Trim();
       
        String conString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\S9B132042.mdf;Integrated Security=True;Connect Timeout=30";
        SqlConnection sqlCon = new SqlConnection(conString);
        sqlCon.Open();
        SqlCommand cmd = new SqlCommand("ChineseZodiacP", sqlCon);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@D", sqlinput);
        SqlParameter RuturnValue = new SqlParameter("@Resultout", SqlDbType.NVarChar, 50);
        RuturnValue.Direction = ParameterDirection.Output;
        cmd.Parameters.Add(RuturnValue);
        cmd.ExecuteNonQuery();
        ResultTextBox.Text = (String)cmd.Parameters["@Resultout"].Value;
        sqlCon.Close();
        //SqlDataSource1.SelectParameters.Add("D", TypeCode.String, sqlinput);
        //SqlDataSource1.SelectParameters[0].Direction = ParameterDirection.Input;
        //SqlDataSource1.SelectParameters[0].Size = 20;
        //SqlDataSource1.SelectParameters.Add("生肖", TypeCode.String, procresult);
        //SqlDataSource1.SelectParameters[1].Direction = ParameterDirection.InputOutput;
        //SqlDataSource1.SelectParameters[1].Size = 20;
        //SqlDataSource1.DataBind();
        //DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        //ResultTextBox.Text = dv[0]["生肖"].ToString();
    }

    protected void CalendarImageButton_Click(object sender, ImageClickEventArgs e)
    {
        Calendar1.Visible = true;
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        BirthTextBox.Text=Calendar1.SelectedDate.ToShortDateString();
        Calendar1.Visible = false;
    }

    protected void ClearButton_Click(object sender, EventArgs e)
    {
        BirthTextBox.Text = "";
        ResultTextBox.Text = "";
    }

    protected void FunButton_Click(object sender, EventArgs e)
    {
        string sqlinput = "";
        if (BirthTextBox.Text.Trim().Length == 0)
            sqlinput = DateTime.Now.Date.ToShortDateString();
        else
            sqlinput = BirthTextBox.Text.Trim();
        String conString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\S9B132042.mdf;Integrated Security=True;Connect Timeout=30";
        SqlConnection sqlCon = new SqlConnection(conString);
        sqlCon.Open();
        SqlCommand cmd = new SqlCommand("select dbo.ChineseZodiacF('" + sqlinput+"')", sqlCon);
        ResultTextBox.Text = cmd.ExecuteScalar().ToString();
        sqlCon.Close();
    }
}