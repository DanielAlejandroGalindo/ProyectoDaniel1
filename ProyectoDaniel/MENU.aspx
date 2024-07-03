<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="MENU.aspx.vb" Inherits="ProyectoDaniel.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #form1 {
            height: 53px;
        }
    </style>
</head>
<body style="height: 565px; width: 615px;">
    <form id="form1" runat="server">
        <div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <h2 style="border: 0px; border-collapse: collapse; border-spacing: 0px; list-style: none; margin: 0px; padding: 0px; font: 24px / 28px Roboto, sans-serif; height: 28px; -webkit-line-clamp: 1; overflow: hidden; text-overflow: ellipsis; display: -webkit-box; -webkit-box-orient: vertical; padding-inline: 20px; margin-block-end: 8px; color: rgb(17, 17, 17); letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">TIENDA DE ELECTRODOMESTICOS EL GALI</h2>
            <h2 style="border: 0px; border-collapse: collapse; border-spacing: 0px; list-style: none; margin: 0px; padding: 0px; font: 24px / 28px Roboto, sans-serif; height: 28px; -webkit-line-clamp: 1; overflow: hidden; text-overflow: ellipsis; display: -webkit-box; -webkit-box-orient: vertical; padding-inline: 20px; margin-block-end: 8px; color: rgb(17, 17, 17); letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">RESE<a h="ID=SERP,5503.2" href="https://www.bing.com/ck/a?!&amp;&amp;p=34cc90e5074b56ceJmltdHM9MTcxOTk2NDgwMCZpZ3VpZD0zODc0YTE2NC1mNTQzLTZiNzktMGQyNy1iNWQ0ZjQyMDZhMDcmaW5zaWQ9NTUwMw&amp;ptn=3&amp;ver=2&amp;hsh=3&amp;fclid=3874a164-f543-6b79-0d27-b5d4f4206a07&amp;psq=LA+LETRA+N&amp;u=a1aHR0cHM6Ly9lcy53aWtpcGVkaWEub3JnL3dpa2kvJUMzJTkx&amp;ntb=1" style="color: rgb(64, 7, 162); text-decoration: underline; font-weight: normal;" target="_blank">Ñ</a>AS</h2>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataSourceID="SqlDataSource1" GridLines="None" Width="266px">
                <Columns>
                    <asp:BoundField DataField="ElectrodomesticoID" HeaderText="ElectrodomesticoID" SortExpression="ElectrodomesticoID" />
                    <asp:BoundField DataField="Comentario" HeaderText="Comentario" SortExpression="Comentario" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TIENDAELECTROConnectionString %>" SelectCommand="SELECT [ElectrodomesticoID], [Comentario] FROM [ComentariosElectrodomesticos]"></asp:SqlDataSource>
&nbsp;
            <asp:Button ID="Button1" runat="server" Height="46px" Text="IR A AGREGAR" Width="120px" />
&nbsp;
            <asp:Button ID="Button4" runat="server" Height="39px" Text="IR A BUSQUEDA" Width="114px" />
&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Height="42px" Text="IR A ELIMINAR" Width="138px" />
&nbsp;
            <asp:Button ID="Button5" runat="server" Height="41px" Text="IR GRAFICA  MES" Width="130px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" Height="43px" Text="IR A MODIFICAR" Width="155px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button6" runat="server" Height="40px" Text="IR A CONSULTAS" Width="138px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image1" runat="server" Height="81px" ImageUrl="https://th.bing.com/th/id/OIP.LTv9RkhbnAESDcMm2uMB0AHaGi?rs=1&amp;pid=ImgDetMain" Width="179px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <p>
&nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
