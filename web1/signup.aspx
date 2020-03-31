<%@ Page Language="VB" %>
<%@ import namespace="System.Data.sqlClient" %>


<!DOCTYPE html>

<script runat="server">


    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs)
        SqlConnection conn = new SqlConnection();
         conn.ConnectionString ="Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|EgyptAir.mdf;Integrated Security=True";
        String connection="Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|EgyptAir.mdf;Integrated Security=True";    
        
         string strInsert = "INSERT INTO Member "
            + " VALUES('" + txtFname.Text + "', '"
            + txtLname.Text + "', '"
            + rblSex.SelectedValue + "', '"
            + txtEmail.Text + "', '"
            + txtPhone.Text + "', '"
            + ddlCountry.SelectedValue + "', '"
            + txtUsername.Text + "', '"
            + txtPassword.Text + "')";
        
        SqlCommand cmdInsert = new SqlCommand(strInsert, conn);
        Try
        {
            conn.Open();
            cmdInsert.ExecuteNonQuery();
            conn.Close();
            lblMsg.Text = "Welcome " + txtFname.Text + " Your Account Has Been Successfully Created!!";
        }


        catch (SqlException err)
        {
            if (err.Number == 2627)
                lblMsg.Text = "Username already exists, Please Choose Another!!";
            Else
                lblMsg.Text = "Sorry, Database Error, You may Try later!!";
        }

        catch
        {
            lblMsg.Text = "Sorry, System Error, You may Try later!!";
        }
                
        
    }
    End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 137px;
        }
        .auto-style3 {
            width: 238px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Font-Names="Monotype Corsiva" Font-Size="X-Large" ForeColor="#000066" Text="Please, Fill In All the Following Fields, Then Click Submit"></asp:Label>
    
        :<br />
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Font-Names="Arial" Font-Size="Medium" ForeColor="#000066" Text="First Name:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtFname" runat="server" OnTextChanged="TextBox1_TextChanged" Width="160px" Font-Names="Arial" Font-Size="Medium" ForeColor="#000066"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="First name is missing"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Font-Names="Arial" Font-Size="Medium" ForeColor="#000066" Text="Last Name:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtLname" runat="server" OnTextChanged="TextBox1_TextChanged" Width="160px" Font-Names="Arial" Font-Size="Medium" ForeColor="#000066"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Last name is missing"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Font-Names="Arial" Font-Size="Medium" ForeColor="#000066" Text="Sex:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:RadioButtonList ID="rblSex" runat="server" Font-Names="Arial" Font-Size="Medium" ForeColor="#000066" RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True" Value="M">Male</asp:ListItem>
                        <asp:ListItem Value="F">Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server" Font-Names="Arial" Font-Size="Medium" ForeColor="#000066" Text="Email Address:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtEmail" runat="server" OnTextChanged="TextBox1_TextChanged" Width="160px" Font-Names="Arial" Font-Size="Medium" ForeColor="#000066"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Email Adress is missing"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label6" runat="server" Font-Names="Arial" Font-Size="Medium" ForeColor="#000066" Text="Phone Number:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtPhone" runat="server" OnTextChanged="TextBox1_TextChanged" Width="160px" Font-Names="Arial" Font-Size="Medium" ForeColor="#000066"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label7" runat="server" Font-Names="Arial" Font-Size="Medium" ForeColor="#000066" Text="Country:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:DropDownList ID="ddlCountry" runat="server" Font-Names="Arial" Font-Size="Medium" ForeColor="#000066">
                        <asp:ListItem Selected="True">Egypt</asp:ListItem>
                        <asp:ListItem>Sudan</asp:ListItem>
                        <asp:ListItem>Syria</asp:ListItem>
                        <asp:ListItem>Italy</asp:ListItem>
                        <asp:ListItem>France</asp:ListItem>
                        <asp:ListItem>Spain</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label8" runat="server" Font-Names="Arial" Font-Size="Medium" ForeColor="#000066" Text="Username:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtUsername" runat="server" OnTextChanged="TextBox1_TextChanged" Width="160px" Font-Names="Arial" Font-Size="Medium" ForeColor="#000066"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="user name is missing"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label9" runat="server" Font-Names="Arial" Font-Size="Medium" ForeColor="#000066" Text="Password:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtPassword" runat="server" OnTextChanged="TextBox1_TextChanged" Width="160px" Font-Names="Arial" Font-Size="Medium" ForeColor="#000066"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="password is missing"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label10" runat="server" Font-Names="Arial" Font-Size="Medium" ForeColor="#000066" Text="Retype Password:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtRetypePass" runat="server" OnTextChanged="TextBox1_TextChanged" Width="160px" Font-Names="Arial" Font-Size="Medium" ForeColor="#000066"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtRetypePass" ErrorMessage="pasword doe not match"></asp:CompareValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="submit" />
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
