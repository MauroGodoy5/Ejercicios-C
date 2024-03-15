<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RequiredFieldValidator.aspx.cs" Inherits="clase7_controles_de_validacion.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <asp:Label ID="Label1" runat="server" Text="ingrese un nombre de usuario: "></asp:Label> <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox1" Text="Debe ingresar un dato!" ValidateRequestMode="Inherit"></asp:RequiredFieldValidator>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Confirmar" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
