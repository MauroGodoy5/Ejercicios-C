<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="borradoauto.aspx.cs" Inherits="clase8_ejercicio1.borradoauto" %>

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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:automovilesConnectionString1 %>" DeleteCommand="DELETE FROM autos WHERE (patente = @patente)" SelectCommand="SELECT * FROM [autos]">
                <DeleteParameters>
                    <asp:Parameter Name="patente" />
                </DeleteParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
