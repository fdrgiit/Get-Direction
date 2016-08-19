using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class AdminPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        
        Response.Redirect("AdminPage.aspx#suggestions");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminPage.aspx#users");

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminPage.aspx#profile");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminPage.aspx#register");
    }
}
