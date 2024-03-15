<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="upload3.aspx.cs" Inherits="clase8_upload_de_Archivos.upload3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="seleccione un archivo: "></asp:Label> <asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Confirmar" OnClick="Button1_Click" /> <asp:Label ID="resultado" runat="server" Text="..."></asp:Label>
            <br />
             <asp:Label ID="Label5" runat="server" Text="tamaño del archivo en bytes: "></asp:Label> <asp:Label ID="Label2" runat="server" Text="..."></asp:Label>
            <br />
            <asp:Label ID="Label6" runat="server" Text="nombre del archivo: "></asp:Label> <asp:Label ID="Label3" runat="server" Text="..."></asp:Label>
            <br />
            <asp:Label ID="Label7" runat="server" Text="ubicacion del archivo: "></asp:Label> <asp:Label ID="Label4" runat="server" Text="..."></asp:Label>
        </div>
    </form>
</body>
</html>
