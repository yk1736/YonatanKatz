using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class logIn : System.Web.UI.Page
{
    public string st = "";
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Page.IsPostBack)
        {
            string username = Request.Form["username"];
            string password = Request.Form["password"];

            // התחברות מנהל
            if (username == "Shmuel_pitango123" && password == "menahem")
            {
                Session["username"] = "Manager";
                Session["admin"] = "ok";
                Response.Redirect("Manager.aspx");
            }
            else
            {
                // בדיקת משתמש רגיל
                string sqlCheck =
                    "SELECT * FROM Tusers " +
                    "WHERE username = '" + username + "' " +
                    "AND password = '" + password + "'";

                //OLD bool userExists = MyAdoHelper.IsExist(sqlCheck);
                //OLD if (!userExists)
                DataTable dt = MyAdoHelper.ExecuteDataTable(sqlCheck);

                if (dt.Rows.Count != 1)
                {
                    st = "שם משתמש או סיסמה שגויים";
                }
                else
                {
                    // משתמש רשום
                    Session["username"] = dt.Rows[0]["First Name"];
                    Session["user"] = "ok";
                    Response.Redirect("homepage.aspx");
                }
            }
        }
    }
}