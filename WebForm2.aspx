<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WebForm2.aspx.cs" Inherits="_Default" %>




<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Glossy Box | Free CSS Template</title>
<meta name="keywords" content="glossy box, web design, colorful background, free templates, website templates, CSS, HTML" />
<meta name="description" content="Glossy Box | free website template with a colorful background" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link href="css/jquery.ennui.contentslider.css" rel="stylesheet" type="text/css" media="screen,projection" />

            
        <style type="text/css">
            .tyhu
            {
                width: 100px;
            }
            .btn_more
            {
                width: 97px;
                height: 33px;
            }
            .style1
            {
                width: 156px;
            }
            .style4
            {
                width: 93px;
                height: 120px;
            }
            .style5
            {
                height: 120px;
            }
            #Div2
            {
                height: 137px;
            }
            .style6
            {
                width: 156px;
                height: 120px;
            }
            </style>

</head>
<body>
 
<form id="form2" runat="server" >
<div id="templatemo_wrapper_outer">
                
	<div id="templatemo_wrapper">
    
    	<div id="templatemo_header">
			<div id="site_title">
				<h1><a href="http://www.templatemo.com">
				    &nbsp;<img src="images/title.png" alt=" title" /></a></h1>
			</div> <!-- end of site_title -->
		</div>
        
        <div id="templatemo_menu">
            <ul>
                <li><a href="Default2.aspx">Home</a></li>
               
            </ul>
        </div>
        <center> 
                            <div id="templatemo_slider">   
                                <p style="width: 79px">
                                    &nbsp;</p>
                                <table style="width:68%; height: 192px; margin-left: 0px;">
                                    <tr>
                                        <td class="style6">
                                            <asp:Label ID="Label1" runat="server" Text="Label" BackColor="White" 
                                                ForeColor="#00CCFF"></asp:Label>
                                            <br />
                                            <br />
                                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                                        </td>
                                        <td class="style4">
                                            </td>
                                        <td class="style5">
                                            <img src="images/slider/Administrator.jpg" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style1">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <h4>Show Users:</h4></td>
                                       <td class="btn_more">
                                        <a href="#kev">transactions</a>
                                        <a href="#nev">profile</a>
                                        </td>
                                        <td class="btn_more">
                                        <a href="#abh">edit profile</a>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" 
                                        Text="LOGOUT" BackColor="Blue" BorderColor="Black" BorderStyle="Ridge" 
                                                Font-Bold="True" Font-Names="Adobe Gothic Std B" ForeColor="White" />
                                        </td>
                                    </tr>
                                    </table>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   
       
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <br />
                                <br />
                                <br />
                                <br />
                   
       
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                    <br />
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [PROFILE] where Roles!='Administrator'"
            
            UpdateCommand="update PROFILE set Username=@Username,password=@password,name=@name,age=@age,email=@email,qualification=@qualification,gender=@gender where userid=@userid" onselecting="SqlDataSource1_Selecting">
            <UpdateParameters>
            <asp:Parameter Name="Username" />
            <asp:Parameter Name="password" />
            <asp:Parameter Name="name" />
            <asp:Parameter Name="age" />
            <asp:Parameter Name="email" />
            <asp:Parameter Name="qualification" />
            <asp:Parameter Name="gender" />
            <asp:Parameter Name="userid" />
            </UpdateParameters>
            </asp:SqlDataSource>
            &nbsp;<div class="btn_more">
                    &nbsp;</div>
                   
            </div>
                     
          </center>
              <br />
              <br />
          &nbsp;</div>
                   
            </div>
                     
          </center>
              <br />
              <br />
              <br />
           <div id="templatemo_content_wrapper">    
              <a id="nev">
          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
            CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource1" 
            ForeColor="Black" DataKeyNames="userid" style="margin-left: 138px" 
                  onselectedindexchanged="GridView1_SelectedIndexChanged1">
            <RowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Username" HeaderText="Username" 
                    SortExpression="Username" />
                <asp:BoundField DataField="password" HeaderText="password" 
                    SortExpression="password" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="qualification" HeaderText="qualification" 
                    SortExpression="qualification" />
                <asp:BoundField DataField="gender" HeaderText="gender" 
                    SortExpression="gender" />
                                    <asp:BoundField DataField="Roles" HeaderText="Roles" 
                    SortExpression="Roles" />
                <asp:CommandField ShowEditButton="True" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" HorizontalAlign="Right" 
                VerticalAlign="Middle" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
         </a> 
          
          </div> 
          <br />
          <br />
          <br />

<div id="div2">
<a id="abh">
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource2" 
        onselectedindexchanged="GridView2_SelectedIndexChanged" 
        DataKeyNames="userid">
        <Columns>
            <asp:BoundField DataField="Username" HeaderText="Username" 
                SortExpression="Username" />
            <asp:BoundField DataField="password" HeaderText="password" 
                SortExpression="password" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="qualification" HeaderText="qualification" 
                SortExpression="qualification" />
            <asp:BoundField DataField="gender" HeaderText="gender" 
                SortExpression="gender" />
            <asp:CommandField ShowEditButton="True" />
        </Columns>
    </asp:GridView>
    </a>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        onselecting="SqlDataSource2_Selecting1" 
        SelectCommand="SELECT * FROM [PROFILE] where Roles='Administrator'"
        UpdateCommand="update PROFILE set Username=@Username,password=@password,name=@name,age=@age,email=@email,qualification=@qualification,gender=@gender where userid=@userid">
            <UpdateParameters>
            <asp:Parameter Name="Username" />
            <asp:Parameter Name="password" />
            <asp:Parameter Name="name" />
            <asp:Parameter Name="age" />
            <asp:Parameter Name="email" />
            <asp:Parameter Name="qualification" />
            <asp:Parameter Name="gender" />
            <asp:Parameter Name="userid" />
            </UpdateParameters>
    </asp:SqlDataSource>
</div>

<div id="div2">

<a id=kev>
<asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource3" Width="695px">
        <Columns>
            <asp:BoundField DataField="Tranid" HeaderText="Tranid" 
                SortExpression="Tranid" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="source" HeaderText="source" 
                SortExpression="source" />
            <asp:BoundField DataField="dest" HeaderText="dest" SortExpression="dest" />
            <asp:BoundField DataField="cost_of_bus" HeaderText="cost_of_bus" 
                SortExpression="cost_of_bus" />
            <asp:BoundField DataField="cost_of_train" HeaderText="cost_of_train" 
                SortExpression="cost_of_train" />
            <asp:BoundField DataField="total_cost" HeaderText="total_cost" 
                SortExpression="total_cost" />
            <asp:BoundField DataField="route_info" HeaderText="route_info" 
                SortExpression="route_info" />
            <asp:BoundField DataField="travel_date" HeaderText="travel_date" 
                SortExpression="travel_date" />
        </Columns>
    </asp:GridView>
    </a>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
        SelectCommand="SELECT * FROM [booking]"></asp:SqlDataSource>
</div>
</form>
<div id="Div2">
		
             &nbsp;
             <br />
             Copyright © 2048 Get Direction </body>
</html>