using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CCDelayMil : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void AddButton_Click(object sender, EventArgs e)
    {
        //name, inschool, birth, sid, housereg, college, Department, schoolyear, semester, prove
        SqlDataSource3.InsertParameters["name"].DefaultValue = NameTextBox.Text;
        SqlDataSource3.InsertParameters["inschool"].DefaultValue = InschollTextBox.Text;
        SqlDataSource3.InsertParameters["Car"].DefaultValue = CarTextBox.Text;
        SqlDataSource3.InsertParameters["sid"].DefaultValue = SIDTextBox.Text;
        SqlDataSource3.InsertParameters["housereg"].DefaultValue = houseregTextBox.Text;
        SqlDataSource3.InsertParameters["college"].DefaultValue = collegeDropDownList.SelectedValue;
        SqlDataSource3.InsertParameters["Department"].DefaultValue = DepartmentDropDownList.SelectedValue;
        SqlDataSource3.InsertParameters["schoolyear"].DefaultValue = schoolyearDropDownList.SelectedValue;
        SqlDataSource3.InsertParameters["semester"].DefaultValue = semesterRadioButtonList.SelectedValue;
        var unused = SqlDataSource3.Insert();
    }

}
