using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace KitapWebsitesi
{
    public partial class A_Contact : System.Web.UI.Page
    {
        sqlConnectionClass conn = new sqlConnectionClass();
        string islem = "";
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            islem = Request.QueryString["islem"];
            id = Request.QueryString["id"];
            SqlCommand cd = new SqlCommand("select *from Tbl_Iletisim", conn.connection());
            SqlDataReader dr = cd.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();

            if (islem == "sil")
            {
                SqlCommand cddelete = new SqlCommand("delete from Tbl_Iletisim where IletisimId=@p1", conn.connection());
                cddelete.Parameters.AddWithValue("@p1", id);
                cddelete.ExecuteNonQuery();
                conn.connection().Close();
            }
        }
    }
}