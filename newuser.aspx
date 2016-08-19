<%@ Page Language="C#" AutoEventWireup="true" CodeFile="newuser.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<meta name="keywords" content="glossy box, web design, colorful background, free templates, website templates, CSS, HTML" />
<meta name="description" content="Glossy Box | free website template with a colorful background" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link href="css/jquery.ennui.contentslider.css" rel="stylesheet" type="text/css" media="screen,projection" />

<style type="text/css">
        .style1
        {
            width: 80%;
        height: 188px;
    }
        .style2
        {
    }
        .style4
        {
            width: 462px;
        }
        .content {
         width: 900px ;
         height: 500px;
         position: relative;
         left: 50%;
         margin-left: -450px ;
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
        width: 158px;
        font-size: large;
        font-weight: bold;
    }
             .content1 {
         width: 1500px;
         height: 725px;
         position: relative;
         left: 28%;
         margin-left: -750;
         text-align:center;
        }
    
        </style>

    </head>
<body background="images/page.jpeg">
    
<form id="form1" runat="server">
       
   <div id="templatemo_wrapper_outer">
	<div id="templatemo_wrapper">
    

        
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/552334598.png" 
            Width="615px" Height="181px" ImageAlign=Right/>
        
        
        <div id="templatemo_menu" align="center">
            <ul>
                <li><a href="Start.aspx" class="current">HOME</a></li>
                <li><a href="contact.aspx">CONTACT</a></li>
                <li><a href=" about.aspx"> ABOUT US </a> </li>
            </ul>    	
        </div> <!-- end of templatemo_menu -->
        
        <div align="center" class ="templatemo_slider_wrapper">
        
        	<div align="center" style="height: 1559px">
            
				<br />
                <br />
                <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <div style="background-image: url('images/templatemo_slider.png'); background-repeat: no-repeat;" class="content">
                        <br />
                        <br />
                    <table class="style1" align="center">
            <tr>
                <td class="style5">
                    User Name :</td>
                <td class="style4">
                    &nbsp;
                    <asp:TextBox ID="txtusername" runat="server" style="margin-left: 1px" 
                        Width="140px" ontextchanged="txtusername_TextChanged"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtusername" Font-Bold="True" Font-Size="Large">Please enter User name</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    Password :</td>
                <td class="style4">
                    <asp:TextBox ID="txtpwd" runat="server" TextMode="Password" Width="140px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtpwd" Font-Bold="True" Font-Size="Large">Please enter password</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Button ID="btnlogin" runat="server" Text="LOGIN" 
                        onclick="btnlogin_Click" style="height: 30px" Width="113px" 
                        CssClass="style" Height="46px" Font-Bold="True" Font-Size="Large" 
                        CausesValidation="False" />
                    <br />
                </td>
                <td class="style4">
                    
                    <asp:HyperLink ID="HyperLink2" runat="server" 
                        NavigateUrl="~/ForgotPassword.aspx" Font-Bold="True" Font-Size="Large">FORGOT PASSWORD?</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="style2" colspan="2">
                    &nbsp;</td>
            </tr>
        </table>
        </div>
        
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        
        <div style="background-image: url('images/bg2.jpg'); width: 1109px; top: 102px;" 
            class="content1" align="center" id="register">
                        <br />
                        <br />
                            <center>
                                <h1 align="center" style="font-family: Narkisim; color: #FFFFFF; height: 27px; width: 558px;">
                                                                        Register Yourself and Get Started</h1></center>
                            <br />

             <table align="center" style="width: 1060px; height: 568px;">
            <tr align="center">
                <td class="style20" align="center">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; User Name:</td>
                <td class="style14">
                    <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="189px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="txtusername" Font-Bold="False" Font-Size="Small">Enter User name</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr align="center">
                <td class="style22">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    Password:</td>
                <td class="style9">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Height="30px" 
                        Width="190px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="txtpwd" Font-Size="Small">Enter password</asp:RequiredFieldValidator>
                    
                                  </td>
            </tr>
            <tr align="center">
                <td class="style22">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Confirm Password:</td>
                <td class="style17">
                    <asp:TextBox ID="TextBox3" runat="server" ontextchanged="TextBox2_TextChanged" 
                        TextMode="Password" Height="30px" Width="190px"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="txtpwd" ControlToValidate="TextBox2" Font-Size="Small">Password should match</asp:CompareValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
            </tr>
            <tr align="center">
                <td class="style22">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    Name:</td>
                <td class="style19">
                    <asp:TextBox ID="txtname" runat="server" Height="30px" Width="192px"></asp:TextBox>
                    &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtname" Font-Bold="False" Font-Size="Small">Enter Name</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr align="center">
                <td class="style22">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    Age:</td>
                <td class="style19">
                    <asp:TextBox ID="txtage" runat="server" Height="30px" Width="189px"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" 
                        ControlToValidate="txtage" MaximumValue="60" MinimumValue="18" 
                        Type="Integer" Font-Bold="False" Font-Size="Small">Age 
                    should be between 18-60</asp:RangeValidator>
                    &nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="txtage" Font-Bold="False" Font-Size="Small">Enter Age</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr align="center">
                <td class="style22">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Profession:
                </td>
                       <td class="style17">
        

                           <asp:DropDownList ID="ddlq" runat="server" Font-Bold="True" Font-Size="Large" 
                               Height="30px" Width="190px">
                        <asp:ListItem>Select Qualification</asp:ListItem>
                        <asp:ListItem>BE</asp:ListItem>
                        <asp:ListItem>BA</asp:ListItem>
                        <asp:ListItem>BCom</asp:ListItem>
                        <asp:ListItem>BSc</asp:ListItem>
                        <asp:ListItem>BE Computers</asp:ListItem>
                        <asp:ListItem>Others</asp:ListItem>
                    </asp:DropDownList>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="ddlq" InitialValue="Select Qualification" Font-Bold="False" 
                               Font-Size="Small">Select one option</asp:RequiredFieldValidator>
        
                       </td>
            </tr>
            <tr align="center">
                <td class="style22">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Email Address</td>
                <td class="style17">
                    <asp:TextBox ID="TextBox4" runat="server" style="margin-bottom: 0px" 
                        Height="29px" Width="190px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="TextBox1" Font-Bold="False" Font-Size="Small">Enter Email Address</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="TextBox1" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        Font-Size="Small">Enter 
                    proper email id</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr align="center">
                <td class="style20">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    Gender:</td>
                <td class="style14">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                        RepeatDirection="Horizontal">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr align="center">
                <td class="style12">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                        ID="btninsert" runat="server" Text="SUBMIT" 
                        onclick="btninsert_Click" style="height: 30px" BackColor="White" 
                        BorderColor="#666666" Font-Size="Medium" ForeColor="Black" 
                        CssClass="style" Height="50px"/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td class="style10">
                    &nbsp;<br />
                    <br />
                    <asp:Button ID="btncancel" runat="server" Text="CANCEL" 
                        onclick="btncancel_Click" BackColor="White" BorderColor="#666666" 
                        Font-Size="Medium" CssClass="style" Height="30px"/>
                </td>
            </tr>
            
        </table>
        <br />
        <br />
        </div>
                                 
                        </div>
                        <!-- End cs_slider -->
                   			<div id="Div2">
		
             <h3>Copyright © 2011-2012. All Rights Reserved  |BE-IT GET DIRECTION| </h3></div>	 
                </div>
                    <!-- End contentslider -->
                
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
