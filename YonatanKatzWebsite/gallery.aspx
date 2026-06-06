<%@ Page Title="" Language="C#" MasterPageFile="~/master.master" AutoEventWireup="true" CodeFile="gallery.aspx.cs" Inherits="gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .gallery{
            height: 280px;
            width: 400px;
            border: 1px solid black
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <center>
        <h1>גלריית תמונות</h1>

    <img src="תמונות%20לאתר/WhatsApp%20Image%202026-06-04%20at%2013.28.13.jpeg" class="gallery" />
    <img src="תמונות%20לאתר/WhatsApp%20Image%202026-06-04%20at%2013.38.55%20(1).jpeg" class="gallery"/>
    <img src="תמונות%20לאתר/WhatsApp%20Image%202026-06-04%20at%2013.38.55%20(2).jpeg" class="gallery"/>
    <img src="תמונות%20לאתר/WhatsApp%20Image%202026-06-04%20at%2013.38.55.jpeg" class="gallery"/>
    <img src="תמונות%20לאתר/WhatsApp%20Image%202026-06-04%20at%2013.40.07%20(1).jpeg" class="gallery"/>
    <img src="תמונות%20לאתר/WhatsApp%20Image%202026-06-04%20at%2013.40.07.jpeg" class="gallery"/>

    </center>


</asp:Content>

