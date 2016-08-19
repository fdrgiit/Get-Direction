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

public partial class ticketprint : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|getDir.mdf; Integrated Security=True;User Instance=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        DateTime today = DateTime.Today;
        TextBox8.Text = Session["routeinfo"].ToString();
        TextBox5.Text = Session["totalcost"].ToString();
        TextBox7.Text = Session["source"].ToString();
        TextBox2.Text = Session["dest"].ToString();
        TextBox9.Text = Session["name"].ToString();
        TextBox6.Text = Session["userid"].ToString();
        TextBox3.Text = Session["costofbus"].ToString();
        TextBox4.Text = Session["costoftrain"].ToString();
        TextBox14.Text = today.ToString();
        TextBox.Text = Session["bussource"].ToString();
        TextBox11.Text = Session["busdest"].ToString();
        TextBox12.Text = Session["TrainSource"].ToString();
        TextBox13.Text = Session["TrainDest"].ToString();

        Amount.Text = Session["totalcost"].ToString();
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        
    }

    protected void TextBox6_TextChanged1(object sender, EventArgs e)
    {

    }
    protected void TextBox9_TextChanged(object sender, EventArgs e)
    {
        
    }
    protected void TextBox7_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox8_TextChanged(object sender, EventArgs e)
    {
    
    }
   
    protected void TextBox10_TextChanged(object sender, EventArgs e)
    {

    }


    protected void ChargeCard_Click(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        tbl1.Visible = true;
    }
    protected void Button3_Click1(object sender, EventArgs e)
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand("Insert into booking values(@Tranid,@name,@source,@dest,@bus_dest,@bus_source,@tr_source,@tr_dest,@cost_of_bus,@cost_of_train,@total_cost,@route_info,@travel_date)", conn);
        cmd.Parameters.Add("@Tranid", SqlDbType.Int).Value = TextBox6.Text;
        cmd.Parameters.Add("@name", SqlDbType.VarChar).Value = TextBox9.Text;
        cmd.Parameters.Add("@source", SqlDbType.VarChar).Value = TextBox7.Text;
        cmd.Parameters.Add("@dest", SqlDbType.VarChar).Value = TextBox2.Text;

        cmd.Parameters.Add("@bus_dest", SqlDbType.VarChar).Value = TextBox11.Text;
        cmd.Parameters.Add("@bus_source", SqlDbType.VarChar).Value = TextBox.Text;
        cmd.Parameters.Add("@tr_source", SqlDbType.VarChar).Value = TextBox12.Text;
        cmd.Parameters.Add("@tr_dest", SqlDbType.VarChar).Value = TextBox13.Text;

        cmd.Parameters.Add("@cost_of_bus", SqlDbType.Int).Value = TextBox3.Text;
        cmd.Parameters.Add("@cost_of_train", SqlDbType.Int).Value = TextBox4.Text;
        cmd.Parameters.Add("@total_cost", SqlDbType.Int).Value = TextBox5.Text;
        cmd.Parameters.Add("@route_info", SqlDbType.VarChar).Value = TextBox8.Text;
        cmd.Parameters.Add("@travel_date", SqlDbType.VarChar).Value = TextBox14.Text;
        cmd.ExecuteNonQuery();
        conn.Close();
        
                      
        
        string strScript = "<script>";
        strScript += "alert('TICKET BOOKED SUCCESSFULLY!!!');";
        strScript += "window.location='showpdf.aspx';";
        strScript += "</script>";
        Page.RegisterClientScriptBlock("strScript", strScript);       
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        Response.Redirect("User.aspx");
    }
}
