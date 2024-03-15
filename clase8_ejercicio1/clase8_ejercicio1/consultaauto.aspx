<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="consultaauto.aspx.cs" Inherits="clase8_ejercicio1.consultaauto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Ingrese la Patente: "></asp:Label><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Confirmar" OnClick="Button1_Click" />
            <br />
            <asp:Label ID="resultado" runat="server" Text="..."></asp:Label>
            <asp:Image ID="Image1" runat="server" />
            <asp:SqlDataSource ID="SqlDataSourceautos" runat="server" ConnectionString="<%$ ConnectionStrings:automovilesConnectionString1 %>" SelectCommand="SELECT propietario, precio, modelo, foto, ma.descripcion FROM autos AS au INNER JOIN marcas AS ma ON au.codigomarca = ma.codigo WHERE (patente = @patente)">
                <SelectParameters>
                    <asp:Parameter Name="patente" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
