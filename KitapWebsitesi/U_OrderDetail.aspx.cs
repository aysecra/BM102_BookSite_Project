using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace KitapWebsitesi
{  
    public partial class U_OrderDetail : System.Web.UI.Page
    {
        sqlConnectionClass conn = new sqlConnectionClass();
        string no = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            no = Request.QueryString["no"];
            SqlCommand cd = new SqlCommand("select *from Tbl_Sepet where SiparisNo=@p1", conn.connection());
            cd.Parameters.AddWithValue("@p1", no);
            SqlDataReader dr = cd.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();
        }
    }
}