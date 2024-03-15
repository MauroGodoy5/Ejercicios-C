<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RangeValidator.aspx.cs" Inherits="clase7_controles_de_validacion.RangeValidator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <asp:Label ID="Label1" runat="server" Text="ingrese la edad del postulante: "/> <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="RangeValidator" ControlToValidate="TextBox1" MaximumValue="35" MinimumValue="18" Type="Integer">El postulante debe terner entre 18 y 35 años!</asp:RangeValidator>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Confirmar" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
