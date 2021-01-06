using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace KitapWebsitesi
{
    public partial class A_Orders : System.Web.UI.Page
    {
        sqlConnectionClass conn = new sqlConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cd = new SqlCommand("select *from Tbl_Siparis", conn.connection());
            SqlDataReader dr = cd.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
        }
    }
}