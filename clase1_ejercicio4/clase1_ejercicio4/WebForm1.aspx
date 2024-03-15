<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="clase1_ejercicio4.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
            <asp:Label ID="Label1" runat="server" Text="a que pagina deseas ir?"></asp:Label>
            <br />
            <asp:RadioButton ID="Google" runat="server" GroupName="grupo" Text="google"  />
            <br />
            <asp:RadioButton ID="Yahoo" runat="server" GroupName="grupo" Text="yahoo"  />
            <br />
            <asp:RadioButton ID="Bing" runat="server" GroupName="grupo" Text="bing" />
            <br />
            
        
        <asp:Button ID="Button1" runat="server" Text="buscar" OnClick="Button1_Click" />
    </form>
</body>
</html>
