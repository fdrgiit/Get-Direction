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
using System.Data;
using System.Data.SqlClient;


public partial class ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|getDir.mdf;Integrated Security=True;User Instance=True");
        conn.Open();
        SqlCommand cmd = new SqlCommand("insert into Feedback values('" +TextBox1.Text+ "','" + TextBox2.Text + "','" + TextBox3.Text + "','"+TextBox4.Text+"')", conn);
        cmd.ExecuteNonQuery();
        conn.Close();
    }
}
