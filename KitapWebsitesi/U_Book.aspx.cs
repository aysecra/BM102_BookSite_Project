using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace KitapWebsitesi
{
    public partial class U_Book : System.Web.UI.Page
    {
        sqlConnectionClass conn = new sqlConnectionClass();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_islem.Visible = false;
            id = Request.QueryString["id"];
            SqlCommand cd = new SqlCommand("select *from Tbl_Kitaplar where KitapId=@p1", conn.connection());
            cd.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = cd.ExecuteReader();
            while (dr.Read())
            {
                lb_bookname.Text = dr[1].ToString();
                if (dr[7].ToString() != "-")
                {
                    lb_oriname.Visible = true;
                    lb_oriname.Text = dr[7].ToString();
                }
                if (dr[3].ToString() != "-")
                {
                    Panel2.Visible = true;
                    lb_cevirmen.Text = dr[3].ToString();
                }
                lb_yazar.Text = dr[2].ToString();
                lb_fiyat.Text = dr[4].ToString();
                lb_icerik.Text = dr[10].ToString();
                lb_yayinevi.Text = dr[5].ToString();
                lb_baski.Text = dr[12].ToString().Substring(0, 10);
                lb_baskisayisi.Text = dr[13].ToString();
                lb_sayfa.Text = dr[9].ToString();
                lb_boyut1.Text = dr[18].ToString();
                lb_boyut2.Text = dr[19].ToString();
                lb_isbn.Text = dr[14].ToString();
                lb_dil.Text = dr[15].ToString();
                lb_cilt.Text = dr[16].ToString();
                lb_kagit.Text = dr[17].ToString();
                lb_puan.Text = dr[8].ToString();
                Image2.ImageUrl = dr[6].ToString();
            }
            conn.connection().Close();

            SqlCommand cdCommand = new SqlCommand("select *from Tbl_Yorumlar where KitapId=@p1 and YorumOnay=1", conn.connection());
            cdCommand.Parameters.AddWithValue("@p1", id);
            SqlDataReader drCommand = cdCommand.ExecuteReader();
            DataList2.DataSource = drCommand;
            DataList2.DataBind();
            conn.connection().Close();
        }

        protected void btn_addBasket_Click(object sender, EventArgs e)
        {
            if (Session["id"] != null)
            {
                string current = "";
                double bookprice = 0;
                string bookName = "";
                SqlCommand cdquery = new SqlCommand("select *from Tbl_Sepet where KitapId=@p1 and KullaniciId=@p2 and SiparisNo is null", conn.connection());
                cdquery.Parameters.AddWithValue("@p1", id);
                cdquery.Parameters.AddWithValue("@p2", Session["id"]);
                SqlDataReader drquery = cdquery.ExecuteReader();
                while (drquery.Read())
                    current = drquery[0].ToString();
                conn.connection().Close();

                SqlCommand cdprice = new SqlCommand("select *from Tbl_Kitaplar where KitapId=@p1", conn.connection());
                cdprice.Parameters.AddWithValue("@p1", id);
                SqlDataReader drprice = cdprice.ExecuteReader();
                while (drprice.Read())
                {
                    bookprice = Convert.ToDouble(drprice[4]);
                    bookName = drprice[1].ToString();
                }
                conn.connection().Close();

                if (current == "")
                {
                    SqlCommand cd = new SqlCommand("insert into Tbl_Sepet(KitapId,SepetFiyat,KullaniciId,KitapFiyat,KitapAd) values (@p1,@p2,@p3,@p4,@p5)", conn.connection());
                    cd.Parameters.AddWithValue("@p1", id);
                    cd.Parameters.AddWithValue("@p2", bookprice);
                    cd.Parameters.AddWithValue("@p3", Session["id"]);
                    cd.Parameters.AddWithValue("@p4", bookprice);
                    cd.Parameters.AddWithValue("@p5", bookName);
                    cd.ExecuteNonQuery();
                    conn.connection().Close();
                }
                else
                {
                    SqlCommand cd = new SqlCommand("update Tbl_Sepet set SepetMiktar+=1 where SepetId=@p1 and SiparisNo is null", conn.connection());
                    cd.Parameters.AddWithValue("@p1", current);
                    cd.ExecuteNonQuery();
                    conn.connection().Close();

                    SqlCommand cdtf = new SqlCommand("update Tbl_Sepet set SepetFiyat= KitapFiyat*SepetMiktar where SepetId=@p1 and SiparisNo is null", conn.connection());
                    cdtf.Parameters.AddWithValue("@p1", current);
                    cdtf.ExecuteNonQuery();
                    conn.connection().Close();
                }

            }
            else
            {
                Response.Redirect("U_Login.aspx");
            }
        }

        protected void btn_command_Click(object sender, EventArgs e)
        {
            if (Session["id"] != null)
            {
                SqlCommand cd = new SqlCommand("insert into Tbl_Yorumlar (YorumGonderen, YorumIcerik, KitapId) values (@p1,@p2,@p3)",conn.connection());
                string name = Session["ad"] + " " + Session["soyad"];
                cd.Parameters.AddWithValue("@p1", name);
                cd.Parameters.AddWithValue("@p2", TextBox1.Text);
                cd.Parameters.AddWithValue("@p3", id);
                cd.ExecuteNonQuery();
                conn.connection().Close();
                lbl_islem.Visible = true;
            }
            else
            {
                Response.Redirect("U_Login.aspx");
            }
        }
    }
}