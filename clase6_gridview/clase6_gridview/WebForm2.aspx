<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="clase6_gridview.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="codigo" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDataBound="GridView2_RowDataBound" OnSelectedIndexChanged="GridView2_SelectedIndexChanged"  >
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="codigo" HeaderText="codigo" ReadOnly="True" SortExpression="codigo" />
                    <asp:BoundField DataField="descriarticulo" HeaderText="Descripción del Art." SortExpression="descriarticulo" />
                    <asp:BoundField DataField="precio" HeaderText="precio" SortExpression="precio" DataFormatString="{0:C}" />
                    <asp:BoundField DataField="descrirubro" HeaderText="Descripción del Rubro." SortExpression="descrirubro" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="Blue" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:administracionConnectionString1 %>" DeleteCommand="DELETE FROM [articulos] WHERE [codigo] = @codigo" InsertCommand="INSERT INTO [articulos] ([descripcion], [precio], [codigorubro]) VALUES (@descripcion, @precio, @codigorubro)" ProviderName="<%$ ConnectionStrings:administracionConnectionString1.ProviderName %>" SelectCommand="SELECT ar.codigo,
 ar.descripcion as descriarticulo,
 precio,
 ru.descripcion as descrirubro
 from articulos as ar
 join rubros as ru on ru.codigo=ar.codigorubro" UpdateCommand="UPDATE [articulos] SET [descripcion] = @descripcion, [precio] = @precio, [codigorubro] = @codigorubro WHERE [codigo] = @codigo">
                <DeleteParameters>
                    <asp:Parameter Name="codigo" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="descripcion" Type="String" />
                    <asp:Parameter Name="precio" Type="Double" />
                    <asp:Parameter Name="codigorubro" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="descripcion" Type="String" />
                    <asp:Parameter Name="precio" Type="Double" />
                    <asp:Parameter Name="codigorubro" Type="Int32" />
                    <asp:Parameter Name="codigo" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

        </div>
    </form>
</body>
</html>
