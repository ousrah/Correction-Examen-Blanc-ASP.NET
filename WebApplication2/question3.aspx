<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="question3.aspx.cs" Inherits="WebApplication2.question3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 29px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td>Email</td>
                    <td>
                        <asp:TextBox ID="txtmail" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Password</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtpwd" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" ForeColor="#FF3300" Text="email ou mot de passe sont incorrect" Visible="False"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="se connecter" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <p>
            <asp:Label ID="Label3" runat="server" ForeColor="#FF3300" Text="votre email à été desactivé prere de contacter l'administration" Visible="False"></asp:Label>
        </p>
    </form>
</body>
</html>
