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

public partial class _123 : System.Web.UI.Page
{
    SqlConnection conn1 = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|getDir.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void gd1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        conn1.Open();
        SqlCommand cmd = new SqlCommand("Insert into Feedback values(@name,@emailid,@contactno,@message)", conn1);
        cmd.Parameters.Add("@name", SqlDbType.VarChar).Value = gd1.Text;
        cmd.Parameters.Add("@emailid", SqlDbType.VarChar).Value = gd2.Text;
        cmd.Parameters.Add("@contactno", SqlDbType.VarChar).Value = gd3.Text;
        cmd.Parameters.Add("@message", SqlDbType.VarChar).Value = gd4.Text;
        cmd.ExecuteNonQuery();
        conn1.Close();
    }
    
    protected void gd2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void gd3_TextChanged(object sender, EventArgs e)
    {

    }
    protected void gd4_TextChanged(object sender, EventArgs e)
    {

    }
}
