using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class logIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Page.IsPostBack)
        {
            string username = Request.Form["username"];
            string password = Request.Form["password"];

            // התחברות מנהל
            if (username == "Shmuel_pitango123" && password == "menahem")
            {
                Response.Redirect("Manager.aspx");
            }
            else
            {
                // בדיקת משתמש רגיל
                string sql =
                    "SELECT * FROM Tusers " +
                    "WHERE username = '" + username + "' " +
                    "AND password = '" + password + "'";

                bool userExists = MyAdoHelper.IsExist(sql);

                if (!userExists)
                {
                    st = "שם משתמש או סיסמה שגויים";
                }
                else
                {
                    // משתמש רשום
                    Response.Redirect("home.aspx");
                }
            }
        }
    }