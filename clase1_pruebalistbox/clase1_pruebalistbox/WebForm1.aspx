<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="clase1_pruebalistbox.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="ingrese el primer valor:"></asp:Label> <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="ingrese el segundo valor:"></asp:Label> <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <asp:ListBox ID="ListBox1" runat="server"  >
                <asp:ListItem>sumar</asp:ListItem>
                <asp:ListItem>restar</asp:ListItem>
                <asp:ListItem>multiplicar</asp:ListItem>
                <asp:ListItem>dividir</asp:ListItem>
            </asp:ListBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="resultado" OnClick="Button1_Click" />
            <br />
            <asp:Label ID="Label_resultado" runat="server" ></asp:Label>
        </div>
    </form>
</body>
</html>
