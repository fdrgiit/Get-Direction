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
using System.Data;

public partial class User : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = "Welcome " + Session["username"].ToString();
        Label3.Text = Session["email"].ToString();


        conn.Open();
        String gender;
        if (!IsPostBack)
        {
            SqlCommand cmd = new SqlCommand("select * from PROFILE  where Username='" + Session["Username"] + "' and Password='" + Session["password"] + "'", conn);
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.HasRows)
            {
                while (rd.Read())
                {
                    txtusername.Text = (String)rd["username"];
                    txtpwd.Text = (String)rd["password"];
                    txtname.Text = (String)rd["name"];
                    txtage.Text = Convert.ToString(rd["age"]);
                    ddlq.SelectedValue = (String)rd["qualification"];
                    TextBox1.Text = (String)rd["email"];
                    gender = rd[6].ToString();
                    if (gender == "Male")
                    {
                        RadioButtonList1.Items[0].Selected = true;
                    }
                    else
                        RadioButtonList1.Items[1].Selected = true;




                }
            }
        }
        conn.Close();
    }


    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("services.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Start.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        GridView2.Visible = true;
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand("Update PROFILE set username='" + txtusername.Text + "',password='" + txtpwd.Text + "',name='" + txtname.Text + "',age=" + Convert.ToInt32(txtage.Text) + ",qualification='" + ddlq.SelectedValue + "',email='" + TextBox1.Text + "',gender='" + RadioButtonList1.SelectedValue + "' where username='" + Session["Username"] + "' and password='" + Session["password"] + "'", conn);
        cmd.ExecuteNonQuery();
        conn.Close();
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("User.aspx");
    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        GridView1.Columns.Clear();
        
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        GridView1.Visible = true;
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("User.aspx#edit");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        GridView3.Visible = true;
    }
}
