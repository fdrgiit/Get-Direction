<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:Panel ID="Panel1" runat="server" DefaultButton="btnSubmit">
    <p>
        Please Fill the Following to Send Password.</p>
    <p>
        <br />
        <br />
        Your email address:
        <br />
        <asp:TextBox ID="YourEmail" runat="server" Width="250px" />
        <br />
    </p>
        <p>
            <asp:Button ID="btnSubmit" runat="server" OnClick="Button1_Click" Text="Send" 
                ValidationGroup="save" />
        </p>
</asp:Panel>
<p>
    <asp:Label ID="DisplayMessage" runat="server" Visible="false" />
</p>  
    <div>
    
    </div>
    </form>
</body>
</html>
