<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

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
        .style1
    {
        width: 193px;
    }
    .style2
    {
        width: 141px;
    }
    
        </style>

    </head>
<body background="images/page.jpeg">
    
<form id="form2" runat="server">
       
   <div id="templatemo_wrapper_outer">
	<div id="templatemo_wrapper">
    

        
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/552334598.png" 
            Width="615px" Height="181px" ImageAlign=Right/>
        
        
        <div id="templatemo_menu" align="center">
            <ul>
                <li><a href="Default2.aspx">HOME</a></li>
                <li><a href="contact.aspx">CONTACT</a></li>
                <li><a href=" about.aspx"> ABOUT US </a> </li>
            </ul>    	
        </div> <!-- end of templatemo_menu -->
        <div align="center" class ="templatemo_slider_wrapper">
        
        	<div align="center" style="height: 497px">
            
				<br />
                <br />
                <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <div style="background-image: url('images/templatemo_slider.png'); background-repeat: no-repeat;" class="content">
                        <table style="width: 51%;">
                            <tr>
                                <td class="style1">
                                    Name</td>
                                <td>
                                    <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style1">
                                    Email Id</td>
                                <td>
                                    <asp:TextBox ID="TextBox2" runat="server" Width="198px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style1">
                                    Contact Number</td>
                                <td>
                                    <asp:TextBox ID="TextBox3" runat="server" Width="195px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style1">
                                    Message</td>
                                <td style="margin-left: 80px">
                                    <asp:TextBox ID="TextBox4" runat="server" Height="103px" TextMode="MultiLine" 
                                        Width="232px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style1">
                                    &nbsp;</td>
                                <td style="margin-left: 80px">
                                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                                        Text="Send Message" />
                                </td>
                            </tr>
                        </table>
                        <br />
                        <table style="width:100%;">
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    Contact Information</td>
                                <td class="style2">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    Contact No</td>
                                <td>
                                    12456789</td>
                                <td class="style2">
                                    11231487</td>
                            </tr>
                            <tr>
                                <td>
                                    Address</td>
                                <td>
                                    Don Bosco Institute Of Technology,<br />
                                    Near Premeire Company<br />
                                    Kurla(W)</td>
                                <td class="style2">
                                    &nbsp;</td>
                            </tr>
                        </table>
                        <br />
                        </div>
                        </div>
                        </div>
        

    </form>
</body>
</html>
