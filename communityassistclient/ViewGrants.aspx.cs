using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewGrants : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userkey"] == null)
        {
            Response.Redirect("Default.aspx");
        }

        GetGrants();
    }

    protected void GetGrants()
    {
        CAServiceReference.CAServiceClient cas = new CAServiceReference.CAServiceClient();
        int key = (int)Session["userkey"];
        CAServiceReference.GrantInfo[] grants = cas.GetGrantsByPerson(key);
        GridView1.DataSource = grants;
        GridView1.DataBind();
    }
}