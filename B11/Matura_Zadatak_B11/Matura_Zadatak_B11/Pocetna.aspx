<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pocetna.aspx.cs" Inherits="Matura_Zadatak_B11._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Vremenska prognoza</title>
    <link rel="Stylesheet" href="CSS/StyleSheet.css" />
</head>
<body >
    
    <div class="header"> 
        <h1>Turistička agencija "Planinar"</h1>
    </div>
        <div class="menu">
            <ul>
                <li><a href="Pocetna.aspx">Početna</a></li>
                <li><a href="HTML Pages/O autoru.html">O autoru</a></li>
                <li><a href="HTML Pages/Uputstvo.html">Uputstvo</a></li>
            </ul>
        </div>
        <div class="content">
            <form id="form1" runat="server">
                <asp:Label ID="Label1" runat="server" Text="Izaberite grad:"></asp:Label>
                &emsp;
                <select id="dropdownlistgrad"  class="DLLGrad" onmousedown="this.value='';" onchange="ChangeTown(this.value);" >
                    <option>Beograd</option>
                    <option>Novi Sad</option>
                    <option>Nis</option>
                     <option>Pristina</option>
                    <option>Kragujevac</option>
                    <option>Leskovac</option>
                    <option>Subotica</option>
                    <option>Krusevac</option>
                    <option>Kraljevo</option>
                    <option>Pancevo</option>
                </select>
                <br />
            <iframe id="iframe" src="https://naslovi.net/vremenska-prognoza/beograd" >
            </iframe>
            </form>
            <script type="text/javascript" src="JavaScript/Main.js"></script>
        </div>
        <div class="footer">
            <p>©Turistička agencija "Planinar"</p>
        </div>
</body>
</html>
