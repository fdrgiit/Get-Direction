<%@ Page Language="C#" AutoEventWireup="true" CodeFile="123.aspx.cs" Inherits="_123" %>

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
         width: 900px;
         height: 536px;
         position: relative;
         left: 11%;
         margin-left: -450px;
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
            font-size:"large";
            font-weight:bold;
            font-family:Times New Roman;
	   }
        .style1
    {
        width: 193px;
    }
    .style2
    {
        width: 141px;
        height: 49px;
    }
    
        .style3
    {
        width: 160px;
        height: 49px;
    }
    .style4
    {
        height: 14px;
        width: 737px;
    }
    .style5
    {
        width: 160px;
        height: 14px;
    }
    .style6
    {
        width: 141px;
        height: 14px;
    }
    
        .style7
    {
        width: 737px;
        height: 49px;
    }
    .style8
    {
        width: 737px;
        height: 21px;
    }
    .style9
    {
        width: 160px;
        height: 21px;
    }
    .style10
    {
        width: 141px;
        height: 21px;
    }
    .style11
    {
        width: 737px;
        height: 60px;
    }
    .style12
    {
        width: 160px;
        height: 60px;
    }
    .style13
    {
        width: 141px;
        height: 60px;
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
                <li><a href="Start.aspx">HOME</a></li>
                <li><a href="123.aspx" class="current">CONTACT</a></li>
                <li><a href="about.aspx"> ABOUT US </a> </li>
            </ul>    	
        </div> <!-- end of templatemo_menu -->
        <div align="center" class ="templatemo_slider_wrapper">
        
        	<div align="center" style="height: 497px">
            
				<br />
                <br />
                <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <div style="background-image: url('images/templatemo_slider.png'); background-repeat: no-repeat; top: -36px;" 
                    class="content">
                    <br />
                    <br />
                    
                        <table style="width: 51%;">
                            <tr>
                                <td class="style1">
                                    Name</td>
                                <td>
                                    <asp:TextBox ID="gd1" runat="server" Width="200px" 
                                        ontextchanged="gd1_TextChanged" ></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style1">
                                    Email Id</td>
                                <td>
                                    <asp:TextBox ID="gd2" runat="server" Width="198px" 
                                        ontextchanged="gd2_TextChanged"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style1">
                                    Contact Number</td>
                                <td>
                                    <asp:TextBox ID="gd3" runat="server" Width="199px" 
                                        ontextchanged="gd3_TextChanged"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style1">
                                    Message</td>
                                <td style="margin-left: 80px">
                                    <asp:TextBox ID="gd4" runat="server" Height="103px" TextMode="MultiLine" 
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
                                <td class="style4">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                    GET DIRECTION contact Info:</td>
                                <td class="style5">
                                    </td>
                                <td class="style6">
                                    </td>
                            </tr>
                            <tr>
                                <td class="style8">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                    Contact No:</td>
                                <td class="style9">
                                    9892761957</td>
                                <td class="style10">
                                    </td>
                            </tr>
                            <tr>
                                <td class="style11">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                    &nbsp; Address:</td>
                                <td class="style12">
                                    Don Bosco Institute Of Technology,<br />
                                    Near Premeire Company<br />
                                    Kurla(W)</td>
                                <td class="style13">
                                    </td>
                            </tr>
                            <tr>
                                <td class="style7">
                                    &nbsp;</td>
                                <td class="style3">
                                    &nbsp;</td>
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
