<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="testServiceWeb.aspx.cs" Inherits="WebApplication2.testServiceWeb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Nom_Vlt" DataValueField="id_Vlt" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:volontairesConnectionString %>" SelectCommand="SELECT * FROM [volontaire]"></asp:SqlDataSource>
            <br />
            <br />
            <asp:Literal ID="Literal1" runat="server"></asp:Literal>
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
