<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pocetna.aspx.cs" Inherits="Matura_Zadatak_B5._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Музички инструменти</title>
    <link rel="Stylesheet" href="CSS/StyleSheet.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <h1>ОСНОВНА ШКОЛА "СОЊА МАРИНКОВИЋ"</h1>
        </div>
        <div class="menu">
            <ul>
                <li><a href="Pocetna.aspx">Почетна</a></li>
                <li><a href="HTML Pages/O autoru.html">О аутору</a></li>
                <li><a href="HTML Pages/Uputstvo.html">Упутство</a></li>
            </ul>
        </div>
        <div class="content">
            <div class="headertext">
                <h2>Звуци инструмената</h2>
            </div>
            <div class="table">
                <table>
                    <tr id="head" class="darkgreen">
                        <th>Назив инструмента
                        </th>
                        <th>Слика инструмента    
                        </th>
                        <th>Звук инструмента    
                        </th>
                    </tr>
                    <tr class="lightgreen">
                        <td class="text">Гитара
                        </td>
                        <td class="image">
                            <img src="/Images/guitar.jpg" alt="гитара" onclick="window.open('https://sr.wikipedia.org/wiki/Гитара')" />
                        </td>
                        <td class="sound">
                            <img src="/Images/sound.png" alt="sound" onmouseover="PlaySound('guitar')" onmouseout="document.getElementById('guitar').pause()" />
                            <label onclick="OpenSmallWindow(event,'StringInstruments')">Сазнај више</label>
                            <audio id="guitar" src="../Audios/guitar.mp3" preload="auto"></audio>
                        </td>
                    </tr>
                    <tr class="lightgreen">
                        <td class="text">Виолина
                        </td>
                        <td class="image">
                            <img src="/Images/violin.jpg" alt="виолина"  onclick="window.open('https://sr.wikipedia.org/wiki/Виолина')"/>
                        </td>
                        <td class="sound">
                            <img src="/Images/sound.png" alt="sound" onmouseover="PlaySound('violin')" onmouseout="document.getElementById('violin').pause()" />
                            <label onclick="OpenSmallWindow(event,'StringInstruments')">Сазнај више</label>
                            <audio id="violin" src="../Audios/violin.mp3" preload="auto"></audio>
                        </td>
                    </tr>
                    <tr class="lightgreen">
                        <td class="text">Клавир
                        </td>
                        <td class="image">
                            <img src="/Images/piano.jpg" alt="клавир" onclick="window.open('https://sr.wikipedia.org/wiki/Клавир')"/>
                        </td>
                        <td class="sound">
                            <img src="/Images/sound.png" alt="sound" onmouseover="PlaySound('piano')" onmouseout="document.getElementById('piano').pause()" />
                            <label onclick="OpenSmallWindow(event,'InstrumentsWithKeys')">Сазнај више</label>
                            <audio id="piano" src="../Audios/piano.mp3" preload="auto"></audio>
                        </td>
                    </tr>
                    <tr class="lightgreen">
                        <td class="text">Бубњеви
                        </td>
                        <td class="image">
                            <img src="/Images/drums.jpg" alt="бубњеви" onclick="window.open('https://sr.wikipedia.org/wiki/Бубњеви')" />
                        </td>
                        <td class="sound">
                            <img src="/Images/sound.png" alt="sound" onmouseover="PlaySound('drums')" onmouseout="document.getElementById('drums').pause()" />
                            <label onclick="OpenSmallWindow(event,'Percussion')">Сазнај више</label>
                            <audio id="drums" src="../Audios/drums.mp3" preload="auto"></audio>
                        </td>
                    </tr>
                    <tr class="lightgreen">
                        <td class="text">Хармоника
                        </td>
                        <td class="image">
                            <img src="/Images/accordion.jpg" alt="хармоника" onclick="window.open('https://sr.wikipedia.org/wiki/Хармоника')"/>
                        </td>
                        <td class="sound">
                            <img src="/Images/sound.png" alt="sound" onmouseover="PlaySound('accordion')" onmouseout="document.getElementById('accordion').pause()" />
                            <label onclick="OpenSmallWindow(event,'InstrumentsWithKeys')">Сазнај више</label>
                            <audio id="accordion" src="../Audios/accordion.mp3" preload="auto"></audio>
                        </td>
                    </tr>
                    <tr class="lightgreen">
                        <td class="text">КонтраФагот
                        </td>
                        <td class="image">
                            <img src="/Images/contrafagot.jpg" alt="контрафагот" onclick="window.open('https://sr.wikipedia.org/wiki/Контрафагот')"/>
                        </td>
                        <td class="sound">
                            <img src="/Images/sound.png" alt="sound" onmouseover="PlaySound('contrafagot')" onmouseout="document.getElementById('contrafagot').pause()" />
                            <label onclick="OpenSmallWindow(event,'WindInstruments')">Сазнај више</label>
                            <audio id="contrafagot" src="../Audios/contrafagot.mp3" preload="auto"></audio>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="verticaltext">
                <p>
                    култура
                </p>
                <p>
                    Музичка 
                </p>
            </div>
        </div>
        <div class="footer">
            <p>Copyright © Основна школа "Соња Маринковић"</p>
        </div>
    </form>
    <script type="text/javascript" src="../JavaScript/Main.js"></script>
</body>
</html>
