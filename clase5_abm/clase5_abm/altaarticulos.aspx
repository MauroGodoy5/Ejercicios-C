<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="altaarticulos.aspx.cs" Inherits="clase5_abm.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Ingrese descripcion"></asp:Label> <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Ingrese precio"></asp:Label> <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
             <asp:Label ID="Label3" runat="server" Text="Ingrese rubro"></asp:Label> <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourceRubros" DataTextField="descripcion" DataValueField="codigo"></asp:DropDownList>
            <br />
            <asp:Button ID="Button1" runat="server" Text="cargar" OnClick="Button1_Click" /> <asp:Label ID="resultado" runat="server" Text="..."></asp:Label>
            <br />
            <asp:SqlDataSource ID="SqlDataSourceRubros" runat="server" ConnectionString="Data Source=DESKTOP-7F1QK8N;Initial Catalog=administracion;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="select codigo,descripcion from rubros"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSourceArticulos" runat="server" ConnectionString="Data Source=DESKTOP-7F1QK8N;Initial Catalog=administracion;Integrated Security=True" InsertCommand="INSERT INTO articulos(descripcion, precio, codigorubro) VALUES (@descripcion, @precio, @codigorubro)" ProviderName="System.Data.SqlClient">
                <InsertParameters>
                    <asp:Parameter Name="descripcion" />
                    <asp:Parameter Name="precio" />
                    <asp:Parameter Name="codigorubro" />
                </InsertParameters>
            </asp:SqlDataSource>
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/WebForm1.aspx">retornar</asp:LinkButton>
        </div>
    </form>
</body>
</html>
