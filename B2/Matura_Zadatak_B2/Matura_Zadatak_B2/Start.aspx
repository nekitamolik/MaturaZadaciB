<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Start.aspx.cs" Inherits="Matura_Zadatak_B2._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Domace Zivotinje</title>
    <link rel="Stylesheet" href="../CSS/StyleSheet.css" />
    <script type="text/javascript" src="../JavaScript/Main.js"></script>
</head>
<body>
    <form id="body" runat="server">
        <div class="header">
            <h1>Домаће Животиње</h1>
        </div>
        <ul class="menu">
            <li><a href="Start.aspx">Почетна</a></li>
            <li><a href="../HTML Pages/O autoru.html">О аутору</a></li>
            <li><a href="../HTML Pages/Uputstvo.html">Упутство</a></li>
        </ul>
        <div class="content">
            <img id="ImageCircleDog" src="Images/dog.jpg" alt="Пас" onmouseover="PlaySound('Dog')" onmouseout="document.getElementById('Dog').pause()"
                onclick="SmallWindowOpen(event,'Dog')" />
            <audio id="Dog" src="Audios/Dog Barking.mp3" preload="auto"></audio>
            <img id="ImageCircleDuck" src="Images/duck.jpg" alt="Патка" onmouseover="PlaySound('Duck')" onmouseout="document.getElementById('Duck').pause()"
                onclick="SmallWindowOpen(event,'Duck')" />
            <audio id="Duck" src="Audios/Duck.mp3" preload="auto"></audio>
            <img id="ImageCircleCat" src="Images/cat.jpg" alt="Мачка" onmouseover="PlaySound('Cat')" onmouseout="document.getElementById('Cat').pause()"
                onclick="SmallWindowOpen(event,'Cat')" />
            <audio id="Cat" src="Audios/Cat.mp3" preload="auto"></audio>
            <img id="ImageCircleChicken" src="Images/chicken.jpg" alt="Пиле" onmouseover="PlaySound('Chicken')" onmouseout="document.getElementById('Chicken').pause()"
                onclick="SmallWindowOpen(event,'Chicken')" />
            <audio id="Chicken" src="Audios/Chicken.mp3" preload="auto"></audio>
            <img id="ImageCircleCow" src="Images/cow.jpg" alt="Крава" onmouseover="PlaySound('Cow')" onmouseout="document.getElementById('Cow').pause()"
                onclick="SmallWindowOpen(event,'Cow')" />
            <audio id="Cow" src="Audios/Cow.mp3" preload="auto"></audio>
        </div>
        <div class="footer">
            <label id="LabelFooter">Copyright © Предшколска установа "Срећно дете"</label>
        </div>
    </form>
</body>
</html>
