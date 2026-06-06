<%@ Page Title="" Language="C#" MasterPageFile="~/master.master" AutoEventWireup="true" CodeFile="Manager.aspx.cs" Inherits="Manager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

        <style>
        .styled-table {
        border: 2px solid;
        }
        table, td, th {
        border: 1px solid;
        padding: 10px;
        }

    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<center>
    <h1>Manager Page-search panel</h1>
    <form runat="server" method="post">
        <label>Username:</label>
        <input type="text" name="username" id="username"> 
        
        <label>Email:</label>
        <input type="text" name="email" id="email"> 
        
        <input type="submit" name="submitForm" id="submitForm" value="Search">
    </form>

    <%=st %>

</center>


    <!--let's do it compter seince!-->

</asp:Content>

