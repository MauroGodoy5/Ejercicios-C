<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="clase2_ejercicio1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <asp:Label ID="Label1" runat="server" Text="nombre"></asp:Label> <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="apellido"></asp:Label> <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
                 <asp:Label ID="Label3" runat="server" Text="edad"></asp:Label> <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
             <asp:Label ID="Label4" runat="server" Text="documento"></asp:Label> <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            <br />
             <asp:Label ID="Label5" runat="server" Text="disponibilidad"></asp:Label> <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <br />
            <br />
             <asp:Label ID="Label6" runat="server" Text="movilidad"></asp:Label> <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label7" runat="server" Text="comentario"></asp:Label>  <asp:TextBox ID="TextBox7" runat="server" TextMode="MultiLine"></asp:TextBox>
            <br />
              <asp:Button ID="Button1" runat="server" Text="cargar" OnClick="Button1_Click" /> <asp:Label ID="resultado" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/WebForm1.aspx">retornar</asp:LinkButton>
        </div>
    </form>
</body>
</html>
