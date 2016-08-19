<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ticketprint.aspx.cs" Inherits="ticketprint" %>
<%@ Register TagPrefix="etier" Namespace="Etier" Assembly="CreditCardValidator" %>

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
        #site_title
        {
            height: 95px;
        }
        
        .style1
        {            width: 1295px;
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
        
         .content {
         width: 900px;
         height: 500px;
         position: relative;
         left: 4%;
         margin-left: -450px;
         text-align:center;
            top: 0px;
        }
         .content1 {
         width: 1500px;
         height: 889px;
         position: relative;
         left: 0%;
         margin-left: -750;
         text-align:center;
        }

        
        .style11
        {
            width: 468px;
            height: 47px;
        }

        
        .style13
        {
            height: 38px;
            text-align: left;
        }
        .style14
        {
            height: 38px;
            font-size: medium;
            font-family: "Times New Roman", Times, serif;
        }
        .style21
        {
            height: 38px;
            text-align: left;
        }

        
        .style22
        {
            width: 200px;
            height: 38px;
            font-size: medium;
            font-family: "Times New Roman", Times, serif;
        }
        .style23
        {
            height: 38px;
            font-size: medium;
            font-family: "Times New Roman", Times, serif;
        }
        .style24
        {
            height: 38px;
            text-align: left;
            width: 203px;
        }
        .style25
        {
            height: 38px;
            text-align: left;
            width: 218px;
            font-size: medium;
        }
        .style26
        {
            font-family: "Times New Roman", Times, serif;
        }
        .style27
        {
            height: 38px;
            text-align: left;
            font-size: medium;
            font-family: "Times New Roman", Times, serif;
        }

        
        .style28
        {
            width: 357px;
            height: 38px;
            font-size: medium;
            font-family: "Times New Roman", Times, serif;
        }

        
        .style29
        {
            height: 38px;
            text-align: left;
            font-size: medium;
            font-family: "Times New Roman", Times, serif;
            width: 218px;
        }

        
    </style>
</head>

<body style="background-image: url('images/page.jpeg'); background-repeat: repeat-y;">
<form id="form1" runat="server">

<%--<div id="templatemo_wrapper_outer">
<div id="templatemo_wrapper">--%>
    
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
<asp:Image ID="Image1" runat="server" Height="181px" 
    ImageUrl="~/images/552334598.png" Width="615px" ImageAlign=Middle/>
    
    
    
    
            <!-- end of site_title -->
            

			       
        
<!-- end of templatemo_menu -->
				<br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
        
      
      
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
<br />
<br />
<br />


<div style="background-image: url('images/bg2.jpg'); width: 1360px; top: -151px;" 
            class="content1" align="center">
                        <br />
                        <br />
                            <center>
                                <h1 align="center" style="font-family: Narkisim; color: #FFFFFF; height: 27px; width: 558px;">
                                                                        TICKET SUMMARY</h1></center>
                            <br />

                        <table class="style1">
                            <tr>
                                <td class="style14" colspan="2">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Transction ID:</td>
                                <td class="style21" colspan="2">
                                    <asp:TextBox ID="TextBox6" runat="server" Height="30px" 
                                        Width="186px" Font-Bold="True" Font-Size="Medium" Enabled="False"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style14" colspan="2">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Passenger Name:</td>
                                <td class="style13" colspan="2">
                                    <asp:TextBox ID="TextBox9" runat="server" Height="30px" 
                                         Width="186px" Font-Bold="True" Font-Size="Medium" Enabled="False"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style28">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Source:</td>
                                <td class="style22">
                                    <asp:TextBox ID="TextBox7" runat="server" Height="30px" Width="186px" 
                                        Font-Bold="True" Font-Size="Medium" Enabled="False"></asp:TextBox>
                                    </td>
                                <td class="style25">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="style26">Destination:</span></td>
                                <td class="style24">
                                    <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="186px" 
                                        Font-Bold="True" Font-Size="Medium" Enabled="False"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style28">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Bus Source:</td>
                                <td class="style22">
                                    <asp:TextBox ID="TextBox" runat="server" Height="30px" Width="186px" 
                                        Font-Bold="True" Font-Size="Medium" Enabled="False"></asp:TextBox>
                                </td>
                                <td class="style25">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="style26">Bus Destination:</span></td>
                                <td class="style24">
                                    <asp:TextBox ID="TextBox11" runat="server" Height="30px" Width="187px" 
                                        Font-Bold="True" Font-Size="Medium" Enabled="False"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style28">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Train Source:</td>
                                <td class="style22">
                                    <asp:TextBox ID="TextBox12" runat="server" Height="30px" Width="186px" 
                                        Font-Bold="True" Font-Size="Medium" Enabled="False"></asp:TextBox>
                                </td>
                                <td class="style29">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Train Destination:</td>
                                <td class="style24">
                                    <asp:TextBox ID="TextBox13" runat="server" Height="30px" Width="187px" 
                                        Font-Bold="True" Font-Size="Medium" Enabled="False"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style28">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cost By Bus:</td>
                                <td class="style22">
                                    <asp:TextBox ID="TextBox3" runat="server" Height="30px" Width="186px" 
                                        Font-Bold="True" Font-Size="Medium" Enabled="False"></asp:TextBox>
                                </td>
                                <td class="style29">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cost By Train:</td>
                                <td class="style24">
                                    <asp:TextBox ID="TextBox4" runat="server" Height="30px" Width="187px" 
                                        Font-Bold="True" Font-Size="Medium" Enabled="False"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style23" colspan="2">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;Date of 
                                    Booking:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;  of Booking:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; </td>
                                <td class="style27" colspan="2">
                                    &nbsp;<asp:TextBox ID="TextBox14" runat="server" Height="30px" Width="186px" 
                                        Font-Bold="True" Font-Size="Medium" Enabled="False"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style14" colspan="2">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Total Cost:</td>
                                <td class="style13" colspan="2">
                                    <asp:TextBox ID="TextBox5" runat="server" Height="30px" Width="186px" 
                                        Font-Bold="True" Font-Size="Medium" Enabled="False"></asp:TextBox>
                                    &nbsp;&nbsp;&nbsp;
                                    &nbsp;&nbsp;
                                    </td>
                            </tr>
                            <tr>
                                <td class="style14" colspan="2">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 
                                    Route Information:</td>
                                <td class="style13" colspan="2">
                                    <asp:TextBox ID="TextBox8" runat="server" Height="30px" Width="186px" 
                                        Font-Bold="True" Font-Size="Medium" Enabled="False"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style14" colspan="4">
                                    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red" 
                                        Text="*THIS TICKET IS VALID FROM 3 DAYS OF BOOKING. NOT VALID ON WEEKENDS."></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style14" colspan="2">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button1" runat="server" Text="PROCEED  TO PAYEMENT" 
                                        onclick="Button1_Click1" />
                                </td>
                                <td class="style14" colspan="2">
                                    <br />
                                    <asp:Button ID="Button2" runat="server" Text="REPLAN" 
                                        onclick="Button2_Click1" />
                                </td>
                                <td class="style11">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                            </tr>
                        </table>
        <br />
        <br />
        <br />
        </div>
        <br />
        <br />
        <br />
        <br />
  

              

	    <table id="tbl1" border="0" cellpadding="4" cellspacing="0" bgcolor="#F4F4F4" 
                style="width: 56%; height: 289px; margin-top: 53px;" visible="false" 
    runat="server">
         <tr valign="middle"> 
            <td width="22%"><div align="right"><font color="#000000"><strong><font size="1" face="Verdana, Arial, Helvetica, sans-serif">
                Card Number:</font></strong></font></div></td>
            <td width="78%"><asp:textbox ID="CardNumber" runat="server" />
		<asp:RequiredFieldValidator ID="RequiredFieldValidator1"
		  ControlToValidate="CardNumber"
		  ErrorMessage="Please enter a card number"
		  Display="none"
		  RunAt="server"
		  EnableClientScript="False"
		/>
		<asp:regularexpressionvalidator ID="Regularexpressionvalidator1"
			ControlToValidate="CardNumber"
			ValidationExpression="^\d+$"
			ErrorMessage="Please enter the card number without spaces or dashes."
			Display="None"
			RunAt="server"
			EnableClientScript="false"
		/>
		<etier:CreditCardValidator
		  Id="MyValidator"
		  ControlToValidate="CardNumber"
		  ErrorMessage="Please enter a valid credit card number"
		  Display="none"
		  RunAt="server"
		  EnableClientScript="False"
		  ValidateCardType="True"
		  AcceptedCardTypes="Amex"
		/>
	    </td>
          </tr>
          <tr valign="middle"> 
            <td><div align="right"><strong><font face="Verdana, Arial, Helvetica, sans-serif" 
                    size="1">Valid To:</font></strong></div></td>
            <td> <strong><font size="1" face="Verdana, Arial, Helvetica, sans-serif"> 
                &nbsp;<asp:textbox ID="ExpiryDate" runat="server" MaxLength="5" Columns="5"/>
                (MM/YY) </font></strong>
		<asp:RequiredFieldValidator ID="RequiredFieldValidator2"
		  ControlToValidate="ExpiryDate"
		  ErrorMessage="Please enter an expiry date"
		  Display="none"
		  RunAt="server"
		  EnableClientScript="False"
		/>
	    </td>
          </tr>
          <tr valign="middle"> 
            <td><div align="right"><font color="#000000">&nbsp;<font size="1" face="Verdana, Arial, Helvetica, sans-serif">Issue 
                Number:</font></font></div></td>
            <td><asp:textbox ID="Issue" runat="server" MaxLength="2" Columns="5"/></td>
          </tr>
          <tr valign="middle">
            <td><div align="right"><font size="1" face="Verdana, Arial, Helvetica, sans-serif"><strong>
                Amount:</strong></font></div></td>
            <td><asp:textbox ID="Amount" runat="server" MaxLength="12" Columns="12" 
                    Enabled="False"/> <font size="1" face="Verdana, Arial, Helvetica, sans-serif"><strong>
                                RUPEES
		</strong></font>
		<asp:RequiredFieldValidator ID="RequiredFieldValidator3"
		  ControlToValidate="Amount"
		  ErrorMessage="Please enter an amount"
		  Display="none"
		  RunAt="server"
		  EnableClientScript="False"
		/>
	    </td>
          </tr>
          <tr> 
            <td>&nbsp;</td>
            <td><asp:button text="Submit" id="ChargeCard" runat="server" 
                    onclick="ChargeCard_Click" /></td>
          </tr>
          <tr valign="top"> 
            <td>
	<% if (IsPostBack) { %>
	    <div align="right"><font size="1" face="Verdana, Arial, Helvetica, sans-serif">
            Result:</font></div>
	<% } %>
	    </td>
            <td><asp:label ID="Result" runat="server" Text="" CssClass="Result"/>
    	<asp:ValidationSummary ID="ValidationSummary1"
		DisplayMode="BulletList"
		HeaderText="There were the following errors"
		RunAt="Server"
		CssClass="Result"
	    />
	    </td>
          </tr>
        </table>

        
        	
      

    <br />
         <asp:Button ID="Button3" runat="server" onclick="Button3_Click1" Text="BOOK TICKET" 
             Width="125px" />
    <br />
    <br />
<br />
<br />
<br />
<br />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br />
        
        	
    </form>

      
      

    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <div>
        Copyright © 2048 BE-IT Get Direction ight © 2048 BE-IT Get Direction 
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <div>
     Copyright © 2048  BE-IT Get Direction
    ight © 2048  BE-IT Get Direction
        </div>
</body>
</html>
