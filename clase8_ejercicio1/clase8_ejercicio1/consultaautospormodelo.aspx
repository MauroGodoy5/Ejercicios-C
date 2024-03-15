<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="consultaautospormodelo.aspx.cs" Inherits="clase8_ejercicio1.consultaautospormodelo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Ingrese año Inicial: "></asp:Label><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Ingrese año Final: "></asp:Label><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Mostrar Autos" OnClick="Button1_Click" />
            <br />
            <asp:Label ID="resultado" runat="server" Text="..."></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:automovilesConnectionString1 %>" SelectCommand="SELECT foto FROM autos WHERE (modelo &gt;= @modelo1) AND (modelo &lt;= @modelo2)">
                <SelectParameters>
                    <asp:Parameter Name="modelo1" />
                    <asp:Parameter Name="modelo2" />
                </SelectParameters>
            </asp:SqlDataSource>

        </div>
    </form>
</body>
</html>
