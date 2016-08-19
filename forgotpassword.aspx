<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forgotpassword.aspx.cs" Inherits="login" %>

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
        .style5
    {
        width: 158px;
        font-size: large;
        font-weight: bold;
    }
    
        .style6
    {
        width: 377px;
    }
    
        </style>

    </head>
<body background="images/page.jpeg">
    
<form id="form1" runat="server">
       
   <div id="templatemo_wrapper_outer">
	<div id="templatemo_wrapper">
    

        
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/title.png" 
            Width="615px" Height="181px" ImageAlign=Right/>
        
        
        <div id="templatemo_menu" align="center">
            <ul>
                <li><a href="Start.aspx" class="current">HOME</a></li>
                <li><a href="contact.aspx">CONTACT</a></li>
                <li><a href=" about.aspx"> ABOUT US </a> </li>
            </ul>    	
        </div> <!-- end of templatemo_menu -->
        
        <div align="center" class ="templatemo_slider_wrapper">
        
        	<div align="center" style="height: 497px">
            
				<br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <div style="background-image: url('images/templatemo_slider.png'); background-repeat: no-repeat;" class="content">
                        <br />
                        <br />
                        <table style="width:83%;" align="left">
                            <tr>
                                <td class="style6">
                                    &nbsp;&nbsp;
                                </td>
                                <td class="style5">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style6">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label 
                                        ID="Label1" runat="server" 
                                        Text="Enter Email Address" style="font-size: large; font-weight: 700"></asp:Label>
                                    &nbsp;:</td>
                                <td>
                                    &nbsp;
                                    <asp:TextBox ID="TextBox1" runat="server" Height="31px" Width="198px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style6">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                                        style="height: 30px" Text="Submit" CssClass="style" Height="33px" 
                                        Width="144px"/>
                                </td>
                                <td>
                                    <br />
                                    <asp:Label ID="Label2" runat="server" ForeColor="Red" style="font-weight: 700" 
                                        Text="*Enter the Email ID you provided while creating the account"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style6">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
        </div>
                                 
                        </div>
                        <!-- End cs_slider -->
                    
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
		
		
		
        
   
		<div id="Div2">
		
             Copyright © 2048 <a href="#"> BE-IT Get Direction</div>
        
	
        
</body>
</html>