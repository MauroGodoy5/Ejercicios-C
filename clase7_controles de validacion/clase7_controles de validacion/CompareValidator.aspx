<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompareValidator.aspx.cs" Inherits="clase7_controles_de_validacion.CompareValidator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Nombre de usuario: "></asp:Label><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
             <br />
            <asp:Label ID="Label2" runat="server" Text="Contraseña: "></asp:Label><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
             <br />
            <asp:Label ID="Label3" runat="server" Text="Repita Contraseña: "></asp:Label><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox> <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="CompareValidator" ControlToCompare="TextBox2" ControlToValidate="TextBox3" Type="Integer">Las claves ingresadas no son iguales!</asp:CompareValidator>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Confirmar" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
