<%@ Page Title="" Language="C#" MasterPageFile="~/master.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <script language="javascript">

        function checkAll() {
            firstNameErr.innerHTML = "";
            lastNameErr.innerHTML = "";

            f = true;

            if (checkFirstName() == false)
                f = false;
            if (checkLastName() == false)
                f = false;

            return f;
        }// סוף פעולה ראשית

        function checkFirstName() {
            Fname = document.getElementById("firstName").value;
            //alert(name);

            if (Fname.length < 2 || Fname.length > 30) {
                firstNameErr.innerHTML = "אורך השם הפרטי לא תקין";
                return false;
            }
            return true;
        } // סוף בדיקת שם

        function checkLastName() {
            Lname = document.getElementById("lastName").value;
            //alert(name);

            if (Lname.length < 2 || Lname.length > 30) {
                lastNameErr.innerHTML = "אורך שם המשפחה לא תקין";
                return false;
            }
            return true;
        } // סוף בדיקת XXX

    </script>

</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <form runat="server" method="post" onsubmit="return checkAll();">

        <label for="firstName">שם פרטי:</label>
        <input type="text" id="firstName" name="firstName" placeholder="John">
        <span id="firstNameErr"></span><br />
        <label for="lastName">שם משפחה:</label>
        <input type="text" id="lastName" name="lastName" placeholder="Doe">
        <span id="lastNameErr"></span><br /><br />

        <label for="dateOfBirth">תאריך לידה</label>
        <input type="date" id="dateOfBirth" name="dateOfBirth">
        <span id="dateOfBirthErr"></span><br /><br />

        <label for="instrument">מהו הכלי שלך?</label>
        <input type="text" id="instrument" name="instrument">
        <span id="instrumentErr"></span><br /><br />
        <label for=">1">כמה שנים את/ה מנגן/ת?</label><br />
        <label for=">1">less than a year</label>
        <input type="radio" id=">1year" name=">1">
        <span id=">1yearErr"></span><br />
        <label for="1-2">1-2 years</label>
        <input type="radio" id="1-2years" name="1-2">
        <span id="1-2yearsErr"></span><br />
        <label for="3-5">3-5 years</label>
        <input type="radio" id="3-5years" name="3-5">
        <span id="3-5yearsErr"></span><br />
        <label for="6+">more than 6 years!</label>
        <input type="radio" id="6+years" name="6+">
        <span id="6+yearsErr"></span><br /><br />
        

        <label for="username">שם משתמש</label><br />
        <input type="text" id="username" name="username">
        <span id="usernameErr"></span><br /><br />
        <label for="email">אימייל</label><br />
        <input type="text" id="email" name="email">
        <span id="emailErr"></span><br /><br />
        <label for="password">סיסמה</label><br />
        <input type="text" id="password" name="password">
        <span id="passwordErr"></span><br /><br />

        <input type="submit" />

        <%Response.Write(stResult); %>

    </form>

</asp:Content>

