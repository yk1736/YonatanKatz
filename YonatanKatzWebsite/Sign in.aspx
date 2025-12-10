<%@ Page Title="" Language="C#" MasterPageFile="~/master.master" AutoEventWireup="true" CodeFile="Sign in.aspx.cs" Inherits="Sign_in" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <form>

        <label for="text_1">First name:</label>
        <input type="text" name="text_1" placeholder="גאגי"><br />
        <label for="text_2">Last name:</label>
        <input type="text" name="text_2" placeholder="שרון"><br /><br />
        
        <label for="radio_1">Do you like this form?</label><br />
        <input type="radio" id="answer_1.1" name="radio_1" value="yes">
        <label for="radio_1">yes</label><br />
        <input type="radio" id="answer_1.2" name="radio_1" value="no">
        <label for="radio_1">no</label><br />
        <input type="radio" id="answer_1.3" name="radio_1" value="hell yeah!">
        <label for="radio_1">hell yeah!</label><br />
        <input type="radio" id="answer_1.4" name="radio_1" value="maybe...">
        <label for="radio_1">maybe...</label><br /><br />

        <label for="radio_2">Are you in love with this form?</label><br />
        <input type="radio" id="answer_2.1" name="radio_2" value="what?">
        <label for="radio_2">what?</label><br />
        <input type="radio" id="answer_2.2" name="radio_2" value="no!">
        <label for="radio_2">no!</label><br />
        <input type="radio" id="answer_2.3" name="radio_2" value="I guess">
        <label for="radio_2">I guess</label><br />
        <input type="radio" id="answer_2.4" name="radio_2" value="ew gross">
        <label for="radio_2">ew gross</label><br />

    </form>

</asp:Content>

