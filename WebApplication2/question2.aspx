<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="question2.aspx.cs" Inherits="WebApplication2.question2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 442px;
        }
        .auto-style2 {
            height: 30px;
        }
        .auto-style3 {
            width: 442px;
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table style="width:100%;">
            <tr>
                <td>nom</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txt_nom" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_nom" ErrorMessage="le nom est obligatoire" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td></td>
            </tr>
            <tr>
                <td>prenom</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txt_prenom" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_prenom" ErrorMessage="le prenom est obligatoire" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>email</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txt_email" runat="server" TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_email" ErrorMessage="email est obligatoire" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_email" ErrorMessage="Format de l'email non valide" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">mot de passe </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txt_mdp1" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_mdp1" ErrorMessage="le mot de passe est obligatoire" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td>confirmation de mot de passe </td>
                <td class="auto-style1">
                    <asp:TextBox ID="txt_mdp2" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_mdp2" ErrorMessage="la validation est obligatoire" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_mdp1" ControlToValidate="txt_mdp2" ErrorMessage="les deux mots de passes sont pas identiques" ForeColor="Red"></asp:CompareValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>ville </td>
                <td class="auto-style1">
                    <asp:DropDownList ID="cmb_ville" runat="server" DataSourceID="SqlDataSource1" DataTextField="Nom_ville" DataValueField="id_Ville">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:volontairesConnectionString %>" SelectCommand="SELECT * FROM [ville]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">
                    <asp:Button ID="btn_inscription" runat="server" OnClick="btn_inscription_Click" Text="ajouter" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
