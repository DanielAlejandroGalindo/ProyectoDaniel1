<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Vendidos.aspx.vb" Inherits="ProyectoDaniel.WebForm7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            ELECTRODOMESTICO POR PROVEDOR<br />
        </div>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Nombre" DataValueField="Nombre">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TIENDAELECTROConnectionString %>" SelectCommand="SELECT [Nombre] FROM [MarcasElectrodomesticos]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataSourceID="SqlDataSource2" GridLines="None">
            <Columns>
                <asp:BoundField DataField="Tipo" HeaderText="Tipo" SortExpression="Tipo" />
                <asp:BoundField DataField="Proveedor" HeaderText="Proveedor" SortExpression="Proveedor" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
                <asp:BoundField DataField="Stock" HeaderText="Stock" SortExpression="Stock" />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TIENDAELECTROConnectionString %>" SelectCommand="SELECT        Electrodomesticos.Tipo, MarcasElectrodomesticos.Nombre AS Proveedor, Electrodomesticos.Nombre, Electrodomesticos.Precio, Electrodomesticos.Stock
FROM            Electrodomesticos INNER JOIN
                         MarcasElectrodomesticos ON Electrodomesticos.ID = MarcasElectrodomesticos.ID
						 where(MarcasElectrodomesticos.Nombre=@Nombre)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="Nombre" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        <p>
            CONSULTAR LO QUE COMPRO EL CLIENTE</p>
        <p>
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="ClienteNombre" DataValueField="ClienteNombre">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:TIENDAELECTROConnectionString %>" SelectCommand="SELECT [ClienteNombre] FROM [Compras]"></asp:SqlDataSource>
        </p>
        <p>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataSourceID="SqlDataSource4" GridLines="None">
                <Columns>
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                    <asp:BoundField DataField="ClienteNombre" HeaderText="ClienteNombre" SortExpression="ClienteNombre" />
                    <asp:BoundField DataField="FechaCompra" HeaderText="FechaCompra" SortExpression="FechaCompra" />
                </Columns>
                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#594B9C" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#33276A" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:TIENDAELECTROConnectionString %>" SelectCommand="SELECT        Electrodomesticos.Nombre, Compras.ClienteNombre, Compras.FechaCompra
FROM            Electrodomesticos INNER JOIN
                         Compras ON Electrodomesticos.ID = Compras.ElectrodomesticoID
						 where (Compras.ClienteNombre=@Nombre)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList2" Name="Nombre" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            CONSULTAR GARANTIA DEL CLIENTE</p>
        <p>
            <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource5" DataTextField="DuracionMeses" DataValueField="DuracionMeses">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:TIENDAELECTROConnectionString %>" SelectCommand="SELECT [DuracionMeses] FROM [GarantiasElectrodomesticos]"></asp:SqlDataSource>
        </p>
        <p>
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataSourceID="SqlDataSource6" GridLines="None">
                <Columns>
                    <asp:BoundField DataField="DuracionMeses" HeaderText="DuracionMeses" SortExpression="DuracionMeses" />
                    <asp:BoundField DataField="ElectrodomesticoID" HeaderText="ElectrodomesticoID" SortExpression="ElectrodomesticoID" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                </Columns>
                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#594B9C" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#33276A" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:TIENDAELECTROConnectionString %>" SelectCommand="SELECT        GarantiasElectrodomesticos.DuracionMeses, GarantiasElectrodomesticos.ElectrodomesticoID, Electrodomesticos.Nombre
FROM            GarantiasElectrodomesticos INNER JOIN
                         Electrodomesticos ON GarantiasElectrodomesticos.ElectrodomesticoID = Electrodomesticos.ID
						 where(GarantiasElectrodomesticos.DuracionMeses=@Nombre)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList3" Name="Nombre" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" Height="55px" Text="VOLVER" Width="130px" />
        </p>
        <p style="height: 4px">
            &nbsp;</p>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
