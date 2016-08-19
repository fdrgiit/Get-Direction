<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminPage.aspx.cs" Inherits="AdminPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<meta name="keywords" content="glossy box, web design, colorful background, free templates, website templates, CSS, HTML" />
<meta name="description" content="Glossy Box | free website template with a colorful background" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link href="css/jquery.ennui.contentslider.css" rel="stylesheet" type="text/css" media="screen,projection" />

<style type="text/css">
        .style1
        {
            width: 84%;
        height: 188px;
    }
        .style4
        {
            width: 462px;
        }
        .content {
         width: 900px;
         height: 500px;
         position: relative;
         left: 12%;
         margin-left: -450px;
         text-align:center;
        }
         .content1 {
         width: 1500px;
         height: 380px;
         position: relative;
         left: 15%;
         margin-left: -750;
         text-align:center;
        }
         .content3 {
         width: 1500px;
         height: 380px;
         position: relative;
         left: 25%;
         margin-left: -750;
         text-align:center;
        }
         .content4 {
         width: 1500px;
         height: 327px;
         position: relative;
         left: 0%;
         margin-left: -750;
         text-align:center;
        }
               .style
       {
            width:200px;
            height:45px;
            font-size:20px;
            background:#3e9ad2;
            -webkit-box-shadow:0 0 4px #000;/*safari and Chrome*/
            -moz-box-shadow:0 0 4px #000; /*Mozilla*/
            -o-box-shadow:0 0 4px #000; /*Opera*/
            -ms-box-shadow:0 0 4px #000; /*Ms IE*/
            box-shadow:0 0 4px #000; /*W3C*/
            -webkit-border-radius:15px;/*safari and Chrome*/
            -moz-border-radius:15px; /*Mozilla*/
            -o-box-border-radius:15px; /*Opera*/
            -ms-box-border-radius:15px; /*Ms IE*/
            border-radius:15px; /*W3C*/
            background-image:-webkit-linear-gradient(top,#ffffff 0%,#3e9ad2 100%);
            background-image:-moz-linear-gradient(top,#ffffff 0%,#3e9ad2 100%);
            background-image:-o-linear-gradient(top,#ffffff 0%,#3e9ad2 100%);
            background-image:-ms-linear-gradient(top,#ffffff 0%,#3e9ad2 100%);
            background-image:linear-gradient(top,#ffffff 0%,#3e9ad2 100%);
            font-size="large";
            font-weight="bold";
            font-family=" Times New Roman";
	   }
        .style5
    {
        width: 1121px;
        font-size: large;
        font-weight: bold;
    }
    
        .templatemo_slider_wrapper
    {
        height: 131px;
    }
    
        .style23
    {
        font-size:larger;
        font-weight:bolder;
    }
         .content2 {
         left: 0%;
         margin-left: -750;
         text-align:left;
        }
        
        .GridViewStyle
        {
            font-family: Arial, Sans-Serif;
            font-size:small;
            table-layout: auto;
            border-collapse: collapse;
            border: #1d1d1d 5px solid;
        }
        /*Header and Pager styles*/
        .HeaderStyle, .PagerStyle /*Common Styles*/
        {
            background-image: url(Images/HeaderGlassBlack.jpg);
            background-position:center;
            background-repeat:repeat-x;
            background-color:#1d1d1d;
        }
        .HeaderStyle th
        {
            padding: 5px;
            color: #ffffff;
        }
        .HeaderStyle a
        {
            text-decoration:none;
            color:#ffffff;
            display:block;
            text-align:left;
            font-weight:normal;
        }
        .PagerStyle table
        {
            text-align:center;
            margin:auto;
        }
        .PagerStyle table td
        {
            border:0px;
            padding:5px;
        }
        .PagerStyle td
        {
            border-top: #1d1d1d 3px solid;
        }
        .PagerStyle a
        {
            color:#ffffff;
            text-decoration:none;
            padding:2px 10px 2px 10px;
            border-top:solid 1px #777777;
            border-right:solid 1px #333333;
            border-bottom:solid 1px #333333;
            border-left:solid 1px #777777;
        }
        .PagerStyle span
        {
            font-weight:bold;
            color:#FFFFFF;
            text-decoration:none;
            padding:2px 10px 2px 10px;
        }
        /*RowStyles*/
        .RowStyle td, .AltRowStyle td, .SelectedRowStyle td, .EditRowStyle td /*Common Styles*/
        {
            padding: 5px;
            border-right: solid 1px #1d1d1d;
        }
        .RowStyle td
        {
            background-color: #c9c9c9;
        }
        .AltRowStyle td
        {
            background-color: #f0f0f0;
        }
        .SelectedRowStyle td
        {
            background-color: #ffff66;
        }
        
        </style>

    </head>
<body background="images/page.jpeg" style="background-image: url('images/page.jpeg'); background-repeat: repeat-y;">
    
<form id="form1" runat="server">
       
   <div id="templatemo_wrapper_outer">
	<div id="templatemo_wrapper">
    

        
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/552334598.png" 
            Width="615px" Height="181px" ImageAlign=Right/>
        
        <br />
        
        <div id="templatemo_menu" align="center">
            <ul>
                <li><a href="AdminPage.aspx" class="current">HOME</a></li>
                <li><a href="123.aspx" class="style23">CONTACT</a></li>
                <li><a href=" about.aspx" class="style23"> ABOUT US </a> </li>
            </ul>    	
        </div> <!-- end of templatemo_menu -->
        
        <div align="center" class ="templatemo_slider_wrapper">
        
        	<div align="center" style="height: 497px">
            
				<br />
                <br />
                <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <div style="background-image: url('images/templatemo_slider.png'); background-repeat: no-repeat; top: 0px;" 
                    class="content">
                    <table class="style1" align="center">
            <tr>
                <td class="style5" rowspan="6">
                    <asp:Image ID="Image2" runat="server" Height="277px" 
                        ImageUrl="~/images/slider/Administrator.jpg" Width="503px" />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
                <td class="style4">
                    <asp:Button ID="Button1" runat="server" Text="LOGOUT" CssClass="style" 
                        Height="30px" Width="169px"/>
                    &nbsp;
                    </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Button ID="Button3" runat="server" Height="30px" Text="SHOW USERS" 
                        CssClass="style" Width="169px" onclick="Button3_Click"/>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Button ID="Button4" runat="server" Height="30px" Text="EDIT PROFILE" 
                        CssClass="style" Width="168px" onclick="Button4_Click"/>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    
                    <asp:Button ID="Button2" runat="server" Text="view transactions" CssClass="style" 
                        Height="34px" Width="169px" onclick="Button2_Click"/>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    
                    <asp:Button ID="Button5" runat="server" Height="35px" Text=" Show Suggestions" CssClass="style"
                        Width="172px" onclick="Button5_Click" />
                </td>
            </tr>
            <tr>
                <td class="style4">
                    
                    &nbsp;</td>
            </tr>
        </table>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
        </div>
                                 
                        </div>
                        <!-- End cs_slider -->
                                         
                    
                </div>
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
               <br />
               <br />
               <br />
               <br />
               <br />
               <br />
               <br />
               <br />
                    <!-- End contentslider -->
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <div style="background-image: url('images/bg2.jpg'); width: 1109px; top: 102px;" 
            class="content3" align="center" id="users">
                        <br />
                        <br />
                            <div><center><h1>USERS PROFILE</h1></center></div>
        <br />
                            <div align="center" id="profile"><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" 
                                CssClass="GridViewStyle" BackColor="#CCCCCC" BorderColor="#999999" 
                                BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
                                ForeColor="Black" Width="963px">
                                <RowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="Username" HeaderText="USERNAME" 
                                        SortExpression="Username" />
                                    <asp:BoundField DataField="password" HeaderText="PASSWORD" 
                                        SortExpression="password" />
                                    <asp:BoundField DataField="name" HeaderText="NAME" 
                                        SortExpression="name" />
                                    <asp:BoundField DataField="age" HeaderText="AGE" SortExpression="age" />
                                    <asp:BoundField DataField="email" HeaderText="EMAIL ADDRESS" SortExpression="email" />
                                    <asp:BoundField DataField="gender" HeaderText="GENDER" 
                                        SortExpression="gender" />
                                    <asp:BoundField DataField="Roles" HeaderText="ROLES" 
                                        SortExpression="Roles" />
                                    <asp:CommandField EditText="EDIT" ShowEditButton="True" />
                                </Columns>
                                <FooterStyle BackColor="#CCCCCC" />
                                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                
                                SelectCommand="SELECT [Username], [password], [name], [age], [email], [gender], [Roles] FROM [PROFILE] where Roles != 'Administrator'"></asp:SqlDataSource></div>
        </div>
        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
        <br />
        <br />
        </div>
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
           <br />
           <br />
           <br />
           <br />
           <br />
           <br />
           <br />
                        <div style="background-image: url('images/bg2.jpg'); width: 1109px; top: 102px;" 
            class="content1" align="center" id="profile">
                        <br />
                        <br />
                        <div><center><h1>PROFILE EDIT</h1></center></div>    

        <br />
                            <div align="center"><asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" 
                                CssClass="GridViewStyle" BackColor="#CCCCCC" BorderColor="#999999" 
                                BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
                                ForeColor="Black" Width="963px">
                                <RowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="Username" HeaderText="USERNAME" 
                                        SortExpression="Username" />
                                    <asp:BoundField DataField="password" HeaderText="PASSWORD" 
                                        SortExpression="password" />
                                    <asp:BoundField DataField="name" HeaderText="NAME" 
                                        SortExpression="name" />
                                    <asp:BoundField DataField="age" HeaderText="AGE" SortExpression="age" />
                                    <asp:BoundField DataField="email" HeaderText="EMAIL ADDRESS" SortExpression="email" />
                                    <asp:BoundField DataField="gender" HeaderText="GENDER" 
                                        SortExpression="gender" />
                                    <asp:CommandField EditText="EDIT" ShowEditButton="True" />
                                </Columns>
                                <FooterStyle BackColor="#CCCCCC" />
                                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                
                                SelectCommand="SELECT [Username], [password], [name], [age], [email], [gender] FROM [PROFILE] WHERE ROLES = 'Administrator'"></asp:SqlDataSource></div>
        </div>
           <br />
           <br />
           <br />
           <br />
           <br />
           <br />
           <br />
                        <br />
                        <div style="background-image: url('images/bg2.jpg'); width: 1109px; top: 102px;" 
            class="content4" align="center" id="register">
                        <br />
                        <br />
                        <div><center><h1>TRANSACTIONS HISTORY</h1></center></div>    
                            <div align="center">
                                <asp:GridView ID="GridView3" runat="server" 
                                    AutoGenerateColumns="False" DataSourceID="SqlDataSource3" 
                                CssClass="GridViewStyle" BackColor="#CCCCCC" BorderColor="#999999" 
                                BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
                                ForeColor="Black" Width="963px">
                                <RowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="name" HeaderText="name" 
                                        SortExpression="name" />
                                    <asp:BoundField DataField="source" HeaderText="source" 
                                        SortExpression="source" />
                                    <asp:BoundField DataField="dest" HeaderText="dest" SortExpression="dest" />
                                    <asp:BoundField DataField="bus_dest" HeaderText="bus_dest" 
                                        SortExpression="bus_dest" />
                                    <asp:BoundField DataField="Tr_source" HeaderText="Tr_source" 
                                        SortExpression="Tr_source" />
                                    <asp:BoundField DataField="Tr_dest" HeaderText="Tr_dest" 
                                        SortExpression="Tr_dest" />
                                    <asp:BoundField DataField="cost_of_bus" HeaderText="cost_of_bus" 
                                        SortExpression="cost_of_bus" />
                                    <asp:BoundField DataField="cost_of_train" HeaderText="cost_of_train" 
                                        SortExpression="cost_of_train" />
                                    <asp:BoundField DataField="Tranid" HeaderText="Tranid" 
                                        SortExpression="Tranid" />
                                    <asp:BoundField DataField="total_cost" HeaderText="total_cost" 
                                        SortExpression="total_cost" />
                                    <asp:BoundField DataField="route_info" HeaderText="route_info" 
                                        SortExpression="route_info" />
                                    <asp:BoundField DataField="travel_date" HeaderText="travel_date" 
                                        SortExpression="travel_date" />
                                </Columns>
                                <FooterStyle BackColor="#CCCCCC" />
                                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            </asp:GridView>
                            </div>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                                
                                
                                
                                
                                SelectCommand="SELECT [name], [source], [dest], [bus_dest], [Tr_source], [Tr_dest], [cost_of_bus], [cost_of_train], [Tranid], [total_cost], [route_info], [travel_date] FROM [booking]"></asp:SqlDataSource>
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
                            
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            
                            <div style="background-image: url('images/bg2.jpg'); width: 951px; top: 7px;" 
            class="content4" align="center" id="suggestions">
                                <br />
                                 <div><center><h1> Suggestions</h1>
                                     <h1> &nbsp;<asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
                                             BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
                                             CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource5" Font-Bold="False" 
                                             Font-Size="Medium" ForeColor="Black" Height="182px">
                                         <RowStyle BackColor="White" />
                                         <Columns>
                                             <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                                             <asp:BoundField DataField="emailid" HeaderText="emailid" 
                                                 SortExpression="emailid" />
                                             <asp:BoundField DataField="contactno" HeaderText="contactno" 
                                                 SortExpression="contactno" />
                                             <asp:BoundField DataField="message" HeaderText="message" 
                                                 SortExpression="message" />
                                         </Columns>
                                         <FooterStyle BackColor="#CCCCCC" />
                                         <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                         <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                         <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                         </asp:GridView>
                                         <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                                             ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                                             SelectCommand="SELECT * FROM [Feedback]"></asp:SqlDataSource>
                                            </h1></center></div> 
                           
                            </div>
                            
                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                                SelectCommand="SELECT * FROM [Feedback]"></asp:SqlDataSource>
        </div>
        
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
                        <br />
                        <br />
           <br />
           <br />
           <div align="left" class="content2">
		             <h3>Copyright © 2011-2012. All Rights Reserved |BE-IT GET DIRECTION| </h3> 
             </div>
               
                <!-- Site JavaScript -->
                <script type="text/javascript" src="js/jquery-1.3.1.min.js"></script>
                <script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
                <script type="text/javascript" src="js/jquery.ennui.contentslider.js"></script>
                <script type="text/javascript">
                    $(function() {
                    $('#one').ContentSlider({
                    width : '940px',
                    height : '240px',
                    speed : 400,
                    easing : 'easeOutSine'
                    });
                    });
                </script>
                <script src="js/jquery.chili-2.2.js" type="text/javascript"></script>
                <script src="js/chili/recipes.js" type="text/javascript"></script>
            	
            </div>
        
        </div>
        
		
        
	</div>
	
	
        
        </form>
</body>
</html>
