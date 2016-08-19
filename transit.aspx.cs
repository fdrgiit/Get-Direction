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

public partial class transit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int str;
        if (g1.Checked)
            str = 100;

        else
            if (g2.Checked)
                str = 200;
            else
                str = 300;


                SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|getDir.mdf;Integrated Security=True;User Instance=True");
                SqlConnection con1 = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|getDir.mdf;Integrated Security=True;User Instance=True");
                con.Open();
                con1.Open();
                SqlCommand cmd = new SqlCommand("select * from source", con);

                SqlDataReader dr, dr1;
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        if ((dr[1].ToString().Equals(DropDownList1.Text)) && (dr[2].ToString().Equals(DropDownList2.Text)))
                        {
                            String src = DropDownList1.SelectedItem.Text;
                            String dest = DropDownList2.SelectedItem.Text;


                            SqlCommand cmd2 = new SqlCommand("select t.Route_info [ROUTE INFORMATION],t.cost_of_bus [COST BY BUS],t.cost_of_train [COST BY TRAIN], t.Total_cost [TOTAL COST],t.Bus_Source [Bus Source],t.Bus_Destination [Bus Destination],t.Train_Source [Train Source],t.Train_dest [Train Destination] from travel t where t.schedule=" + str + " and t.sid=(select sid from source p where p.source='" + src + "' and p.dest='" + dest + "')", con1);

                            // SqlCommand cmd1 = new SqlCommand("select r.root,t.busno,t.cost,t.time,t.schedule from root r,travel t where r.rid=t.rid and r.sid=1 and t.schedule=Morning", con1);
                            //SqlCommand cmd1 = new SqlCommand("select t.tid from travel t where schedule=100 and t.sid=43", con1);

                            dr1 = cmd2.ExecuteReader();
                            GridView1.DataSource = dr1;
                            GridView1.DataBind();


                        }



                    }


                }

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["source"] = DropDownList1.SelectedItem.Text;
        Session["dest"] = DropDownList2.SelectedItem.Text;
        Session["routeinfo"] = GridView1.SelectedRow.Cells[1].Text;
        Session["totalcost"] = GridView1.SelectedRow.Cells[4].Text;
        Session["costofbus"] = GridView1.SelectedRow.Cells[2].Text;
        Session["costoftrain"] = GridView1.SelectedRow.Cells[3].Text;
        Session["bussource"] = GridView1.SelectedRow.Cells[5].Text;
        Session["busdest"] = GridView1.SelectedRow.Cells[6].Text;
        Session["TrainSource"] = GridView1.SelectedRow.Cells[7].Text;
        Session["TrainDest"] = GridView1.SelectedRow.Cells[8].Text;
        {
            if (g1.Checked)
            {
                Session["time"] = "morning" ;
            }
            else if (g2.Checked)
            {
                Session["time"] = "afternoon";
            }
            else if (g3.Checked)
            {
                Session["time"] = "evening";
            }
            

            Response.Redirect("ticketprint.aspx");

        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {

        SqlConnection con10 = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|getDir.mdf;Integrated Security=True;User Instance=True");
        con10.Open();
        SqlCommand cmd = new SqlCommand("insert into history values('" + Session["userid"] + "','" + DropDownList1.SelectedItem.Text + "','" + DropDownList2.SelectedItem.Text + "')", con10);


        cmd.ExecuteNonQuery();
        string strScript = "<script>";
        strScript += "alert('RECORD INSERTED..');";
        strScript += "</script>";
        Page.RegisterClientScriptBlock("strScript", strScript);
        con10.Close();

    }

    protected void Button4_Click1(object sender, EventArgs e)
    {
        SqlConnection con10 = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|getDir.mdf;Integrated Security=True;User Instance=True");
        con10.Open();
        SqlCommand cmd = new SqlCommand("insert into history values('" + Session["userid"] + "','" + DropDownList1.SelectedItem.Text + "','" + DropDownList2.SelectedItem.Text + "')", con10);


        cmd.ExecuteNonQuery();
        con10.Close();
    }
}
