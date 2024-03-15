<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pagina2session.aspx.cs" Inherits="CLASE9_.pagina2session" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Los datos de la variable session: "></asp:Label> <asp:Label ID="resultado" runat="server" Text="..."></asp:Label>
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/pagina3session.aspx">Ir a la tercera pagina</asp:LinkButton>
            

        </div>
    </form>
</body>
</html>
