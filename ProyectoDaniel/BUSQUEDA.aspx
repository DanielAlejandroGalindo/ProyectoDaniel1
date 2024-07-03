<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="BUSQUEDA.aspx.vb" Inherits="ProyectoDaniel.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            BUSCAR COMPRA POR FECHA</p>
        <p>
            Fecha<asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px">
                <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                <OtherMonthDayStyle ForeColor="#CC9966" />
                <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                <SelectorStyle BackColor="#FFCC66" />
                <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
            </asp:Calendar>
        </p>
        <asp:Button ID="Button1" runat="server" Text="Buscar por Fecha" Width="251px" />
&nbsp;<asp:Button ID="Button2" runat="server" Text="Volver" Width="205px" />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="ClienteNombre" HeaderText="ClienteNombre" SortExpression="ClienteNombre" />
                <asp:BoundField DataField="ElectrodomesticoID" HeaderText="ElectrodomesticoID" SortExpression="ElectrodomesticoID" />
                <asp:BoundField DataField="FechaCompra" HeaderText="FechaCompra" SortExpression="FechaCompra" />
                <asp:BoundField DataField="CantidadComprada" HeaderText="CantidadComprada" SortExpression="CantidadComprada" />
                <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TIENDAELECTROConnectionString %>" SelectCommand="BuscarPorFecha" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="Calendar1" DbType="Date" Name="Fecha" PropertyName="SelectedDate" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </form>
</body>
</html>
