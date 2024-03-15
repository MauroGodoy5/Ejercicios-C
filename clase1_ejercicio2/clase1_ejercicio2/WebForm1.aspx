<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="clase1_ejercicio2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="cual es la capital de argentina?"></asp:Label>
            <br />
            <asp:RadioButton ID="RadioButton1" runat="server" Text="buenos aires" GroupName="grupo1" />
            <br />
            <asp:RadioButton ID="RadioButton2" runat="server" Text="cordoba " GroupName="grupo1" />
            <br />
            <asp:RadioButton ID="RadioButton3" runat="server" Text=" santa fe "  GroupName="grupo1"/>
            <br />
            <asp:Label ID="Label2" runat="server" Text="cual es la capital de españa?"></asp:Label>
            <br />
            <asp:RadioButton ID="RadioButton4" runat="server" Text="barcelona " GroupName="grupo2" />
            <br />
            <asp:RadioButton ID="RadioButton5" runat="server" Text=" sevilla " GroupName="grupo2" />
            <br />
            <asp:RadioButton ID="RadioButton6" runat="server" Text="madrid "  GroupName="grupo2"/>
            <br />
            <asp:Label ID="Label3" runat="server" Text="que pais limita con argentina?"></asp:Label>
            <br />
            <asp:RadioButton ID="RadioButton7" runat="server" Text=" chile" GroupName="grupo3" />
            <br />
            <asp:RadioButton ID="RadioButton8" runat="server" Text=" bolivia "  GroupName="grupo3"/>
            <br />
            <asp:RadioButton ID="RadioButton9" runat="server" Text="cuba " GroupName="grupo3" />
            <br />
            <asp:Label ID="Label4" runat="server" Text="que lenguaje estamos usando?"></asp:Label>
            <br />
            <asp:RadioButton ID="RadioButton10" runat="server" Text=" c#" GroupName="grupo4" />
            <br />
            <asp:RadioButton ID="RadioButton11" runat="server" Text="javascript " GroupName="grupo4" />
            <br />
            <asp:RadioButton ID="RadioButton12" runat="server" Text="php " GroupName="grupo4" />
            <br />

            <asp:Button ID="Button1" runat="server" Text="resultado" OnClick="Button1_Click" />

            <br />

            <asp:Label ID="resultado" runat="server" Text="resultados"></asp:Label>
        </div>
    </form>
</body>
</html>
