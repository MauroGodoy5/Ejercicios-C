﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="clase3_ejercicio1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/altausuario.aspx">Alta usuarios</asp:LinkButton>
            <br />
            <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/consultausuario.aspx">Consulta de usuarios</asp:LinkButton>
            <br />
            <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/bajausuario.aspx">Baja de usuarios</asp:LinkButton>
            <br />
            <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/modificacionusuario.aspx">Modificacion de usuarios</asp:LinkButton>
        </div>
    </form>
</body>
</html>
