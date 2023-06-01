<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Veb Prodavnica.aspx.cs" Inherits="Matura_Zadatak_B17._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Veb Prodavnica</title>
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
            <div class="headertext">
                <img id="image" src="Images/Icon.jpg" alt="slika" width="200px" height="150px" />
                    <h2>Web Prodavnica</h2>
            </div>
            <br />
            <hr />
            <br />
            <div class="search">
                <label class="label">Parametri za pretragu:</label>
                <br />
                <br />
                <table id="src">
                    <tr>
                        <td>
                            <label class="label">Proizvodjac:</label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownListProizvodjac" runat="server" Width="100px"></asp:DropDownList>
                        </td>
                        <td>
                            <label class="label">Kamera:</label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownListKamera" runat="server" Width="100px"></asp:DropDownList>
                        </td>
                        <td>
                            <label class="label">Ekran:</label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownListEkran" runat="server" Width="100px"></asp:DropDownList>
                        </td>
                        <td rowspan="2">
                            <asp:Button ID="ButtonSrc" runat="server" Text="Pronadji" Width="80px" OnClick="ButtonSrc_Click"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label class="label">RAM:</label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownListRAM" runat="server" Width="100px"></asp:DropDownList>
                        </td>
                        <td>
                            <label class="label">Dual SIM:</label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownListSIM" runat="server" Width="100px"></asp:DropDownList>
                        </td>
                        <td>
                            <label class="label">Procesor:</label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownListProcesor" runat="server" Width="100px"></asp:DropDownList>
                        </td>
                        </tr>
                </table>
            </div>
            <br />
            <hr />
            <br />
            <div class="GV">
                <asp:GridView ID="GV" runat="server" AutoGenerateColumns="False" OnRowDataBound="GV_RowDataBound" >
                    <Columns>
                        <asp:TemplateField HeaderText="" HeaderStyle-Width="250px">
                            <ItemTemplate>
                                <asp:Image ID="slika" runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Karakteristike">
                            <ItemTemplate>
                                <br />
                                <br />
                                <asp:Label ID="naziv" CssClass="name" runat="server" ></asp:Label>
                                <br />
                                <br />
                                <asp:Label ID="proizvodjac" CssClass="stats" runat="server" ></asp:Label>
                                <br />
                                <asp:Label ID="RAM" CssClass="stats" runat="server" ></asp:Label>
                                <br />
                                <asp:Label ID="procesor" CssClass="stats" runat="server" ></asp:Label>
                                <br />
                                <asp:Label ID="ekran" CssClass="stats" runat="server" ></asp:Label>
                                <br />
                                <asp:Label ID="kamera" CssClass="stats" runat="server" ></asp:Label>
                                <br />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Cena" ItemStyle-CssClass="cena" HeaderText="Cena" HeaderStyle-Width="10%" />
                        
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
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
