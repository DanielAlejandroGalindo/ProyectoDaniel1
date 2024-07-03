<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="MAS VENDIDOS.aspx.vb" Inherits="ProyectoDaniel.WebForm6" %><%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            GRAFICA DE COSTOS DE PRODUCTOS</div>
        <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Width="378px">
            <series>
                <asp:Series ChartArea="ChartArea1" ChartType="Bar" Name="Series1" XValueMember="Nombre" YValueMembers="Expr1">
                </asp:Series>
            </series>
            <chartareas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </chartareas>
        </asp:Chart>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TIENDAELECTROConnectionString %>" SelectCommand="SELECT        TOP (1000) SUM(Electrodomesticos.Precio) AS Expr1, Electrodomesticos.Nombre
FROM            Electrodomesticos INNER JOIN
                         VentasElectrodomesticos ON Electrodomesticos.ID = VentasElectrodomesticos.ElectrodomesticoID
GROUP BY Electrodomesticos.Nombre"></asp:SqlDataSource>
        <br />
        <asp:Button ID="Button1" runat="server" Text="REGRESAR AL INICIO" Width="231px" />
    </form>
</body>
</html>
