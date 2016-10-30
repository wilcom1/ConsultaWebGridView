<%@ Page Title="Página principal" Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeBehind="Default.aspx.vb" Inherits="ConsultaWebGridView._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        CONSULTA WEB GRID VIEW
    </h2>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"
        AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="IdDepartamento" HeaderText="IdDepartamento" SortExpression="IdDepartamento" />
            <asp:BoundField DataField="NombreDepartamento" HeaderText="NombreDepartamento" SortExpression="NombreDepartamento" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Departamentos]">
    </asp:SqlDataSource>
    <p>
        Desarrollado por Wilmer Amézquita para el curso de visual basic avanzado.
    </p>
</asp:Content>
