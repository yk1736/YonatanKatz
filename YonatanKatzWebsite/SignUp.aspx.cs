using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SignUp : System.Web.UI.Page
{
    public string stResult = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {

            string firstname = Request.Form["firstname"];
            string lastname = Request.Form["lastname"];
            string dateOfBirth = Request.Form["dateOfBirth"];
            string instrument = Request.Form["instrument"];
            string username = Request.Form["username"];
            string email = Request.Form["email"];
            string password = Request.Form["password"];


            string sqlInsert =
                "INSERT INTO Tusers " +
                "VALUES (" +
                "N'" + firstname + "'," +
                "N'" + lastname + "'," +
                "N'" + dateOfBirth + "'," +
                "N'" + instrument + "'," +
                "N'" + username + "'," +
                "N'" + email + "'," +
                "N'" + password + "'" +
                ")";

            MyAdoHelper.DoQuery("MyDB.mdf", sqlInsert);

            stResult = "נרשמת בהצלחה!";
        }
    }
}