<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AzuriranjeListe.aspx.cs" Inherits="Matura_Zadatak_B20.HTML_Pages.AzuriranjeListe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Konvertor</title>
    <link rel="Stylesheet" href="../CSS/StyleSheet.css" />
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
            <h1>Unos</h1>
            <br />
            <hr />
            <br />
            <table id="unos">
                <tr>
                    <td>
                        <label class="label">Datum:</label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBoxDatum" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label class="label">Valuta:</label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownListValuta" runat="server"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label class="label">Iznos:</label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBoxIznos" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <br />
            <hr />
            <br />
            <asp:Button ID="ButtonAdd" runat="server" Text="Dodaj" OnClick="ButtonAdd_Click" />
            &nbsp;
            <asp:Button ID="ButtonCancle" runat="server" Text="Odustani" OnClick="ButtonCancle_Click" />
        </div>
        <div class="footer">
            <table>
                <tr>
                    <td>Elektrotehnicka skola "Nikola Tesla" Nis
                    </td>
                    <td>
                        <a href="../Kursna lista.aspx">Kursna lista</a>
                    </td>
                    <td>
                        <a href="Uputstvo.html">Uputstvo</a>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
