<%@ Page Title="" Language="C#" MasterPageFile="~/master1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="TestPruefung._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Bestellung</h1>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Artikelnummer" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Artikelnummer" HeaderText="Artikelnummer" InsertVisible="False" ReadOnly="True" SortExpression="Artikelnummer" />
                <asp:BoundField DataField="Artikelname" HeaderText="Artikelname" SortExpression="Artikelname" />
                <asp:BoundField DataField="Artikelpreis" HeaderText="Artikelpreis" SortExpression="Artikelpreis" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sqlTestPruefungConnectionString %>" SelectCommand="SELECT * FROM [tabArtikel] ORDER BY [Artikelnummer]"></asp:SqlDataSource>
    </p>
    <h2>Bestellung aufgeben</h2>
    <br>
    <asp:TextBox ID="txtKDName" runat="server" CssClass="form_bestellung" placeholder="Please enter your name"/>
	<asp:RequiredFieldValidator ID="rfvKDName" ControlToValidate="txtKDName" runat="server" />
    <br>
    <asp:TextBox ID="txtKDVorname" runat="server" CssClass="form_bestellung" placeholder="Please enter your prename"/>
	<asp:RequiredFieldValidator ID="rfvKDVorname" ControlToValidate="txtKDVorname" runat="server" />
    <br>
    <asp:TextBox ID="txtArtNr" runat="server" CssClass="form_bestellung" placeholder="Please enter the id of your wish item"/>
	<asp:RequiredFieldValidator ID="rfvArtNr" ControlToValidate="txtArtNr" runat="server" />
    <br>
    <asp:TextBox ID="txtArtAnz" runat="server" CssClass="form_bestellung" placeholder="Please enter the amount of your wish item"/>
	<asp:RequiredFieldValidator ID="rfvArtAnz" ControlToValidate="txtArtAnz" runat="server" />
    <br>
    <asp:Button ID="Button1" runat="server" CssClass="send_button" Text="Bestellen" OnClick="Send_Order"/>

</asp:Content>
