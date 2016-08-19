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

public partial class Default2 : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True;User Instance=True");
     SqlConnection conn1 = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True;User Instance=True");
     SqlConnection conn2 = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True;User Instance=True");
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btninsert_Click(object sender, EventArgs e)
        {
           
            conn1.Open();
            conn2.Open();
            SqlCommand cmd1 = new SqlCommand(" select * from PROFILE where Username like '"+ txtusername.Text +"' " , conn1);
            SqlDataReader dr;
            dr = cmd1.ExecuteReader();
            SqlCommand cmd2 = new SqlCommand(" select * from PROFILE where email like '" + TextBox1.Text + "' ", conn2);
            SqlDataReader dr1;
            dr1 = cmd2.ExecuteReader();
            if (dr.HasRows)
            {
                string strScript = "<script>";
                strScript += "alert('USER ALREADY EXISTS..');";
                strScript += "window.location='Default2.aspx';";
                strScript += "</script>";
                Page.RegisterClientScriptBlock("strScript", strScript);
                txtusername.Text = "";
                txtpwd.Text = "";
                TextBox2.Text = "";
                txtname.Text = "";
                txtage.Text = "";
                TextBox1.Text = "";
            }

            else
            {
                if (dr1.HasRows)
                {
                    string strScript = "<script>";
                    strScript += "alert('EMAIL ADDRESS ALREADY TAKEN..');";
                    strScript += "window.location='Default2.aspx';";
                    strScript += "</script>";
                    Page.RegisterClientScriptBlock("strScript", strScript);
                    txtusername.Text = "";
                    txtpwd.Text = "";
                    TextBox2.Text = "";
                    txtname.Text = "";
                    txtage.Text = "";
                    TextBox1.Text = "";
                }
                else
                {
                    conn1.Close();
                    conn2.Close();
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("Insert into PROFILE values(@uname,@pwd,@name,@age,@email,@quali,@gendr,@roles)", conn);
                    cmd.Parameters.Add("@uname", SqlDbType.VarChar).Value = txtusername.Text;
                    cmd.Parameters.Add("@pwd", SqlDbType.VarChar).Value = txtpwd.Text;
                    cmd.Parameters.Add("@name", SqlDbType.VarChar).Value = txtname.Text;
                    cmd.Parameters.Add("@age", SqlDbType.Int).Value = txtage.Text;
                    cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = TextBox1.Text;
                    cmd.Parameters.Add("@quali", SqlDbType.VarChar).Value = ddlq.SelectedValue;
                    cmd.Parameters.Add("@gendr", SqlDbType.VarChar).Value = RadioButtonList1.SelectedValue;
                    cmd.Parameters.Add("@roles", SqlDbType.VarChar).Value = "User";
                    cmd.ExecuteNonQuery();
                    Response.Redirect("newuser.aspx");

                    string strScript = "<script>";
                    strScript += "alert('REGISTERED SUCCESSFULLY!!!');";
                    strScript += "window.location='newuser.aspx';";
                    strScript += "</script>";
                    Page.RegisterClientScriptBlock("strScript", strScript);

                    conn.Close();
                }


            }
        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
           Response.Redirect("Start.aspx");

        }




        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Start.aspx#register");
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("newuser.aspx");
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("newuser.aspx");
        }
}
