using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Sign_in : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) {

            string firstname = Request.Form["firstname"];
            string lastname = Request.Form["lastname"];
            string dateOfBirth = Request.Form["dateOfBirth"];
            string instrument = Request.Form["instrument"];
            string username = Request.Form["username"];
            string email = Request.Form["email"];
            string password = Request.Form["password"];
        }
}