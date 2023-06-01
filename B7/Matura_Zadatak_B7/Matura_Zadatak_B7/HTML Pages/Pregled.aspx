﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pregled.aspx.cs" Inherits="Matura_Zadatak_B7.HTML_Pages.Pregled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Biblioteka</title>
    <link rel="Stylesheet" href="../CSS/StyleSheet.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <h1>Biblioteka</h1>
        </div>
        <div class="menu">
            <ul>
                <li><a href="../Pocetna.aspx">Početna</a></li>
                <li><a href="Pregled.aspx">Pregled</a></li>
                <li><a href="O autoru.html">O autoru</a></li>
                <li><a href="Uputstvo.html">Uputstvo</a></li>
            </ul>
        </div>
        <div class="body">
            <div class="content">
                <asp:GridView ID="GV" runat="server"></asp:GridView>
            </div>
        </div>
        <div class="footer">
            <p>© Gradska biblioteka</p>
        </div>
    </form>
</body>
</html>