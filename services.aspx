<%@ Page Language="C#" AutoEventWireup="true" CodeFile="services.aspx.cs" Inherits="_Default" %>

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
            width: 85%;
        height: 188px;
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
        width: 110px;
        font-size: large;
        font-weight: bold;
    }
    
        .style6
    {
        width: 285px;
    }
    .style7
    {
        width: 565px;
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
                <li><a href="User.aspx">HOME</a></li>
                <li><a href="contact.aspx">CONTACT</a></li>
                <li><a href="services.aspx" class="current"><center>SERVICES</center></a></li>
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
                        <br />
                        <br />
                    <table class="style1" align="center">
            <tr>
                <td class="style5">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="166px" 
                        ImageUrl="~/images/slider/transit.jpg" PostBackUrl="~/transit.aspx" 
                        Width="259px" />
                    <br />
                </td>
                <td class="style6">
                    &nbsp;</td>
                <td class="style7">
                    <asp:ImageButton ID="ImageButton2" runat="server" Height="162px" 
                        ImageUrl="~/images/slider/taxi-parking.jpg" Width="270px" 
                        PostBackUrl="~/Driving.aspx" />
                </td>
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