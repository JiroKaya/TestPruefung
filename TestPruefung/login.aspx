<%@ Page Title="" Language="C#" MasterPageFile="~/master1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="TestPruefung.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
		<tr>
			<td>Username:</td>
			<td>
				<asp:TextBox ID="txtUserName" runat="server" CssClass="form-control rounded-left"/>
				<asp:RequiredFieldValidator ID="rfvUser" ErrorMessage="Please enter Username" ControlToValidate="txtUserName" runat="server" />
			</td>
		</tr>
		<tr>
			<td>Password:</td>
			<td>
				<asp:TextBox ID="txtPassword" runat="server" CssClass="form-control rounded-left" TextMode="Password"/>
				<asp:RequiredFieldValidator ID="rfvPassword" ErrorMessage="Please enter Password" ControlToValidate="txtPassword" runat="server" />
			</td>
		</tr>
		<tr>
			<td></td>
		</tr>
		<tr>
			<td>
				<asp:Button ID="Button2" runat="server" Text="Login" OnClick="btnSubmit_Click" CssClass="form-control btn btn-primary rounded submit px-3" />
			</td>
		</tr>
	</table>
</asp:Content>
