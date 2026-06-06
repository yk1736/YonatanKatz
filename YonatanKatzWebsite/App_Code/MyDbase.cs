using System;
using System.Data;
using System.Data.SqlClient; // Changed from OleDb
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

/// <summary>
/// Summary description for MyDbase
/// </summary>
public class MyDbase
{
    public MyDbase()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    /// <summary>
    /// MakeConnection:
    /// פעולה שמקבלת שם קובץ מסד נתונים שנמצא ב
    /// App_Data
    /// הפעולה מתחברת לקובץ ומחזירה אובייקט ההתחברות
    /// SqlConnection
    /// </summary>
    /// <param name="dbFile">שם קובץ מסד הנתונים (e.g., database.mdf)</param>
    /// <returns></returns>
    public static SqlConnection MakeConnection(string dbFile)
    {
        SqlConnection c = new SqlConnection();

        // Connection string for SQL Server LocalDB (.mdf files)
        c.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=" +
                             HttpContext.Current.Server.MapPath("~/App_Data/" + dbFile) +
                             ";Integrated Security=True;Connect Timeout=30";

        c.Open();
        return c;
    }

    /// <summary>
    /// SelectFromTable: 
    /// מקבלת כפרמטרים שם קובץ מסד הנתונים ושאילתת  
    /// SQL בחירה SELECT
    /// הפעולה מתחברת למסד הנתונים מבצעת את שאילתת הבחירה ומחזירה את התוצאה כאובייקט
    /// DataTable  
    /// </summary>
    /// <param name="strSql">משפט בחירה SQL</param>
    /// <param name="FileName">שם קובץ מסד הנתונים</param>
    /// <returns></returns>
    public static DataTable SelectFromTable(string strSql, string FileName)
    {
        ///1. קישור למסד הנתונים
        SqlConnection c = MakeConnection(FileName);
        ///2. עצם לביצוע שאילתות על מסד הנתונים
        SqlCommand comm = new SqlCommand();
        ///3. קביעת השאילתא והקשר עם מסד הנתונים
        comm.CommandText = strSql;
        comm.Connection = c;
        ///4. עצם לשמירת תוצאת ביצוע שאילתת 
        DataTable dt = new DataTable();
        //5. ביצוע שאילתא
        SqlDataAdapter da = new SqlDataAdapter(comm);
        ///6. מילוי תוצאת ביצוע השאילתא
        da.Fill(dt);
        ///7. סגירת הקישור למסד הנתונים
        c.Close();
        ///8. החזרת התוצאה
        return dt;
    }

    /// <summary>
    /// ChangeTable:
    /// מקבלת כפרמטרים שם קובץ מסד הנתונים ושאילתת  
    /// SQL לשינוי תוכן מסד הנתונים
    /// הוספה: INSERT INTO
    /// עידכון: UPDATE
    /// מחיקה: DELETE
    /// </summary>
    /// <param name="strSql">שאילתת SQL לשינוי תוכן מסד הנתונים</param>
    /// <param name="FileName">שם קובץ מסד הנתונים</param>
    public static void ChangeTable(string strSql, string FileName)
    {
        ///1. קישור למסד הנתונים
        SqlConnection c = MakeConnection(FileName);
        ///2. עצם לביצוע שאילתות על מסד הנתונים
        SqlCommand comm = new SqlCommand();
        ///3. קביעת השאילתא והקשר עם מסד הנתונים
        comm.CommandText = strSql;
        comm.Connection = c;
        ///4. ביצוע שאילתא
        comm.ExecuteNonQuery();
        ///7. סגירת הקישור למסד הנתונים
        c.Close();
    }
}