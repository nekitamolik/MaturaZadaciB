<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sortiranje.aspx.cs" Inherits="Matura_Zadatak_B21._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sortiranje</title>
    <link rel="Stylesheet" href="CSS/StyleSheet.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <ul>
                <li>Zadatak 14</li>
                <li>TV Program</li>
            </ul>
        </div>
        <div class="content">
            <h1>Sortiranje Tabele</h1>
            <br />
            <br />
            <hr />
            <br />
            <table id="Tabela">
                <tr>
                    <th onclick="sortTable(0)"><a href="#">Rbr</a></th>
                    <th onclick="sortTable(1)"><a href="#">Ime</a></th>
                    <th onclick="sortTable(2)"><a href="#">Prezime</a></th>
                </tr>
                <tr>
                    <td>1.</td>
                    <td>Pera</td>
                    <td>Mikic</td>
                </tr>
                <tr>
                    <td>2.</td>
                    <td>Mika</td>
                    <td>Zikic</td>
                </tr>
                <tr>
                    <td>3.</td>
                    <td>Zika</td>
                    <td>Peric</td>
                </tr>
            </table>
            <script type="text/javascript" src="JavaScript/Main.js"></script>
        </div>
        <div class="footer">
            <table>
                <tr>
                    <td>Elektrotehnicka skola "Nikola Tesla" Nis
                    </td>
                    <td>
                        <a href="HTML Pages/O autoru.html">O autoru</a>
                    </td>
                </tr>
            </table>
        </div>
    </form>
    
</body>
</html>
