<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Program.aspx.cs" Inherits="Matura_Zadatak_B14._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TV Program</title>
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
                            <asp:DropDownList ID="DropDownListDatum" runat="server" Width="100px"></asp:DropDownList>
                        </td>
                        <td>
                            <label class="label">Tip emisije:</label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownListTip" runat="server" Width="200px"></asp:DropDownList>
                        </td>
                        <td>
                            <asp:Button ID="ButtonSrc" runat="server" Text="Pronadji" Width="80px" OnClick="ButtonSrc_Click"/>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="GV">
                <asp:GridView ID="GV" runat="server" OnRowDataBound="GV_RowDataBound" AutoGenerateColumns="False" >
                    <Columns>
                        <asp:BoundField DataField="vreme" HeaderText="Vreme" />
                        <asp:BoundField DataField="naziv emisije" HeaderText="Naziv Emisije" />
                        <asp:TemplateField HeaderText="Tip Emisije" >
                            <ItemTemplate>
                                <asp:Image ID="slika" CssClass="slika" runat="server"></asp:Image>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
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
                    <td>
                        <a href="HTML Pages/Kontakt.html">Kontakt</a>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
