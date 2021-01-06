using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace KitapWebsitesi
{
    public partial class A_BookSettings : System.Web.UI.Page
    {
        string islem = "";
        string id = "";
        sqlConnectionClass conn = new sqlConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
            Label2.Visible = false;
            

            if (Page.IsPostBack == false)
            {
                Panel2.Visible = false;
                Panel4.Visible = false;

                islem = Request.QueryString["islem"];
                id = Request.QueryString["id"];

                SqlCommand cdct = new SqlCommand("select *from Tbl_Kategoriler", conn.connection());
                SqlDataReader drct = cdct.ExecuteReader();
                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "KategoriId";
                DropDownList1.DataSource = drct;
                DropDownList1.DataBind();

            }
            SqlCommand cd = new SqlCommand("select *from Tbl_Kitaplar", conn.connection());
            SqlDataReader dr = cd.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();

            if (islem == "sil")
            {
                SqlCommand cdd = new SqlCommand("delete from Tbl_Kitaplar where KitapId=@p1", conn.connection());
                cdd.Parameters.AddWithValue("@p1", id);
                cdd.ExecuteNonQuery();
                conn.connection().Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void btn_ekle_Click(object sender, EventArgs e)
        {
            try
            {
                if (string.IsNullOrEmpty(txt_ad.Text) || string.IsNullOrEmpty(txt_bsayisi.Text) || string.IsNullOrEmpty(txt_btarihi.Text) || string.IsNullOrEmpty(txt_byt1.Text) || string.IsNullOrEmpty(txt_byt2.Text) || string.IsNullOrEmpty(txt_cevirmen.Text) ||string.IsNullOrEmpty(txt_cilt.Text) || string.IsNullOrEmpty(txt_dil.Text) || string.IsNullOrEmpty(txt_fiyat.Text) || string.IsNullOrEmpty(txt_icerik.Text) || string.IsNullOrEmpty(txt_isbn.Text) || string.IsNullOrEmpty(txt_kagit.Text) || string.IsNullOrEmpty(txt_ori.Text) ||string.IsNullOrEmpty(txt_sayfa.Text) ||string.IsNullOrEmpty(txt_yayinevi.Text) || string.IsNullOrEmpty(txt_yazar.Text) )
                {
                    Label2.Visible = true;
                }

                else
                {
                    FileUpload1.SaveAs(Server.MapPath("/BookImg/" + FileUpload1.FileName));

                    SqlCommand cd = new SqlCommand("insert into Tbl_Kitaplar (KitapAd,KitapYazar,KitapCevirmen,KitapFiyat,KitapYayinevi,KitapResim,KitapOrijinalAd,KitapSayfa,KitapIcerik,KitapBaskiTarih,KitapBaski,KitapISBN,KitapDil,KitapCilt,KitapKagit,KitapBoyut1,KitapBoyut2,KitapMiktar,KategoriId) values (@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8,@p9,@p10,@p11,@p12,@p13,@p14,@p15,@p16,@p17,@p18,@p19)", conn.connection());
                    cd.Parameters.AddWithValue("@p1", txt_ad.Text);
                    cd.Parameters.AddWithValue("@p2", txt_yazar.Text);
                    cd.Parameters.AddWithValue("@p3", txt_cevirmen.Text);
                    cd.Parameters.AddWithValue("@p4", Convert.ToDecimal(txt_fiyat.Text));
                    cd.Parameters.AddWithValue("@p5", txt_yayinevi.Text);
                    cd.Parameters.AddWithValue("@p6", "~/BookImg/" + FileUpload1.FileName);
                    cd.Parameters.AddWithValue("@p7", txt_ori.Text);
                    cd.Parameters.AddWithValue("@p8", txt_sayfa.Text);
                    cd.Parameters.AddWithValue("@p9", txt_icerik.Text);
                    cd.Parameters.AddWithValue("@p10", Convert.ToDateTime(txt_btarihi.Text));
                    cd.Parameters.AddWithValue("@p11", txt_bsayisi.Text);
                    cd.Parameters.AddWithValue("@p12", txt_isbn.Text);
                    cd.Parameters.AddWithValue("@p13", txt_dil.Text);
                    cd.Parameters.AddWithValue("@p14", txt_cilt.Text);
                    cd.Parameters.AddWithValue("@p15", txt_kagit.Text);
                    cd.Parameters.AddWithValue("@p16", Convert.ToDecimal(txt_byt1.Text));
                    cd.Parameters.AddWithValue("@p17", Convert.ToDecimal(txt_byt2.Text));
                    cd.Parameters.AddWithValue("@p18", txt_miktar.Text);
                    cd.Parameters.AddWithValue("@p19", DropDownList1.SelectedValue);
                    cd.ExecuteNonQuery();
                    conn.connection().Close();
                }

            }
            catch (System.IO.DirectoryNotFoundException)
            {
                Label1.Visible = true;
            }
        }
    }
}