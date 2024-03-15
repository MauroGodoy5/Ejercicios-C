<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bajaarticulos.aspx.cs" Inherits="clase5_abm.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Codigo del articulo a borrar:"></asp:Label> <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="borrar" OnClick="Button1_Click" /> <asp:Label ID="resultado" runat="server" Text="..."></asp:Label>
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/WebForm1.aspx">retornar</asp:LinkButton>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-7F1QK8N;Initial Catalog=administracion;Integrated Security=True" DeleteCommand="DELETE FROM articulos WHERE (codigo = @codigo)" ProviderName="System.Data.SqlClient">
                <DeleteParameters>
                    <asp:Parameter Name="codigo" />
                </DeleteParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
