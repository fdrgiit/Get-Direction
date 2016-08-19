<%@ Page Language="C#" AutoEventWireup="true" CodeFile="showpdf.aspx.cs" Inherits="showpdf" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        #form1
        {
            height: 31px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 113px">
    
    
        &nbsp;Your booking has been completed sucessfully..
    
    
        <br />
        <br />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    
    </div>
    <asp:Button ID="Button1" runat="server" Height="36px" 
        Text=" print the ticket" Width="130px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" Height="39px" Text="email ticket" 
        Width="125px" />
    </form>
</body>
</html>
