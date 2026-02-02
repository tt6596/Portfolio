using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;

public partial class CC : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // 在這裡進行 Page_Load 初始化或處理
    }

    protected void GO_Click(object sender, EventArgs e)
    {
        SqlDataSource1.SelectParameters["no"].DefaultValue = A1.Text;
        DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        if (dv.Count > 0)
            A2.Text = dv[0]["rule"].ToString() + "\n" + dv[0]["result"].ToString();
    }

    protected void ResultTextBox_TextChanged(object sender, EventArgs e)
    {
        // 在文本發生變化時執行的邏輯
        string newText = A2.Text;
        // 這裡可以添加你的邏輯，例如保存或處理 newText
    }

    protected void RandomButton_Click(object sender, EventArgs e)
    {
        // 生成 1 到 81 之間的隨機數
        Random random = new Random();
        int randomNumber = random.Next(1, 82);

        // 將隨機數顯示在 A1 TextBox 中
        A1.Text = randomNumber.ToString();
        DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        if (dv.Count > 0)
            A2.Text = dv[0]["rule"].ToString() + "\n" + dv[0]["result"].ToString();
    }

    protected void restButton_Click(object sender, EventArgs e)
    {
        A1.Text = string.Empty;  // 或 A1.Text = "";
        A2.Text = string.Empty;  // 或 A2.Text = "";
    }
}