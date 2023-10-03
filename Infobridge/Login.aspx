<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Infobridge.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 185px;
        }
        .auto-style3 {
            width: 320px;
        }
        .login{
            border:2px solid Black;
            height:200px;
            width:500px;
            color:black;
            margin-top:20px;
            padding-left:8px;
         

        }
    </style>
</head>
<body>
    <h3>Login Form</h3>
    <div class="login">
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">User Name</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtUserName" runat="server" Width="160px">
</asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserName" ErrorMessage="User name is Required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Password</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtPass" runat="server" Width="161px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPass" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" />
                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Label ID="lblMsg" runat="server" Text="[lblmsg]"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <p>
            &nbsp;</p>
    </form>
 </div>
</body>
</html>