<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Login</h1>
        <table>
            <tr>
                <td>User Name</td>
                <td>
                    <asp:textbox ID="UsernameTextBox" runat="server"></asp:textbox>
                </td>
            </tr>
            <tr>
                 <td>Password</td>
                 <td>
                    <asp:textbox ID="PasswordTextBox" TextMode="Password" runat="server"></asp:textbox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Log In" OnClick="LoginButton_Click"/>
                </td>
                <td>
                    <asp:Label ID="ResultLabel" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
        <p> <asp:LinkButton ID="RegisterLinkButton" runat="server" 
             PostBackUrl="~/Register.aspx">Register</asp:LinkButton>
           &nbsp; &nbsp;
        <asp:LinkButton 
            ID="ViewGrantsLinkButton" 
            runat="server" 
            PostBackUrl="ViewGrants.aspx">Veiw your Grants
       </asp:LinkButton>

       </p>
    
    </div>
    </form>
</body>
</html>
