<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Katalog.aspx.cs" Inherits="Matura_Zadatak_B9._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CD Katalog</title>
    <link rel="Stylesheet" href="CSS/StyleSheet.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <ul>
                <li class="big">CD K
                </li>
                <li class="small">ATALOG
                </li>
            </ul>
        </div>
        <div class="menu">
            <ul>
                <li><a href="Katalog.aspx">Katalog</a></li>
                <li><a href="HTML Pages/Uputstvo.html">Uputstvo</a></li>
            </ul>
        </div>
        <div class="content">
            <div class="form">
                <table>
                    <tr>
                        <td>
                            <label>Izvođač:</label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBoxIzvodjac" runat="server" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Naziv:</label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBoxNaziv" runat="server" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Žanr:</label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownListZanr" runat="server" Width="120px" ></asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Godina izdanja:</label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownListGodina" runat="server" Width="70px" ></asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Izdavačka kuća:</label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBoxIzdavackaKuca" runat="server" Width="200px"></asp:TextBox>

                        </td>
                    </tr>
                </table>
            </div>
            <div class="tableshow">
                <asp:GridView ID="GV" runat="server" OnRowDataBound="gv_RowDataBound" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="izvodjac" HeaderText="Izvođač" />
                        <asp:BoundField DataField="naziv" HeaderText="Naziv" />
                         <asp:BoundField DataField="zanr" HeaderText="Žanr" />
                        <asp:BoundField DataField="godina" HeaderText="Godina" />
                         <asp:BoundField DataField="izdavacka kuca" HeaderText="Izdavačka kuća" />
                        <asp:TemplateField HeaderText="Slika omota" >
                            <ItemTemplate><asp:Image ID="slika" runat="server"></asp:Image></ItemTemplate>

                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                
            </div>
            <asp:Button ID="src" runat="server" Text="Trazi" OnClick="src_Click" />
        </div>
        <div class="footer">
            <p>© Klub kolekcionar</p>
        </div>
    </form>
</body>
</html>
