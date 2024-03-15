<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="modificacionarticulos.aspx.cs" Inherits="clase5_abm.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <asp:Label ID="Label1" runat="server" Text="codigo del articulo a buscar:"></asp:Label> <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="consular" OnClick="Button1_Click" /> <asp:Label ID="resultado1" runat="server" Text="..."></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Text="descripcion:"></asp:Label> <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
             <br />
            <asp:Label ID="Label3" runat="server" Text="precio:"></asp:Label> <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label4" runat="server" Text="rubro:"></asp:Label> <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
            <br />
            <asp:Button ID="Button2" runat="server" Text="modificar" OnClick="Button2_Click" /> <asp:Label ID="resultado2" runat="server" Text="..."></asp:Label>
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/WebForm1.aspx">retornar</asp:LinkButton>
            <asp:SqlDataSource ID="SqlDataSourceArticulos" runat="server" ConnectionString="Data Source=DESKTOP-7F1QK8N;Initial Catalog=administracion;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT codigo, descripcion, precio, codigorubro FROM articulos WHERE (codigo = @codigo)" UpdateCommand="UPDATE articulos SET descripcion = @descripcion, precio = @precio, codigorubro = @codigorubro WHERE (codigo = @codigo)">
                <SelectParameters>
                    <asp:Parameter Name="codigo" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="descripcion" />
                    <asp:Parameter Name="precio" />
                    <asp:Parameter Name="codigorubro" />
                    <asp:Parameter Name="codigo" />
                </UpdateParameters>
             </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSourceRubros" runat="server" ConnectionString="Data Source=DESKTOP-7F1QK8N;Initial Catalog=administracion;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT Codigo, descripcion FROM rubros"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
