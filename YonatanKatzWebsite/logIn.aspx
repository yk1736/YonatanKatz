<%@ Page Title="" Language="C#" MasterPageFile="~/master.master" AutoEventWireup="true" CodeFile="logIn.aspx.cs" Inherits="logIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<form runat="server" method="post">

    <label for="username">שם משתמש</label><br />
    <input type="text" id="username" name="username"><br /><br />
    <label for="password">סיסמה</label><br />
    <input type="text" id="password" name="password"><br /><br />

    <input type="submit" />

</form>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

