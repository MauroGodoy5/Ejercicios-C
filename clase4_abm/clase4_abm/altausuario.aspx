<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="altausuario.aspx.cs" Inherits="clase4_abm.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="usuario"></asp:Label> <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="clave"></asp:Label> <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label3" runat="server" Text="mail"></asp:Label> <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="cargar" OnClick="Button1_Click" /> <asp:Label ID="resultado" runat="server" Text="..."></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-7F1QK8N;Initial Catalog=administracion;Integrated Security=True" InsertCommand="INSERT INTO usuarios(nombre, clave, mail) VALUES (@nombre, @clave, @mail)" ProviderName="System.Data.SqlClient">
                <InsertParameters>
                    <asp:Parameter Name="nombre" />
                    <asp:Parameter Name="clave" />
                    <asp:Parameter Name="mail" />
                </InsertParameters>
            </asp:SqlDataSource>
             <br />
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/WebForm1.aspx">retornar</asp:LinkButton>

        </div>
    </form>
</body>
</html>
