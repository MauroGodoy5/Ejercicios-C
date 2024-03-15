<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="clase5_abm.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/altaarticulos.aspx">Alta articulos</asp:LinkButton>
            <br />
            <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/consultaarticulos.aspx">Consulta de articulos</asp:LinkButton>
            <br />
            <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/bajaarticulos.aspx">Baja de articulos</asp:LinkButton>
            <br />
            <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/modificacionarticulos.aspx">Modificacion de articulos</asp:LinkButton>
        </div>
    </form>
</body>
</html>
