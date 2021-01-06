using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace KitapWebsitesi
{
    public partial class U_Writers : System.Web.UI.Page
    {
        sqlConnectionClass conn = new sqlConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cd = new SqlCommand("select distinct *from Tbl_Kitaplar order by KitapYazar", conn.connection());
            SqlDataReader dr = cd.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();
        }
    }
}