<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pocetna.aspx.cs" Inherits="Matura_Zadatak_B12._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Autobuska stanica</title>
    <link rel="Stylesheet" href="CSS/StyleSheet.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <h1>REZERVACIJA AUTOBUSKIH KARATA</h1>
        </div>
        <div class="menu">
            <ul>
                <li>
                    <a href="Pocetna.aspx">Početna</a>
                </li>
                <li>
                    <a href="HTML Pages/O autoru.html">O autoru</a>
                </li>
                <li>
                    <a href="HTML Pages/Uputstvo.html">Uputstvo</a>
                </li>
            </ul>
        </div>
        <div class="content">
            <h1>PRIKAZ SEDIŠTA AUTOBUSA</h1>
            <div class="autobus">
                <table cellspacing="0">
                    <tr>
                        <td class="dugme">
                            <asp:Button ID="Button2" runat="server" Text="2" Width="40px" Height="40px" OnClientClick="ButtonClick(2); return false" />
                        </td>
                        <td class="dugme">
                            <asp:Button ID="Button3" runat="server" Text="3" Width="40px" Height="40px" OnClientClick="ButtonClick(3); return false" />
                        </td>
                        <td class="prolaz">
                            <span></span>
                        </td>
                        <td class="dugme">
                            <asp:Button ID="Button4" runat="server" Text="4" Width="40px" Height="40px" OnClientClick="ButtonClick(4); return false" />
                        </td>
                        <td class="dugme">
                            <asp:Button ID="Button5" runat="server" Text="5" Width="40px" Height="40px" OnClientClick="ButtonClick(5); return false" />
                        </td>
                    </tr>
                    <tr>
                        <td class="dugme">
                            <asp:Button ID="Button6" runat="server" Text="6" Width="40px" Height="40px" OnClientClick="ButtonClick(6); return false" />
                        </td>
                        <td class="dugme">
                            <asp:Button ID="Button7" runat="server" Text="7" Width="40px" Height="40px" OnClientClick="ButtonClick(7); return false" />
                        </td>
                        <td class="prolaz">
                            <span></span>
                        </td>
                        <td class="dugme">
                            <asp:Button ID="Button8" runat="server" Text="8" Width="40px" Height="40px" OnClientClick="ButtonClick(8); return false" />
                        </td>
                        <td class="dugme">
                            <asp:Button ID="Button9" runat="server" Text="9" Width="40px" Height="40px" OnClientClick="ButtonClick(9); return false" />
                        </td>
                    </tr>
                    <tr>
                        <td class="dugme">
                            <asp:Button ID="Button10" runat="server" Text="10" Width="40px" Height="40px" OnClientClick="ButtonClick(10); return false" />
                        </td>
                        <td class="dugme">
                            <asp:Button ID="Button11" runat="server" Text="11" Width="40px" Height="40px" OnClientClick="ButtonClick(11); return false" />
                        </td>
                        <td class="prolaz">
                            <span></span>
                        </td>
                        <td class="dugme">
                            <asp:Button ID="Button12" runat="server" Text="12" Width="40px" Height="40px" OnClientClick="ButtonClick(12); return false" />
                        </td>
                        <td class="dugme">
                            <asp:Button ID="Button13" runat="server" Text="13" Width="40px" Height="40px" OnClientClick="ButtonClick(13); return false" />
                        </td>
                    </tr>
                    <tr>
                        <td class="dugme">
                            <asp:Button ID="Button14" runat="server" Text="14" Width="40px" Height="40px" OnClientClick="ButtonClick(14); return false" />
                        </td>
                        <td class="dugme">
                            <asp:Button ID="Button15" runat="server" Text="15" Width="40px" Height="40px" OnClientClick="ButtonClick(15); return false" />
                        </td>
                        <td class="prolaz">
                            <span></span>
                        </td>
                        <td class="dugme">
                            <asp:Button ID="Button16" runat="server" Text="16" Width="40px" Height="40px" OnClientClick="ButtonClick(16); return false" />
                        </td>
                        <td class="dugme">
                            <asp:Button ID="Button17" runat="server" Text="17" Width="40px" Height="40px" OnClientClick="ButtonClick(17); return false" />
                        </td>
                    </tr>
                    <tr>
                        <td class="dugme">
                            <asp:Button ID="Button18" runat="server" Text="18" Width="40px" Height="40px" OnClientClick="ButtonClick(18); return false" />
                        </td>
                        <td class="dugme">
                            <asp:Button ID="Button19" runat="server" Text="19" Width="40px" Height="40px" OnClientClick="ButtonClick(19); return false" />
                        </td>
                        <td class="prolaz">
                            <span></span>
                        </td>
                        <td class="dugme">
                            <asp:Button ID="Button20" runat="server" Text="20" Width="40px" Height="40px" OnClientClick="ButtonClick(20); return false" />
                        </td>
                        <td class="dugme">
                            <asp:Button ID="Button21" runat="server" Text="21" Width="40px" Height="40px" OnClientClick="ButtonClick(21); return false" />
                        </td>
                    </tr>
                    <tr>
                        <td class="dugme">
                            <asp:Button ID="Button22" runat="server" Text="22" Width="40px" Height="40px" OnClientClick="ButtonClick(22); return false" />
                        </td>
                        <td class="dugme">
                            <asp:Button ID="Button23" runat="server" Text="23" Width="40px" Height="40px" OnClientClick="ButtonClick(23); return false" />
                        </td>
                        <td class="prolaz">
                            <span></span>
                        </td>
                        <td class="dugme">
                            <asp:Button ID="Button24" runat="server" Text="24" Width="40px" Height="40px" OnClientClick="ButtonClick(24); return false" />
                        </td>
                        <td class="dugme">
                            <asp:Button ID="Button25" runat="server" Text="25" Width="40px" Height="40px" OnClientClick="ButtonClick(25); return false" />
                        </td>
                    </tr>
                    <tr>
                        <td class="dugme">
                            <asp:Button ID="Button26" runat="server" Text="26" Width="40px" Height="40px" OnClientClick="ButtonClick(26); return false" />
                        </td>
                        <td class="dugme">
                            <asp:Button ID="Button27" runat="server" Text="27" Width="40px" Height="40px" OnClientClick="ButtonClick(27); return false" />
                        </td>
                        <td class="prolaz">
                            <span></span>
                        </td>
                        <td class="dugme">
                            <asp:Button ID="Button28" runat="server" Text="28" Width="40px" Height="40px" OnClientClick="ButtonClick(28); return false" />
                        </td>
                        <td class="dugme">
                            <asp:Button ID="Button29" runat="server" Text="29" Width="40px" Height="40px" OnClientClick="ButtonClick(29); return false" />
                        </td>
                    </tr>
                    <tr>
                        <td class="dugme">
                            <asp:Button ID="Button30" runat="server" Text="30" Width="40px" Height="40px" OnClientClick="ButtonClick(30); return false" />
                        </td>
                        <td class="dugme">
                            <asp:Button ID="Button31" runat="server" Text="31" Width="40px" Height="40px" OnClientClick="ButtonClick(31); return false" />
                        </td>
                        <td class="prolaz">
                            <span></span>
                        </td>
                        <td class="dugme">
                            <asp:Button ID="Button32" runat="server" Text="32" Width="40px" Height="40px" OnClientClick="ButtonClick(32); return false" />
                        </td>
                        <td class="dugme">
                            <asp:Button ID="Button33" runat="server" Text="33" Width="40px" Height="40px" OnClientClick="ButtonClick(33); return false" />
                        </td>
                    </tr>
                    <tr>
                        <td class="dugme">
                            <asp:Button ID="Button34" runat="server" Text="34" Width="40px" Height="40px" OnClientClick="ButtonClick(34); return false" />
                        </td>
                        <td class="dugme">
                            <asp:Button ID="Button35" runat="server" Text="35" Width="40px" Height="40px" OnClientClick="ButtonClick(35); return false" />
                        </td>
                        <td class="prolaz">
                            <span></span>
                        </td>
                        <td class="dugme">
                            <asp:Button ID="Button36" runat="server" Text="36" Width="40px" Height="40px" OnClientClick="ButtonClick(36); return false" />
                        </td>
                        <td class="dugme">
                            <asp:Button ID="Button37" runat="server" Text="37" Width="40px" Height="40px" OnClientClick="ButtonClick(37); return false" />
                        </td>
                    </tr>
                    <tr>
                        <td class="dugme">
                            <asp:Button ID="Button38" runat="server" Text="38" Width="40px" Height="40px" OnClientClick="ButtonClick(38); return false" />
                        </td>
                        <td class="dugme">
                            <asp:Button ID="Button39" runat="server" Text="39" Width="40px" Height="40px" OnClientClick="ButtonClick(39); return false" />
                        </td>
                        <td class="prolaz">
                            <span></span>
                        </td>
                        <td class="dugme">
                            <asp:Button ID="Button40" runat="server" Text="40" Width="40px" Height="40px" OnClientClick="ButtonClick(40); return false" />
                        </td>
                        <td class="dugme">
                            <asp:Button ID="Button41" runat="server" Text="41" Width="40px" Height="40px" OnClientClick="ButtonClick(41); return false" />
                        </td>
                    </tr>
                    <tr>
                        <td class="dugme">
                            <asp:Button ID="Button42" runat="server" Text="42" Width="40px" Height="40px" OnClientClick="ButtonClick(42); return false" />
                        </td>
                        <td class="dugme">
                            <asp:Button ID="Button43" runat="server" Text="43" Width="40px" Height="40px" OnClientClick="ButtonClick(43); return false" />
                        </td>
                        <td class="prolaz">
                            <span></span>
                        </td>
                        <td class="dugme">
                            <asp:Button ID="Button44" runat="server" Text="44" Width="40px" Height="40px" OnClientClick="ButtonClick(44); return false" />
                        </td>
                        <td class="dugme">
                            <asp:Button ID="Button45" runat="server" Text="45" Width="40px" Height="40px" OnClientClick="ButtonClick(45); return false" />
                        </td>
                    </tr>
                    <tr>
                        <td class="dugme">
                            <asp:Button ID="Button46" runat="server" Text="46" Width="40px" Height="40px" OnClientClick="ButtonClick(46); return false" />
                        </td>
                        <td class="dugme">
                            <asp:Button ID="Button47" runat="server" Text="47" Width="40px" Height="40px" OnClientClick="ButtonClick(47); return false" />
                        </td>
                        <td class="prolaz">
                            <span></span>
                        </td>
                        <td class="dugme">
                            <asp:Button ID="Button48" runat="server" Text="48" Width="40px" Height="40px" OnClientClick="ButtonClick(48); return false" />
                        </td>
                        <td class="dugme">
                            <asp:Button ID="Button49" runat="server" Text="49" Width="40px" Height="40px" OnClientClick="ButtonClick(49); return false" />
                        </td>
                    </tr>
                    <tr>
                        <td class="dugme">
                            <asp:Button ID="Button50" runat="server" Text="50" Width="40px" Height="40px" OnClientClick="ButtonClick(50); return false" />
                        </td>
                        <td class="dugme">
                            <asp:Button ID="Button51" runat="server" Text="51" Width="40px" Height="40px" OnClientClick="ButtonClick(51); return false" />
                        </td>
                        <td class="prolaz">
                            <span></span>
                        </td>
                        <td class="dugme">
                            <asp:Button ID="Button52" runat="server" Text="52" Width="40px" Height="40px" OnClientClick="ButtonClick(52); return false" />
                        </td>
                        <td class="dugme">
                            <asp:Button ID="Button53" runat="server" Text="53" Width="40px" Height="40px" OnClientClick="ButtonClick(53); return false" />
                        </td>
                    </tr>


                </table>
            </div>
            <div class="form">
                <table>
                    <tr>
                        <td>
                            <label>
                                Broj sedisšta:
                            </label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBoxBrSedista" CssClass="brsedista" runat="server" Width="200px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBoxBrSedista"
                                ForeColor="Red" Font-Size="Medium"
                                runat="server" ErrorMessage="Morate popuniti ovo polje pre slanja!"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>
                                Ime i prezime:
                            </label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBoxImePrezime" runat="server" Width="200px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBoxImePrezime"
                                ForeColor="Red" Font-Size="Medium"
                                runat="server" ErrorMessage="Morate popuniti ovo polje pre slanja!"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>
                                E-mail:
                            </label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBoxEmail" runat="server" Width="200px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBoxEmail"
                                ForeColor="Red" Font-Size="Medium"
                                runat="server" ErrorMessage="Morate popuniti ovo polje pre slanja!"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="ButtonPosalji" runat="server" Text="Posalji" Width="80px" OnClick="ButtonPosalji_Click" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="footer">
            <p>© Autobuska stanica</p>
        </div>
    </form>
    <script type="text/javascript" src="JavaScript/JavaScript.js"></script>
</body>
</html>
