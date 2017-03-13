<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
        <tr>
            <td>Last name</td>
            <td>
                <asp:TextBox ID="LastNameTextBox" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="LastNameValidator" runat="server" 
                    ErrorMessage="Last Name is Required" ControlToValidate="LastNameTextBox">

                </asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td>First name</td>
            <td>
                <asp:TextBox ID="FirstNameTextBox" runat="server"></asp:TextBox></td>
            <td></td>
        </tr>
         <tr>
            <td>Email</td>
            <td>
                <asp:TextBox ID="EmailTextBox" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="EmailValidator" 
                    runat="server" 
                    ErrorMessage="email is required" 
                    ControlToValidate="EmailTextBox">

                </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator 
                    ID="EmailRegularExpressionValidator" 
                    runat="server" 
                    ErrorMessage="Invalid email" 
                    ControlToValidate="EmailTextBox" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">

                </asp:RegularExpressionValidator>
            </td>
        </tr>
         <tr>
            <td>Apartment Number</td>
            <td>
                <asp:TextBox ID="apartmentTextBox" runat="server"></asp:TextBox></td>
            <td></td>
        </tr>
         <tr>
            <td>Street</td>
            <td>
                <asp:TextBox ID="StreetTextBox" runat="server"></asp:TextBox></td>
            <td></td>
        </tr>
         <tr>
            <td>City</td>
            <td>
                <asp:TextBox ID="CityTextBox" runat="server"></asp:TextBox></td>
            <td></td>
        </tr>
         <tr>
            <td>State</td>
            <td>
                <asp:TextBox ID="StateTextBox" runat="server"></asp:TextBox></td>
            <td></td>
         </tr>
         <tr>
            <td>Zip Code</td>
            <td>
                <asp:TextBox ID="ZipcodeTextBox" runat="server"></asp:TextBox></td>
            <td></td>
        </tr>
         <tr>
            <td>Home Phone</td>
            <td>
                <asp:TextBox ID="HomePhoneTextBox" runat="server"></asp:TextBox></td>
            <td></td>
        </tr>
         <tr>
            <td>WorkPhone</td>
            <td>
                <asp:TextBox ID="WorkPhoneTextBox" runat="server"></asp:TextBox></td>
            <td></td>
        </tr>
         <tr>
            <td>Password</td>
            <td>
                <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password"></asp:TextBox></td>
            <td></td>
        </tr>
         <tr>
            <td>Confirm Password</td>
            <td>
                <asp:TextBox ID="ConfirmTextBox" runat="server" TextMode="Password"></asp:TextBox></td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" 
                    runat="server" ErrorMessage="Passwords Don't match"
                    ControlToValidate="ConfirmTextBox" ControlToCompare="PasswordTextBox">
                    
                </asp:CompareValidator></td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" /></td>
            <td>
                <asp:Label ID="ResultLabel" runat="server" Text=""></asp:Label></td>
            <td>&nbsp;</td>
        </tr>
       
    </table>
       
    </div>
    </form>
</body>
</html>