<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="abmmarcas.aspx.cs" Inherits="clase8_ejercicio1.abmmarcas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="codigo" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar.">
                <Columns>
                    <asp:BoundField DataField="codigo" HeaderText="codigo" ReadOnly="True" SortExpression="codigo" />
                    <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:automovilesConnectionString1 %>" DeleteCommand="DELETE FROM [marcas] WHERE [codigo] = @codigo" InsertCommand="INSERT INTO [marcas] ([descripcion]) VALUES (@descripcion)" SelectCommand="SELECT [codigo], [descripcion] FROM [marcas]" UpdateCommand="UPDATE [marcas] SET [descripcion] = @descripcion WHERE [codigo] = @codigo">
                <DeleteParameters>
                    <asp:Parameter Name="codigo" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="descripcion" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="descripcion" Type="String" />
                    <asp:Parameter Name="codigo" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />

            <asp:Label ID="Label1" runat="server" Text="Ingrese una Marca: "></asp:Label> <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Confirmar" OnClick="Button1_Click" />


        </div>
    </form>
</body>
</html>
