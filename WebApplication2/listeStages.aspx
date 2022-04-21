<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="listeStages.aspx.cs" Inherits="WebApplication2.listeStages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Nom_Ass" DataValueField="id_Ass">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:volontairesConnectionString %>" SelectCommand="SELECT * FROM [Association]"></asp:SqlDataSource>
    <br />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id_Stage" DataSourceID="SqlDataSource2" Height="158px" Width="490px">
                <Columns>
                    <asp:BoundField DataField="Id_Stage" HeaderText="Id_Stage" ReadOnly="True" SortExpression="Id_Stage" />
                    <asp:BoundField DataField="Date_Debut" HeaderText="Date_Debut" SortExpression="Date_Debut" />
                    <asp:BoundField DataField="Date_Fin" HeaderText="Date_Fin" SortExpression="Date_Fin" />
                    <asp:CommandField ShowSelectButton="True" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:volontairesConnectionString %>" SelectCommand="SELECT * FROM [stage] WHERE ([id_Association] = @id_Association)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="id_Association" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <br />
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Id_Stage" DataSourceID="SqlDataSource3" Height="97px" style="margin-right: 5px" Width="549px">
                <Fields>
                    <asp:BoundField DataField="Id_Stage" HeaderText="Id_Stage" ReadOnly="True" SortExpression="Id_Stage" />
                    <asp:BoundField DataField="Date_Debut" HeaderText="Date_Debut" SortExpression="Date_Debut" />
                    <asp:BoundField DataField="Date_Fin" HeaderText="Date_Fin" SortExpression="Date_Fin" />
                    <asp:BoundField DataField="id_Association" HeaderText="id_Association" SortExpression="id_Association" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:volontairesConnectionString %>" SelectCommand="SELECT * FROM [stage] WHERE ([Id_Stage] = @Id_Stage)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" DefaultValue="" Name="Id_Stage" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:Button ID="btnInscription" runat="server" OnClick="btnInscription_Click" Text="s'inscrire" />
            <br />
            <br />
        </ContentTemplate>
    </asp:UpdatePanel>
    <br />
    <br />
    <br />
</asp:Content>
