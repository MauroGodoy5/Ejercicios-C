<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="clase2_ejercicio1.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="datos" runat="server" Text="..."></asp:Label>
            <br />
            
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/WebForm1.aspx">retornar</asp:LinkButton>
        </div>
    </form>
</body>
</html>
