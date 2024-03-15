<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="consultausuario.aspx.cs" Inherits="clase4_abm.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="ingrese el nombre del usuario:"></asp:Label> <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="consular" OnClick="Button1_Click" /> <asp:Label ID="resultado" runat="server" Text="..."></asp:Label>
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/WebForm1.aspx">retornar</asp:LinkButton>
            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-7F1QK8N;Initial Catalog=administracion;Integrated Security=True" SelectCommand="SELECT clave, mail FROM usuarios WHERE (nombre = @nombre)">
                <SelectParameters>
                    <asp:Parameter Name="nombre" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        
    </form>
</body>
</html>
