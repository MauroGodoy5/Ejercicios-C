<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="clase2_introduccion.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/WebForm2.aspx">cargar comentarios en el libro de visitas</asp:LinkButton>
            <br />
            <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/WebForm3.aspx">Listado del libro</asp:LinkButton>

        </div>
    </form>
</body>
</html>
