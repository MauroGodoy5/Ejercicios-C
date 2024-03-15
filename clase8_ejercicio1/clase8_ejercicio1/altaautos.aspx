<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="altaautos.aspx.cs" Inherits="clase8_ejercicio1.altaautos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="patente: "></asp:Label><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Propietario: "></asp:Label><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Precio: "></asp:Label><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Modelo: "></asp:Label><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label5" runat="server" Text="Marca"></asp:Label><asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourcemarcas" DataTextField="descripcion" DataValueField="codigo"></asp:DropDownList>
            <br />
            <asp:Label ID="Label6" runat="server" Text="Foto"></asp:Label><asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Confirmar" OnClick="Button1_Click" /> <asp:Label ID="Resultado" runat="server" Text="..."></asp:Label>
            <asp:SqlDataSource ID="SqlDataSourcemarcas" runat="server" ConnectionString="<%$ ConnectionStrings:automovilesConnectionString1 %>" SelectCommand="SELECT * FROM [marcas]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSourceautos" runat="server" ConnectionString="<%$ ConnectionStrings:automovilesConnectionString1 %>" InsertCommand="INSERT INTO autos(patente, propietario, precio, codigomarca, foto, modelo) VALUES (@patente, @propietario, @precio, @codigomarca, @foto, @modelo)" SelectCommand="SELECT * FROM [autos]">
                <InsertParameters>
                    <asp:Parameter Name="patente" />
                    <asp:Parameter Name="propietario" />
                    <asp:Parameter Name="precio" />
                    <asp:Parameter Name="codigomarca" />
                    <asp:Parameter Name="foto" />
                    <asp:Parameter Name="modelo" />
                </InsertParameters>
            </asp:SqlDataSource>

        </div>
    </form>
</body>
</html>
