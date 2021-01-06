using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace KitapWebsitesi
{
    public class fallFromWarehouse
    {
        sqlConnectionClass conn = new sqlConnectionClass();
        public void fall(string orderNumber)
        {
            SqlCommand cd = new SqlCommand("select *from Tbl_Sepet where SiparisNo=@p1", conn.connection());
            cd.Parameters.AddWithValue("@p1", orderNumber);
            SqlDataReader dr = cd.ExecuteReader();
            while (dr.Read())
            {
                SqlCommand cdamount = new SqlCommand("update Tbl_Kitaplar set KitapMiktar-=@p1, KitapSatisMiktar+=@p1 where KitapId=@p2", conn.connection());
                cdamount.Parameters.AddWithValue("@p1", dr[2].ToString());
                cdamount.Parameters.AddWithValue("@p2", dr[1].ToString());
                cdamount.ExecuteNonQuery();
                conn.connection().Close();
            }
            conn.connection().Close();
        }
    }
}