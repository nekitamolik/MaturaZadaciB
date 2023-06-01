<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dodavanje novih reci.aspx.cs" Inherits="Matura_Zadatak_B10.Pages.Dodavanje_novih_reci" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <title>Elektronski rečnik</title>
    <link rel="Stylesheet" href="../CSS/StyleSheet.css"/>
</head>
<body>
    
    <div class="header">
        <h1>ELEKTRONSKI REČNIK</h1>
    </div>
        <div class="menu">
            <ul>
                <li><a href="../Recnik.aspx">Rečnik</a></li>
                <li><a href="Dodavanje novih reci.aspx">Dodavanje novih reči</a></li>
                <li><a href="Uputstvo.html">Uputstvo</a></li>
            </ul>
        </div>
        <div class="content">
            <form id="form1" runat="server">
                <asp:Label ID="Label2" CssClass="label" runat="server" Text="Engleska reč:"></asp:Label>
                &emsp;
                <asp:TextBox ID="TextBoxEng" runat="server" Width="150px"></asp:TextBox>
                 &emsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorEng" runat="server" 
                     ForeColor="Red" ControlToValidate="TextBoxEng"
                    ErrorMessage="Morate popuniti ovo polje!"></asp:RequiredFieldValidator>
                <br /><br />
                <asp:Label ID="Label3" CssClass="label" runat="server" Text="Srpska reč:" ></asp:Label>
                &emsp;
                <asp:TextBox ID="TextBoxSrp" runat="server" Width="150px"></asp:TextBox>
                 &emsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorSrp" runat="server"
                    ForeColor="Red" ControlToValidate="TextBoxSrp"
                    ErrorMessage="Morate popuniti ovo polje!"></asp:RequiredFieldValidator>
                <br /><br />
                <asp:Label ID="Label4" CssClass="label"  runat="server" Text="Opis:"></asp:Label>
                &emsp;
                <asp:TextBox ID="TextBoxOpis" runat="server" Width="170px" Height="100px" TextMode="MultiLine"></asp:TextBox>
                <br /><br />
                <asp:Button ID="ButtonSnimi" runat="server" Text="Snimi" OnClick="ButtonSnimi_Click"  />
                </form>
        </div>
        <div class="footer">
            <p>© Osnovna škola "Sonja Marinković"</p>
        </div>
</body>
</html>
