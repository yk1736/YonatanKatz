<%@ Page Title="" Language="C#" MasterPageFile="~/master.master" AutoEventWireup="true" CodeFile="Sign in.aspx.cs" Inherits="Sign_in" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <form>

        <label for="firstName">First name:</label>
        <input type="text" id="firstName" name="firstName" placeholder="John"><br />
        <label for="lastName">Last name:</label>
        <input type="text" id="lastName" name="lastName" placeholder="Doe"><br /><br />

        <label for="dateOfBirth">Date of birth</label>
        <input type="date" id="dateOfBirth" name="dateOfBirth"><br /><br />

        <label for="instrument">What's your instrument?</label>
        <input type="text" id="instrument" name="instrument"><br /><br />
        <label for=">1">How many years do you play?</label><br />
        <label for=">1">less than a year</label>
        <input type="radio" id=">1 year" name=">1"><br />
        <label for="1-2">1-2 years</label>
        <input type="radio" id="1-2 years" name="1-2"><br />
        <label for="3-5">3-5 years</label>
        <input type="radio" id="3-5 years" name="3-5"><br />
        <label for="6+">more than 6 years!</label>
        <input type="radio" id="6+ years" name="6+"><br /><br />
        

        <label for="username">Username</label><br />
        <input type="text" id="username" name="username"><br /><br />
        <label for="email">Email</label><br />
        <input type="text" id="email" name="email"><br /><br />
        <label for="password">Password</label><br />
        <input type="text" id="password" name="password"><br /><br />

        <label for="termsAndCondotions">I agree to the terms and conditions</label>
        <input type="checkbox" id="agreement" name="termsAndConditions">

    </form>

</asp:Content>

