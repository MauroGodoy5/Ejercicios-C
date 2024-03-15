<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label runat="server" Text="1" ID="Label1"></asp:Label>
            <br />
            <asp:Button ID="Button1" runat="server" Text="sumar"   OnClick="Button1_Click1" />
        </div>
    </form>
    </body>
</html>

