<%@ Page Language="C#" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="about" %>

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
        p.MsoNormal
	{margin-top:0cm;
	margin-right:0cm;
	margin-bottom:10.0pt;
	margin-left:0cm;
	line-height:115%;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
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
                <li><a href="123.aspx">CONTACT</a></li>
                <li><a href=" about.aspx" class="current"> ABOUT US </a> </li>
            </ul>    	
        </div> <!-- end of templatemo_menu -->
        <div align="center" class ="templatemo_slider_wrapper">
        
        	<div align="center" style="height: 497px">
            
				<br />
                <br />
                <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <div style="background-image: url('images/templatemo_slider.png'); background-repeat: no-repeat;" class="content">
                        <h3>“GET DIRECTION”</h3>
                        <br />
                        The system provides the user with an option to choose the mode of transport.
                        <br />
                        <br />
                        The system provides the user with optimal travel routes based on the selected mode of transport.
                        <br />
                        <br />
                        The system provides the user, the cost associated with each of the route 
                        selected. In case of driving, information regarding fuel cost can be calculated. 
                        In case of transit mode, the cost of the bus and train ticket is provided for                      
                        the selected travel route and also user is allowed to book tickets.
                        <br />
                        <br />
                        The system tracks the user’s action, and also the various transactions the user 
                        has made.                         </div>
                        </div>
                        </div>
        

    </form>
</body>
</html>
