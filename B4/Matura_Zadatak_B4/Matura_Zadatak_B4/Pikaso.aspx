<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pikaso.aspx.cs" Inherits="Matura_Zadatak_B4._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Пикасо</title>
    <link rel="Stylesheet" href="CSS/StyleSheet.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <h1>ОСНОВНА ШКОЛА "СОЊА МАРИНКОВИЋ"</h1>
        </div>
        <div class="menu">
            <ul onload="ChangeSlide(1)">
                <li><a href="Pikaso.aspx">Почетна</a></li>
                <li><a href="HTML Pages/O autoru.html">О аутору</a></li>
                <li><a href="HTML Pages/Uputstvo.html">Упутство</a></li>
            </ul>
        </div>
        <div class="content">
            <div class="slides">
                <div class="slide">
                    <div class="img">
                        <img id="I1" class="fade" src="../Images/1.jpg" alt="слика" />
                    </div>
                    <div class="caption">
                        <h1 id="H1">PRVA</h1>
                        <h2 id="h1">1111</h2>
                        <p id="P1">Ovo je prva slika ...</p>
                    </div>
                </div>
                <div class="slide">
                    <div class="img">
                        <img id="I2" class="fade" src="../Images/2.jpg" alt="слика" />
                    </div>
                    <div class="caption">
                        <h1 id="H2">DRUGA</h1>
                        <h2 id="h2">2222</h2>
                        <p id="P2">Ovo je druga slika ...</p>
                    </div>
                </div>
                <div class="slide">
                    <div class="img">
                        <img id="I3" class="fade" src="../Images/3.jpg" alt="слика" />
                    </div>
                    <div class="caption">
                        <h1 id="H3">TRECA</h1>
                        <h2 id="h3">3333</h2>
                        <p id="P3">Ovo je treca slika ...</p>
                    </div>
                </div>
                <div class="slide">
                    <div class="img">
                        <img id="I4" class="fade" src="../Images/4.jpg" alt="слика" />
                    </div>
                    <div class="caption">
                        <h1 id="H4">CETVRTA</h1>
                        <h2 id="h4">4444</h2>
                        <p id="P4">Ovo je cetvrta slika ...</p>
                    </div>
                </div>
                <div class="slide">
                    <div class="img">
                        <img id="I5" class="fade" src="../Images/5.jpg" alt="слика" />
                    </div>
                    <div class="caption">
                        <h1 id="H5">PETA</h1>
                        <h2 id="h5">5555</h2>
                        <p id="P5">Ovo je peta slika ...</p>
                    </div>
                </div>
                <div id="bullets">
                    <span id="B1" class="bullets"></span>
                    <span id="B2" class="bullets"></span>
                    <span id="B3" class="bullets"></span>
                    <span id="B4" class="bullets"></span>
                    <span id="B5" class="bullets"></span>
                </div>
            </div>
            <div class="verticaltext">
                <p>Пикасо</p>
            </div>
        </div>
        <div class="footer">
            <p>Copyright © ОСНОВНА ШКОЛА "СОЊА МАРИНКОВИЋ"</p>
        </div>
        <script type="text/javascript" src="JavaScript/Main.js"></script>
    </form>
</body>
</html>
