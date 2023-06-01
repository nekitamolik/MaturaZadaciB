<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Grafika.aspx.cs" Inherits="Matura_Zadatak_B6.HTML_Pages.Grafika" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Uspeh učenika</title>
    <link rel="Stylesheet" href="../CSS/StyleSheet.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <h1>Uspeh učenika</h1>
        </div>
        <div class="menu">
            <ul>
                <li><a href="../Pocetna.aspx">Početna</a></li>
                <li><a href="Grafika.aspx">Grafika</a></li>
                <li><a href="O autoru.html">O autoru</a></li>
            </ul>
        </div>    
        <div class="content">
           <asp:Chart ID="Graph" runat=server>
               <Series>
                   <asp:Series Name="Series1">

                   </asp:Series></Series>
               <ChartAreas>
                   <asp:ChartArea Name="ChartArea1">

                   </asp:ChartArea>
                   </ChartAreas>

           </asp:Chart>
        </div>
        <div class="footer">
            <p> © Osnovna škola "Sonja Marinković"</p>
        </div>
    </form>
</body>
</html>
