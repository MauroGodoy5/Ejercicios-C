<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="consultamarcaauto.aspx.cs" Inherits="clase8_ejercicio1.consultamarcaauto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="seleccione una marca: "></asp:Label> <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourcemarca" DataTextField="descripcion" DataValueField="codigo"></asp:DropDownList>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Mostrar" OnClick="Button1_Click" />
            <br />
            <asp:Label ID="resultado" runat="server" Text="..."></asp:Label>
            <asp:SqlDataSource ID="SqlDataSourcemarca" runat="server" ConnectionString="<%$ ConnectionStrings:automovilesConnectionString1 %>" SelectCommand="SELECT * FROM [marcas]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSourceauto" runat="server" ConnectionString="<%$ ConnectionStrings:automovilesConnectionString1 %>" SelectCommand="SELECT foto FROM autos WHERE (codigomarca = @codigomarca)">
                <SelectParameters>
                    <asp:Parameter Name="codigomarca" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
