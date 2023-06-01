<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Konvertor.aspx.cs" Inherits="Matura_Zadatak_B19._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Konvertor</title>
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
        <div class="translateblock">
            <br />
            <label class="label">Text na latinici:</label>
            <br />
            <asp:TextBox ID="TextBoxLatin" CssClass="textarea" runat="server" TextMode="MultiLine"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="ButtonLatinToCyrillic" runat="server" Text="Prevedi na cirilicu" OnClick="ButtonLatinToCyrillic_Click" />
        </div>
            <br />
            <hr />
            <br />
         <div class="translateblock">
             <br />
             <label class="label">Text na cirilici:</label>
            <br />
             <asp:TextBox ID="TextBoxCyrillic" CssClass="textarea" runat="server" TextMode="MultiLine"></asp:TextBox>
            <br />
             <br />
             <asp:Button ID="ButtonCyrillicToLatin" runat="server" Text="Prevedi na latinicu" OnClick="ButtonCyrillicToLatin_Click" />
        </div>
    </div>
        <div class="footer">
            <table>
                <tr>
                    <td>Elektrotehnicka skola "Nikola Tesla" Nis
                    </td>
                    <td>
                        <a href="HTML Pages/Uputstvo.html">Uputstvo</a>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

