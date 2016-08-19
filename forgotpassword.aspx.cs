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
using System.Data.SqlClient;


public partial class login : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True;User Instance=True");

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["EmailAddress"] = TextBox1.Text;
        conn.Open();
        SqlCommand cmd = new SqlCommand("select * from PROFILE where email ='" + Session["EmailAddress"] + "'", conn);
        SqlDataReader rd = cmd.ExecuteReader();

        if (rd.HasRows)
        {
            string strScript = "<script>";
            strScript += "alert('ACCOUNT DETAILS SENT..');";
            strScript += "window.location='newuser.aspx';";
            strScript += "</script>";
            Page.RegisterClientScriptBlock("strScript", strScript);
        }
        else
        {
            string strScript = "<script>";
            strScript += "alert('INVALID USER..');";
            strScript += "window.location='forgotpassword.aspx';";
            strScript += "</script>";
            Page.RegisterClientScriptBlock("strScript", strScript);
          
        }
        conn.Close();
    }
}
