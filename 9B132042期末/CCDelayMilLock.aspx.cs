using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CCDelayMilLock : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        if (e.AffectedRows == 0)
            MyMessage.Visible = true;
    }

    protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
    {
        if (e.AffectedRows == 0)
        {
            MyMessage.Visible = true;

            e.KeepInEditMode = true;

            // Rebind the data to the GridView to show the latest changes
            GridView1.DataBind();

        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}