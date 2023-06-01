<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Efekti tabele.aspx.cs" Inherits="Matura_Zadatak_B22._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Efekti tabele</title>
    <link rel="Stylesheet" href="CSS/StyleSheet.css" />
</head>
<body>
        <div class="header">
            <ul>
                <li>Zadatak 14</li>
                <li>TV Program</li>
            </ul>
        </div>
        <div class="content">
            <h1>Efekti Tabele</h1>
            <br />
            <br />
            <hr />
            <br />
            <table id="Tabela">
                <tr>
                    <th>Rbr</th>
                    <th>Ime</th>
                    <th>Prezime</th>
                    <th>Škola</th>
                    <th>Poeni</th>
                </tr>
                <tr>
                    <td>1.</td>
                    <td>Pera</td>
                    <td>Mikic</td>
                    <td>OŠ “Vuk Karadžić”</td>
                    <td>54</td>
                </tr>
                <tr>
                    <td>2.</td>
                    <td>Mika</td>
                    <td>Zikic</td>
                    <td>OŠ “Ivo Andrić”</td>
                    <td>42</td>
                </tr>
                <tr>
                    <td>3.</td>
                    <td>Milan</td>
                    <td>Markovic</td>
                    <td>OŠ “Mika Antic”</td>
                    <td>73</td>
                </tr>
                <tr>
                    <td>4.</td>
                    <td>Ivan</td>
                    <td>Tosic</td>
                    <td>OŠ “Bubanjski heroji”</td>
                    <td>21</td>
                </tr>
                <tr>
                    <td>5.</td>
                    <td>Jelena</td>
                    <td>Peric</td>
                    <td>OŠ “Milan Milutinovic”</td>
                    <td>68</td>
                </tr>
            </table>
            <br />
            <script type="text/javascript" src="JavaScript/Main.js"></script>
            <hr />
            <br />
            <div class="tasteri">
                <button onclick="Sort()">Sortiraj</button>
                &nbsp;
                <button onclick="Neparni()">Oboji neparne</button>
                &nbsp;
                <button onclick="Polozili()">Polozili</button>
                &nbsp;
                <button onclick="Pali()">Nisu polozili</button>
                &nbsp;
                <button onclick="IzdvojPolozili()">Izdvoji one koji su polozili</button>
            </div>
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

</body>
</html>

