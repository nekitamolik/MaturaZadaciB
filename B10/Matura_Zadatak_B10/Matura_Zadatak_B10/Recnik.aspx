<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Recnik.aspx.cs" Inherits="Matura_Zadatak_B10._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Elektronski rečnik</title>
    <link rel="Stylesheet" href="CSS/StyleSheet.css"/>
</head>
<body>
    
    <div class="header">
        <h1>ELEKTRONSKI REČNIK</h1>
    </div>
        <div class="menu">
            <ul>
                <li><a href="Recnik.aspx">Rečnik</a></li>
                <li><a href="Pages/Dodavanje novih reci.aspx">Dodavanje novih reči</a></li>
                <li><a href="Pages/Uputstvo.html">Uputstvo</a></li>
            </ul>
        </div>
        <div class="content">
            <form id="form1" runat="server">
                <asp:Label ID="Label1" CssClass="label" runat="server" Text="Smer:"></asp:Label>
                &emsp;
                <asp:DropDownList ID="DropDownListSmer" runat="server">
                    <asp:ListItem>Selektuj smer prevođenja</asp:ListItem>
                    <asp:ListItem>Srpsko-Engleski</asp:ListItem>
                    <asp:ListItem>Englesko-Srpski</asp:ListItem>
                </asp:DropDownList>
                <br /><br />
                <asp:Label ID="Label2" CssClass="label" runat="server" Text="Engleska reč:"></asp:Label>
                &emsp;
                <asp:TextBox ID="TextBoxEng" runat="server" Width="150px"></asp:TextBox>
                <br /><br />
                <asp:Label ID="Label3" CssClass="label" runat="server" Text="Srpska reč:" ></asp:Label>
                &emsp;
                <asp:TextBox ID="TextBoxSrp" runat="server" Width="150px"></asp:TextBox>
                <br /><br />
                <asp:Label ID="Label4" CssClass="label"  runat="server" Text="Opis:"></asp:Label>
                &emsp;
                <asp:TextBox ID="TextBoxOpis" runat="server" Width="170px" Height="100px" TextMode="MultiLine"></asp:TextBox>
                <br /><br />
                <asp:Button ID="ButtonPrevod" runat="server" Text="Prevedi" OnClick="ButtonPrevod_Click"  />
                </form>
        </div>
        <div class="footer">
            <p>© Osnovna škola "Sonja Marinković"</p>
        </div>
</body>
</html>
