<%@ Page Title="" Language="C#" MasterPageFile="~/master.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <script language="javascript">

        function checkAll() {
            firstNameErr.innerHTML = "";
            lastNameErr.innerHTML = "";
            usernameErr.innerHTML = "";
            passwordErr.innerHTML = "";
            emailErr.innerHTML = "";
            yearsPlayingErr.innerHTML = "";
            instrumentErr.innerHTML = "";
            dateOfBirthErr.innerHTML = "";

            f = true;

            if (checkFirstName() == false)
                f = false;
            if (checkLastName() == false)
                f = false;
            if (checkUsername() == false)
                f = false;
            if (checkPassword() == false)
                f = false;
            if (checkEmail() == false) 
                f = false;
            if (checkYearsPlaying() == false) 
                f = false;
            if (checkInstrument() == false) 
                f = false;
            if (checkDateOfBirth() == false)
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
        } // סוף בדיקת שם משפחה

        function checkUsername() {
            Uname = document.getElementById("username").value;

            // 1. בדיקת אורך
            if (Uname.length < 4 || Uname.length > 12) {
                usernameErr.innerHTML = "שם המשתמש חייב להיות בין 4 ל-12 תווים";
                return false;
            }

            // 2. בדיקה ששם המשתמש מכיל רק אותיות באנגלית (ללא מספרים או סימנים)
            if (!Uname.match(/^[a-zA-Z]+$/)) {
                usernameErr.innerHTML = "שם המשתמש חייב להכיל אותיות באנגלית בלבד";
                return false;
            }

            return true;
        } // סוף בדיקת שם משתמש

        function checkPassword() {
            Pass = document.getElementById("password").value;

            // 1. בדיקת אורך
            if (Pass.length < 6 || Pass.length > 20) {
                passwordErr.innerHTML = "הסיסמה חייבת להיות בין 6 ל-20 תווים";
                return false;
            }

            // 2. בדיקה שיש לפחות אות גדולה אחת באנגלית (A-Z)
            if (!Pass.match(/[A-Z]/)) {
                passwordErr.innerHTML = "הסיסמה חייבת להכיל לפחות אות גדולה אחת";
                return false;
            }

            // 3. בדיקה שיש לפחות מספר אחד (0-9)
            if (!Pass.match(/[0-9]/)) {
                passwordErr.innerHTML = "הסיסמה חייבת להכיל לפחות מספר אחד";
                return false;
            }

            return true;
        } // סוף בדיקת סיסמה

        function checkEmail() {
            Mail = document.getElementById("email").value;

            // 1. בדיקה שהשדה לא ריק
            if (Mail.length == 0) {
                emailErr.innerHTML = "חובה להזין כתובת אימייל";
                return false;
            }

            // 2. בדיקת מבנה תקין של אימייל (מכיל @, נקודה וסיומת)
            if (!Mail.match(/^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/)) {
                emailErr.innerHTML = "כתובת האימייל אינה תקינה";
                return false;
            }

            return true;
        } // סוף בדיקת אימייל

        function checkYearsPlaying() {
            
            const optionButtons = document.getElementsByName("option");

            
            let isSelected = false;

            
            for (let i = 0; i < optionButtons.length; i++) {
                if (optionButtons[i].checked == true) {
                    isSelected = true; 
                }
            }

            
            if (isSelected == false) {
                yearsPlayingErr.innerHTML = "חובה לבחור אפשרות";
                return false;
            }

            return true;
        } // סוף בדיקת כפתורי רדיו

        function checkInstrument() {
            
            InstrumentValue = document.getElementById("instrument").value;

            
            if (InstrumentValue == "") {
                instrumentErr.innerHTML = "חובה לבחור כלי נגינה מהרשימה";
                return false;
            }

            return true;
        } // סוף בדיקת רשימה נפתחת

        function checkDateOfBirth() {
            let birthDate = document.getElementById("dateOfBirth").value;

            if (birthDate == "") {
                document.getElementById("dateOfBirthErr").innerHTML =
                    "חובה לבחור תאריך לידה";
                return false;
            }

            return true;
        }
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
        <select id="instrument" name="instrument">
            <option value="">-- אנא בחר כלי נגינה --</option>
            <option value="piano">פסנתר</option>
            <option value="guitar">גיטרה</option>
            <option value="drums">תופים</option>
            <option value="bassGuitar">בס</option>
            <option value="singer">זמר/ת</option>
            <option value="percussion">כלי הקשה</option>
            <option value="strings">כלי קשת</option>
            <option value="brass">כלי נשיפה</option>
            <option value="other">אחר</option>
        </select>
        <span id="instrumentErr"></span><br /><br />

<label>כמה שנים את/ה מנגן/ת?</label><br />

<input type="radio" id="lessThan1Year" name="option" value="lessThan1Year">
<label for="lessThan1Year">Less than a year</label><br />

<input type="radio" id="years1to2" name="option" value="years1to2">
<label for="years1to2">1-2 years</label><br />

<input type="radio" id="years3to5" name="option" value="years3to5">
<label for="years3to5">3-5 years</label><br />

<input type="radio" id="moreThan6Years" name="option" value="moreThan6Years">
<label for="moreThan6Years">More than 6 years</label><br />

<span id="yearsPlayingErr"></span>
        

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

