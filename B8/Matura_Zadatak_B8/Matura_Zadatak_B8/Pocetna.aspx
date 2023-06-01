<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pocetna.aspx.cs" Inherits="Matura_Zadatak_B8._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Muzej Srbije</title>
    <link rel="Stylesheet" href="CSS/StyleSheet.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <h1>KNJIGA UTISAKA</h1>
        </div>
        <div class="menu">
            <ul>
                <li><a href="Pocetna.aspx">Početna</a></li>
                <li><a href="HTML Pages/O autoru.html">O autoru</a></li>
                <li><a href="HTML Pages/Uputstvo.html">Uputstvo</a></li>
            </ul>
        </div>
        <div class="content">
            <table>
                <tr>
                    <td class="label">
                        <asp:Label ID="LabelIme" runat="server" Text="IME:"></asp:Label>
                    </td>
                    <td class="textbox">
                        <asp:TextBox ID="TextBoxIme" runat="server" Width="220px"></asp:TextBox>
                    </td>
                    <td class="errormsg">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorIme" runat="server"
                            ForeColor="Red" ControlToValidate="TextBoxIme" ErrorMessage="You need to fill this box!"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="label">
                        <asp:Label ID="LabelEmail" runat="server" Text="EMAIL:"></asp:Label>
                    </td>
                    <td class="textbox">
                        <asp:TextBox ID="TextBoxEmail" runat="server" Width="220px"></asp:TextBox>
                    </td>
                    <td class="errormsg">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server"
                            ForeColor="Red" ControlToValidate="TextBoxEmail" ErrorMessage="You need to fill this box!"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server"
                            ForeColor="Red" ControlToValidate="TextBoxEmail"
                            ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"
                            ErrorMessage="Invalid email address"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="komm">
                        <asp:Label ID="LabelKomm" runat="server" Text="KOMENTAR:"></asp:Label>
                    </td>
                    <td class="textbox">
                        <asp:TextBox ID="TextBoxKomm" runat="server" TextMode="MultiLine"  Height="200px" Width="250px"></asp:TextBox>
                    </td>
                    <td class="errormsg">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                            ForeColor="Red" ControlToValidate="TextBoxKomm" ErrorMessage="You need to fill this box!"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="label">
                        <span></span>
                    </td>
                    <td colspan="2">
                        <asp:Button ID="ButtonSubmit" runat="server" Text="Dodaj komentar" Width="270px"  OnClick="ButtonSubmit_Click"/>
                    </td>
                </tr>
            </table>
            
        </div>
        <div class="footer">
            <p>© Muzej Srbij</p>
        </div>
    </form>
</body>
</html>
