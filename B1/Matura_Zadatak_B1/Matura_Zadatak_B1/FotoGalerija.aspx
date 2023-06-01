<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FotoGalerija.aspx.cs" Inherits="Matura_Zadatak_B1._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Foto Galerija</title>
    <link rel="stylesheet" href="../CSS/StyleSheet.css" />
</head>
<body>
    <form id="forma" runat="server">

        <h1>Фото галерија</h1>
        <div class="menu">
            <ul class="menulist">
                <li id="btnStart"><a href="FotoGalerija.aspx">Почетна</a></li>
                <li id="btnAbout"><a href="../HTML Pages/O autoru.html">О аутору</a></li>
                <li id="btnManual"><a href="../HTML Pages/Uputstvo.html">Упутство</a></li>
                <li id="lblExam">Завршни испит</li>
            </ul>
        </div>
        <div class="gallery">
            <textarea id="TextArea" runat="server"></textarea>
            <div class="bigPicture">
                <asp:Image ID="imgPrikaz" runat="server" Width="640" Height="480" />
            </div>
            <div class="imgButtons">
                <asp:ImageButton ID="ImageButton1" runat="server" OnClick="ImageButton1_Click" />
                <asp:ImageButton ID="ImageButton2" runat="server" OnClick="ImageButton2_Click" />
                <asp:ImageButton ID="ImageButton3" runat="server" OnClick="ImageButton3_Click" />
                <asp:ImageButton ID="ImageButton4" runat="server" OnClick="ImageButton4_Click" />
                <asp:ImageButton ID="ImageButton5" runat="server" OnClick="ImageButton5_Click" />
                <asp:ImageButton ID="ImageButton6" runat="server" OnClick="ImageButton6_Click" />
                <asp:ImageButton ID="ImageButton7" runat="server" OnClick="ImageButton7_Click" />
                <asp:ImageButton ID="ImageButton8" runat="server" OnClick="ImageButton8_Click" />
                <asp:ImageButton ID="ImageButton9" runat="server" OnClick="ImageButton9_Click" />
                <asp:ImageButton ID="ImageButton10" runat="server" OnClick="ImageButton10_Click" />
            </div>
        </div>
    </form>
</body>
</html>
