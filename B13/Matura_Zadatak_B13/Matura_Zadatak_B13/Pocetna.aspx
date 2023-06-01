<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pocetna.aspx.cs" Inherits="Matura_Zadatak_B13._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Telefonski imenik</title>
    <link rel="Stylesheet" href="CSS/StyleSheet.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <ul>
                <li>Zadatak 6
                </li>
                <li>Telefonski imenik
                </li>
            </ul>
        </div>
        <div class="content">
            <div class="form">
                <table>
                    <tr>
                        <td colspan="7" class="headlabel">Parametri za pretragu
                        </td>
                    </tr>
                    <tr>
                        <td class="label">Ime:
                        </td>
                        <td class="textbox">
                            <asp:TextBox ID="TextBoxIme" runat="server" Width="200px"></asp:TextBox>
                        </td>
                        <td class="label">Adresa:
                        </td>
                        <td class="textbox">
                            <asp:TextBox ID="TextBoxAdresa" runat="server" Width="200px"></asp:TextBox>
                        </td>
                        <td class="label">Telefon:
                        </td>
                        <td class="textbox">
                            <asp:TextBox ID="TextBoxTel" runat="server" Width="200px"></asp:TextBox>
                        </td>
                        <td rowspan="2" class="button">
                            <asp:Button ID="ButtonSrc" runat="server" Text="Trazi" OnClick="ButtonSrc_Click" Width="80px" Height="25px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="label">Prezime:
                        </td>
                        <td class="textbox">
                            <asp:TextBox ID="TextBoxPrezime" runat="server" Width="200px"></asp:TextBox>
                        </td>
                        <td class="label">Mesto:
                        </td>
                        <td class="textbox">
                            <asp:DropDownList ID="DropDownListMesto" runat="server" Width="80px"></asp:DropDownList>
                        </td>
                        <td class="label">Email:
                        </td>
                        <td class="textbox">
                            <asp:TextBox ID="TextBoxEmail" runat="server" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </div>
            <hr />
            <div class="GV">
                <asp:GridView ID="GV" runat="server"></asp:GridView>
            </div>
        </div>
        <div class="footer">
            <table>
            <tr>
                <td class="copyright">Elektrotehnicka skola "Nikola Tesla" Nis
                </td>
                <td class="menu">
                    <a href="HTML Pages/Vazni Telefoni.html">Vazni Telefoni
                    </a>
                </td>
                <td class="menu">
                    <a href="HTML Pages/Uputstvo.html">Uputstvo
                    </a>
                </td>
                <td class="menu">
                    <a href="HTML Pages/O autoru.html">O autoru
                    </a>
                </td>
            </tr>
                </table>
        </div>
    </form>
</body>
</html>
