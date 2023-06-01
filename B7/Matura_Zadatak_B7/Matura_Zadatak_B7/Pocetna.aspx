<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pocetna.aspx.cs" Inherits="Matura_Zadatak_B7._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Biblioteka</title>
    <link rel="Stylesheet" href="CSS/StyleSheet.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <h1>Biblioteka</h1>
        </div>
        <div class="menu">
            <ul>
                <li><a href="Pocetna.aspx">Početna</a></li>
                <li><a href="HTML Pages/Pregled.aspx">Pregled</a></li>
                <li><a href="HTML Pages/O autoru.html">O autoru</a></li>
                <li><a href="HTML Pages/Uputstvo.html">Uputstvo</a></li>
            </ul>
        </div>
        <div class="body">
            <div class="content">
                <div class="headertext">
                    <h2>Možete se logovati sa sledećim nalozima</h2>
                    <div class="accounts">
                        <div class="acc">
                            <p>Korisničko ime: Test</p>
                            <p>Lozinka: test123</p>
                        </div>
                        <div class="acc">
                            <p>Korisničko ime: Test2</p>
                            <p>Lozinka: test2123</p>
                        </div>
                    </div>
                    <hr />
                    <p>Unesite parametre za logovanje <span class="reg">Registrujete se</span> ako nemate nalog</p>
                </div>
                <div class="form">
                    <asp:Panel ID="Panel" runat="server" GroupingText="Forma za logovanje">
                        <div class="input">
                            <br />
                            <label>Korisničko ime:</label>
                            <br />
                            <asp:TextBox ID="TextBoxUsername" runat="server" Height="20px" Width="300px"></asp:TextBox>
                            <br />
                            <br />
                            <label>Lozinka:</label>
                            <br />
                            <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" Height="20px" Width="300px"></asp:TextBox>
                            <br />
                        </div>
                    </asp:Panel>
                    <div class="button">
                    <asp:Button ID="ButtonLogin" runat="server" Text="prijava" OnClick="ButtonLogin_Click" />
                        </div>
                </div>
            </div>
        </div>
        <div class="footer">
            <p>© Gradska biblioteka</p>
        </div>
    </form>
</body>
</html>
