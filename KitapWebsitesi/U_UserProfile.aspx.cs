using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace KitapWebsitesi
{
    public partial class U_UserSite : System.Web.UI.Page
    {
        sqlConnectionClass conn = new sqlConnectionClass();
        string ilid = "";
        string ilceid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cd = new SqlCommand("select *from Tbl_Kullanici where KullaniciId=@p1", conn.connection());
            cd.Parameters.AddWithValue("@p1", Session["id"].ToString());
            SqlDataReader dr = cd.ExecuteReader();
            while (dr.Read())
            {
                lbl_ad.Text = dr[1].ToString();
                lbl_soyad.Text = dr[2].ToString();
                lbl_mail.Text = dr[3].ToString();
                img_user.ImageUrl = dr[5].ToString();
                lbl_tc.Text = dr[6].ToString();
                lbl_dt.Text = dr[7].ToString().Substring(0, 10);
                lbl_tel.Text = dr[8].ToString();
                ilid = dr[9].ToString();
                ilceid = dr[10].ToString();
                lbl_adres.Text = dr[11].ToString();
            }
            conn.connection().Close();
            SqlCommand cd1 = new SqlCommand("select *from Tbl_iller where ilid=@p1", conn.connection());
            cd1.Parameters.AddWithValue("@p1", ilid);
            SqlDataReader dr1 = cd1.ExecuteReader();
            while (dr1.Read())
            {
                lbl_il.Text = dr1[1].ToString();
            }
            conn.connection().Close();
            SqlCommand cd2 = new SqlCommand("select *from Tbl_ilceler where ilceid=@p1", conn.connection());
            cd2.Parameters.AddWithValue("@p1", ilceid);
            SqlDataReader dr2 = cd2.ExecuteReader();
            while (dr2.Read())
            {
                lbl_ilce.Text = dr2[1].ToString();
            }
            conn.connection().Close();
        }
    }
}