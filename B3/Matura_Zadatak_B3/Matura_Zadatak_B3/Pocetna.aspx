<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pocetna.aspx.cs" Inherits="Srbija_i_njeni_susedi._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Србија и њени суседи</title>
    <link rel="Stylesheet" href="../CSS/StyleSheet.css" />
    <script type="text/javascript" src="../JavaScript/Main.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <h1>ОСНОВНА ШКОЛА "СОЊА МАРИНКОВИЋ"</h1>
        </div>
        <div class="menu">
            <ul>
                <li><a href="Pocetna.aspx">Почетна</a></li>
                <li><a href="../HTML Pages/O autoru.html">О аутору</a></li>
                <li><a href="../HTML Pages/Uputstvo.html">Упутство</a></li>
            </ul>
        </div>
        <div class="content">
            <div class="headertext">
                <h2>Србија и њени суседи</h2>
            </div>
            <div class="body">
                <div class="map">
                    <img id="map" src="Images/Serbia-Map.jpg" alt="Serbia Map" />
                    <div id="serbia" class="flag">
                        <img src="Images/Serbian-Flag.jpg" alt="Flag" onmouseover="Hover('Serbia');" onmouseout="document.getElementById('Serbia').pause()"/>
                        <audio id="Serbia" src="Audios/Serbian Anthem.mp3" preload="auto"></audio>
                        <p onclick="SmallWindow(event,'Serbia')">Србија</p>
                    </div>
                    <div id="albania" class="flag">
                        <img src="Images/Albania-Flag.jpg" alt="Flag" onmouseover="Hover('Albania');" onmouseout="document.getElementById('Albania').pause()"/>
                        <audio id="Albania" src="Audios/Albanian Anthem.mp3" preload="auto"></audio>
                        <p onclick="SmallWindow(event,'Albania')">Албанија</p>
                    </div>
                    <div id="macedonia" class="flag">
                        <img src="Images/NorthMacedonia-Flag.jpg" alt="Flag" onmouseover="Hover('Macedonia');" onmouseout="document.getElementById('Macedonia').pause()"/>
                        <audio id="Macedonia" src="Audios/Macedonia Anthem.mp3" preload="auto"></audio>
                        <p onclick="SmallWindow(event,'Macedonia')">Северна Македонија</p>
                    </div>
                    <div id="bulgaria" class="flag">
                        <img src="Images/Bulgaria-Flag.jpg" alt="Flag" onmouseover="Hover('Bulgaria');" onmouseout="document.getElementById('Bulgaria').pause()"/>
                        <audio id="Bulgaria" src="Audios/Bulgaria Anthem.mp3" preload="auto"></audio>
                        <p onclick="SmallWindow(event,'Bulgaria')">Бугарска</p>
                    </div>
                    <div id="montenegro" class="flag">
                        <img src="Images/Montenegro-Flag.jpg" alt="Flag" onmouseover="Hover('Montenegro');" onmouseout="document.getElementById('Montenegro').pause()"/>
                        <audio id="Montenegro" src="Audios/Montenegro Anthem.mp3" preload="auto"></audio>
                        <p onclick="SmallWindow(event,'Montenegro')">Црна Гора</p>
                    </div>
                    <div id="romania" class="flag">
                        <img src="Images/Romania-Flag.jpg" alt="Flag" onmouseover="Hover('Romania');" onmouseout="document.getElementById('Romania').pause()"/>
                        <audio id="Romania" src="Audios/Romanian Anthem.mp3" preload="auto"></audio>
                        <p onclick="SmallWindow(event,'Romania')">Румунија</p>
                    </div>
                    <div id="hungary" class="flag">
                        <img src="Images/Hungary-Flag.jpg" alt="Flag" onmouseover="Hover('Hungary');" onmouseout="document.getElementById('Hungary').pause()"/>
                        <audio id="Hungary" src="Audios/Hungary Anthem.mp3" preload="auto"></audio>
                        <p onclick="SmallWindow(event,'Hungary')">Мађарска</p>
                    </div>
                    <div id="croatia" class="flag">
                        <img src="Images/Croatia-Flag.jpg" alt="Flag" onmouseover="Hover('Croatia');" onmouseout="document.getElementById('Croatia').pause()"/>
                        <audio id="Croatia" src="Audios/Croatia Anthem.mp3" preload="auto"></audio>
                        <p onclick="SmallWindow(event,'Croatia')">Хрватска</p>
                    </div>
                    <div id="bosnia" class="flag">
                        <img src="Images/BosniaAndHerzegovina-Flag.jpg" alt="Flag" onmouseover="Hover('Bosnia');" onmouseout="document.getElementById('Bosnia').pause()"/>
                        <audio id="Bosnia" src="Audios/Bosnia & Herzegovina Anthem.mp3" preload="auto"></audio>
                        <p onclick="SmallWindow(event,'Bosnia')">Босна и Херцеговина</p>
                    </div>
                </div>
                <div class="verticaltext">
                    <p>Географија</p>
                </div>
            </div>
        </div>
        <div class="footer">
            <p>Copyright © ОСНОВНА ШКОЛА "СОЊА МАРИНКОВИЋ"</p>
        </div>
    </form>
</body>
</html>
