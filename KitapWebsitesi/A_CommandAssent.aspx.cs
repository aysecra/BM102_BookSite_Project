using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace KitapWebsitesi
{
    public partial class A_CommandAssent : System.Web.UI.Page
    {
        sqlConnectionClass conn = new sqlConnectionClass();
        string islem = "";
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            islem = Request.QueryString["islem"];
            id = Request.QueryString["id"];
            if (Page.IsPostBack == false)
            {
                SqlCommand cd = new SqlCommand("select *from Tbl_Yorumlar where YorumOnay=0", conn.connection());
                SqlDataReader dr = cd.ExecuteReader();
                DataList1.DataSource = dr;
                DataList1.DataBind();
            }
            if (islem == "sil")
            {
                SqlCommand cdDelete = new SqlCommand("delete from Tbl_Yorumlar where YorumId=@p1",conn.connection());
                cdDelete.Parameters.AddWithValue("@p1", id);
                cdDelete.ExecuteNonQuery();
                conn.connection().Close();
                Response.Redirect("A_CommandAssent.aspx");
            }
            else if (islem == "onay")
            {
                SqlCommand cdAssent = new SqlCommand("update Tbl_Yorumlar set YorumOnay=1 where YorumId=@p1", conn.connection());
                cdAssent.Parameters.AddWithValue("@p1", id);
                cdAssent.ExecuteNonQuery();conn.connection().Close();
                Response.Redirect("A_CommandAssent.aspx");
            }
        }
    }
}