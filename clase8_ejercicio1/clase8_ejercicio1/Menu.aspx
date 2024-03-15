<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="clase8_ejercicio1.Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/abmmarcas.aspx">ABM de Marcas</asp:LinkButton>
            <br />
             <br />
            <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/altaautos.aspx">Alta de Autos</asp:LinkButton>
            <br />
             <br />
            <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/consultaauto.aspx">Consulta por Patente</asp:LinkButton>
            <br />
             <br />
            <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/consultamarcaauto.aspx">Consulta por Marca</asp:LinkButton>
            <br />
             <br />
            <asp:LinkButton ID="LinkButton5" runat="server" PostBackUrl="~/borradoauto.aspx">Borrado de un Auto</asp:LinkButton>
            <br />
             <br />
            <asp:LinkButton ID="LinkButton6" runat="server" PostBackUrl="~/consultaautospormodelo.aspx">Autos por Modelo</asp:LinkButton>
        </div>
    </form>
</body>
</html>
