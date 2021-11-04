<%@ Page Title="" Language="C#" MasterPageFile="~/master1.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="TestPruefung.admin" %>
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
    <h2>Artikel Löschen</h2>
    <br>
    <asp:TextBox ID="txtArtNrLöschen" runat="server" CssClass="form_bestellung" placeholder="Please enter your name"/>
	<asp:RequiredFieldValidator ID="rfvArtNrLöschen" ControlToValidate="txtArtNrLöschen" runat="server" />
    <br />
    <asp:Button ID="Button2" runat="server" CssClass="send_button" Text="Delete" OnClick="Delete_Article"/>
    <br />
    <br />
    <h2>Artikel editieren</h2>
    <br />
    <asp:TextBox ID="txtArtNr" runat="server" CssClass="form_bestellung" placeholder="Please enter the id of your wish item"/>
	<asp:RequiredFieldValidator ID="rfvArtNr" ControlToValidate="txtArtNr" runat="server" />
    <br />
    <asp:TextBox ID="txtArtName" runat="server" CssClass="form_bestellung" placeholder="Please enter the name of your wish item"/>
	<asp:RequiredFieldValidator ID="rfvArtName" ControlToValidate="txtArtName" runat="server" />
    <br />
    <asp:TextBox ID="txtArtPreis" runat="server" CssClass="form_bestellung" placeholder="Please enter the price of your wish item"/>
	<asp:RequiredFieldValidator ID="rfvArtPreis" ControlToValidate="txtArtPreis" runat="server" />
    <br />
    <asp:Button ID="Button3" runat="server" CssClass="send_button" Text="Edit" OnClick="Edit_Article"/>
</asp:Content>
