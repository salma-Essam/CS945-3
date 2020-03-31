<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 77px;
            height: 23px;
        }
        .auto-style3 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Names="Arial" Font-Size="Medium" ForeColor="#000066" NavigateUrl="~/signup.aspx" Target="_top">Sign Up</asp:HyperLink>
                </td>
                <td class="auto-style2">
                    <asp:HyperLink ID="HyperLink2" runat="server" Font-Names="Arial" Font-Size="Medium" ForeColor="#000066">Sign In</asp:HyperLink>
                </td>
                <td class="auto-style3">
                    <asp:HyperLink ID="HyperLink3" runat="server" Font-Names="Arial" Font-Size="Medium" ForeColor="#000066" NavigateUrl="~/main.htm" Target="F5">About Egypt</asp:HyperLink>
                </td>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
            </tr>
        </table>
    <div>
    
    </div>
    </form>
</body>
</html>
