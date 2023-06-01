<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Kursna lista.aspx.cs" Inherits="Matura_Zadatak_B20._Default" %>

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
            <div class="search">
                <table>
                    <tr>
                        <td>
                            <label class="label">Datum:</label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBoxDatum" runat="server" Width="100px"></asp:TextBox>
                        </td>
                        <td>
                            <label class="label">Valuta:</label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownListValuta" runat="server"></asp:DropDownList>
                        </td>
                        <td>
                            <asp:Button ID="ButtonPrikazi" runat="server" Text="Button" OnClick="ButtonPrikazi_Click" />
                        </td>
                    </tr>
                </table>
            </div>
            <br />
            <hr />
            <br />
            <div class="kurs">
                <label>Kurs na dan:</label>
                <asp:Label ID="LabelKurs" runat="server" Text=""></asp:Label>
            </div>
        </div>
        <div class="footer">
            <table>
                <tr>
                    <td>Elektrotehnicka skola "Nikola Tesla" Nis
                    </td>
                    <td>
                        <a href="HTML Pages/AzuriranjeListe.aspx">Azuriraj listu valuta</a>
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
