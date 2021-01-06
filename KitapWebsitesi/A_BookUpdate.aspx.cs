using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace KitapWebsitesi
{
    public partial class A_BookUpdate : System.Web.UI.Page
    {
        sqlConnectionClass conn = new sqlConnectionClass();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
            Label2.Visible = false;
            id = Request.QueryString["id"];

            if (Page.IsPostBack == false)
            {
                SqlCommand cdct = new SqlCommand("select *from Tbl_Kategoriler", conn.connection());
                SqlDataReader drct = cdct.ExecuteReader();
                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "KategoriId";
                DropDownList1.DataSource = drct;
                DropDownList1.DataBind();

                SqlCommand cd = new SqlCommand("select *from Tbl_Kitaplar where KitapId=@p1", conn.connection());
                cd.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = cd.ExecuteReader();
                while (dr.Read())
                {
                    txt_ad.Text = dr[1].ToString();
                    txt_yazar.Text = dr[2].ToString();
                    txt_cevirmen.Text = dr[3].ToString();
                    txt_fiyat.Text = dr[4].ToString();
                    txt_yayinevi.Text = dr[5].ToString();
                    txt_ori.Text = dr[7].ToString();
                    txt_sayfa.Text = dr[9].ToString();
                    txt_icerik.Text = dr[10].ToString();
                    txt_btarihi.Text = dr[12].ToString();
                    txt_bsayisi.Text = dr[13].ToString();
                    txt_isbn.Text = dr[14].ToString();
                    txt_dil.Text = dr[15].ToString();
                    txt_cilt.Text = dr[16].ToString();
                    txt_kagit.Text = dr[17].ToString();
                    txt_byt1.Text = dr[18].ToString();
                    txt_byt2.Text = dr[19].ToString();
                    txt_miktar.Text = dr[20].ToString();
                    DropDownList1.SelectedValue = dr[22].ToString();
                }
                conn.connection().Close();
            }
        }

        protected void btn_update_Click(object sender, EventArgs e)
        {
            try
            {
                if (string.IsNullOrEmpty(txt_ad.Text) || string.IsNullOrEmpty(txt_bsayisi.Text) || string.IsNullOrEmpty(txt_btarihi.Text) || string.IsNullOrEmpty(txt_byt1.Text) || string.IsNullOrEmpty(txt_byt2.Text) || string.IsNullOrEmpty(txt_cevirmen.Text) || string.IsNullOrEmpty(txt_cilt.Text) || string.IsNullOrEmpty(txt_dil.Text) || string.IsNullOrEmpty(txt_fiyat.Text) || string.IsNullOrEmpty(txt_icerik.Text) || string.IsNullOrEmpty(txt_isbn.Text) || string.IsNullOrEmpty(txt_kagit.Text) || string.IsNullOrEmpty(txt_ori.Text) || string.IsNullOrEmpty(txt_sayfa.Text) || string.IsNullOrEmpty(txt_yayinevi.Text) || string.IsNullOrEmpty(txt_yazar.Text))
                {
                    Label2.Visible = true;
                }
                else
                {
                    FileUpload1.SaveAs(Server.MapPath("/BookImg/" + FileUpload1.FileName));

                    SqlCommand cd = new SqlCommand("update Tbl_Kitaplar set KitapAd=@p1,KitapYazar=@p2,KitapCevirmen=@p3,KitapFiyat=@p4,KitapYayinevi=@p5,KitapResim=@p6,KitapOrijinalAd=@p7,KitapSayfa=@p8,KitapIcerik=@p9,KitapBaskiTarih=@p10,KitapBaski=@p11,KitapISBN=@p12,KitapDil=@p13,KitapCilt=@p14,KitapKagit=@p15,KitapBoyut1=@p16,KitapBoyut2=@p17,KitapMiktar=@p18,KategoriId=@p19 where KitapId=@p20", conn.connection());
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
                    cd.Parameters.AddWithValue("@p20", id);
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