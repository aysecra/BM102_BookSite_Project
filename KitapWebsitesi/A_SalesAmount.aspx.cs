using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace KitapWebsitesi
{
    public partial class A_SalesAmount : System.Web.UI.Page
    {
        sqlConnectionClass conn = new sqlConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cd = new SqlCommand("select top 7 *from Tbl_Satis order by SatisTarih asc", conn.connection());
            SqlDataReader dr = cd.ExecuteReader();
            while (dr.Read())
            {
                chart_gunluk.Series["Kitap"].Points.AddXY(dr[1].ToString().Substring(0, 10), dr[2].ToString());
            }
            conn.connection().Close();
        }
    }
}