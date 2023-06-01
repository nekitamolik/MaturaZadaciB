<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pocetna.aspx.cs" Inherits="Matura_Zadatak_B6._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Uspeh učenika</title>
    <link rel="Stylesheet" href="CSS/StyleSheet.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <h1>Uspeh učenika</h1>
        </div>
        <div class="menu">
            <ul>
                <li><a href="Pocetna.aspx">Početna</a></li>
                <li><a href="HTML Pages/Grafika.aspx">Grafika</a></li>
                <li><a href="HTML Pages/O autoru.html">O autoru</a></li>
            </ul>
        </div>    
        <div class="content">
            <div class="GV">
                <asp:GridView ID="GV" runat="server"></asp:GridView>
            </div>
        </div>
        <div class="footer">
            <p> © Osnovna škola "Sonja Marinković"</p>
        </div>
    </form>
</body>
</html>
