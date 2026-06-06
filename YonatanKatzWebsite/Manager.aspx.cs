using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Manager : System.Web.UI.Page
{
    public string st = "";
    public string str = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        string email = "'%" + Request.Form["email"] + "%'";
        string username = "'%" + Request.Form["username"] + "%'";

        string sql = "select * from tUsers where email like " + email + " and username like " + username;
        System.Data.DataTable dt = MyDbase.SelectFromTable(sql, "MyDB.mdf");

        if (dt.Rows.Count > 0)
        {
            st = "<table class = 'styled-table' border='1'>";
            st += "<tr>";
            for (int j = 0; j < dt.Columns.Count; j++)
            {
                st += "<th>";
                st += dt.Columns[j].ColumnName;
                st += "</th>";
            }

            st += "</tr>";

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                st += "<tr>";
                for (int j = 0; j < dt.Columns.Count; j++)
                {
                    st += "<td>";
                    st += dt.Rows[i][j];
                    st += "</td>";
                }

                st += "</tr>";
            }
            st += "</table>";
        }
        else
        {
            st = "no data found";
        }
    }
}
