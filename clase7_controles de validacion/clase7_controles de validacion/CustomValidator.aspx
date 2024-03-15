<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomValidator.aspx.cs" Inherits="clase7_controles_de_validacion.CustomValidator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Ingrese un multiplo de 5: "></asp:Label> <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="CustomValidator" ControlToValidate="TextBox1" Text="No es multiplo de 5!" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Confirmar" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
