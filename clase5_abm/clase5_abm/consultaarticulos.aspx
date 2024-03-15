<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="consultaarticulos.aspx.cs" Inherits="clase5_abm.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="ingrese el codigo de articulo"></asp:Label> <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="cargar" OnClick="Button1_Click" />
            <br />
            <asp:Label ID="resultado" runat="server" Text="..."></asp:Label>
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/WebForm1.aspx">retornar</asp:LinkButton>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-7F1QK8N;Initial Catalog=administracion;Integrated Security=True" SelectCommand="SELECT ar.descripcion AS descriarticulo, ar.precio, ru.descripcion AS descrirubro FROM articulos AS ar INNER JOIN rubros AS ru ON ru.Codigo = ar.codigorubro WHERE (ar.codigo = @codigo)">
                <SelectParameters>
                    <asp:Parameter Name="codigo" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
