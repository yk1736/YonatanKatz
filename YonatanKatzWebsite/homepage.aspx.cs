using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class homepage : System.Web.UI.Page
{

    public string str = "<table>";
    protected void Page_Load(object sender, EventArgs e)
    {
        for (int i = 1; i <= 10; i++)
        {
            str += "<tr>";
            for (int j = 1; j <= 10; j++)
            {
                str += "<td>"+(j*i).ToString()+"</td>";
            }
            str += "</tr>";
        }
        str += "</table>";
    }
}