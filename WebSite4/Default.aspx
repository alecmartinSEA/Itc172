<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    
    <form id="form1" runat="server">
    <div>
        <asp:calendar ID="Calendar1" runat="server"></asp:calendar>
        </br>
        <asp:button runat="server" text="Check For Events" OnClick="CheckEvents_Click" />
        <h3>EVENTS ON THIS DAY</h3>
        <asp:Label ID="label1" runat="server" text=""></asp:Label>
    
    </div>
    </form>
</body>
</html>
        </h3>
        