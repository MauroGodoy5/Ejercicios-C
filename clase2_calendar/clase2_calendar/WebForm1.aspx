<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="clase2_calendar.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
            <br />
            <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Height="159px" Width="247px" ></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="grabar actividades" OnClick="Button1_Click" />

        </div>
    </form>
</body>
</html>
