<%@ Page Title="" Language="C#" MasterPageFile="~/master.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <form runat="server" method="post">

        <label for="firstName">שם פרטי:</label>
        <input type="text" id="firstName" name="firstName" placeholder="John"><br />
        <label for="lastName">שם משפחה:</label>
        <input type="text" id="lastName" name="lastName" placeholder="Doe"><br /><br />

        <label for="dateOfBirth">תאריך לידה</label>
        <input type="date" id="dateOfBirth" name="dateOfBirth"><br /><br />

        <label for="instrument">מהו הכלי שלך?</label>
        <input type="text" id="instrument" name="instrument"><br /><br />
        <label for=">1">כמה שנים את/ה מנגן/ת?</label><br />
        <label for=">1">less than a year</label>
        <input type="radio" id=">1 year" name=">1"><br />
        <label for="1-2">1-2 years</label>
        <input type="radio" id="1-2 years" name="1-2"><br />
        <label for="3-5">3-5 years</label>
        <input type="radio" id="3-5 years" name="3-5"><br />
        <label for="6+">more than 6 years!</label>
        <input type="radio" id="6+ years" name="6+"><br /><br />
        

        <label for="username">שם משתמש</label><br />
        <input type="text" id="username" name="username"><br /><br />
        <label for="email">אימייל</label><br />
        <input type="text" id="email" name="email"><br /><br />
        <label for="password">סיסמה</label><br />
        <input type="text" id="password" name="password"><br /><br />

        <input type="submit" />

        <%Response.Write(stResult); %>

    </form>

</asp:Content>

