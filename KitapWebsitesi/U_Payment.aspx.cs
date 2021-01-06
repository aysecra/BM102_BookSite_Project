using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace KitapWebsitesi
{
    public partial class U_Payment : System.Web.UI.Page
    {
        sqlConnectionClass conn = new sqlConnectionClass();
        string ilid = "";
        string ilceid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_control.Visible = false;
            if (Page.IsPostBack == false)
            {
                SqlCommand cdil = new SqlCommand("select *from Tbl_iller", conn.connection());
                SqlDataReader dril = cdil.ExecuteReader();
                dd_il.DataTextField = "ilAd";
                dd_il.DataValueField = "ilId";
                dd_il.DataSource = dril;
                dd_il.DataBind();

                SqlCommand cdilce = new SqlCommand("select *from Tbl_ilceler", conn.connection());
                SqlDataReader drilce = cdilce.ExecuteReader();
                dd_ilce.DataTextField = "ilceAd";
                dd_ilce.DataValueField = "ilceId";
                dd_ilce.DataSource = drilce;
                dd_ilce.DataBind();

                SqlCommand cd = new SqlCommand("select *from Tbl_Kullanici where KullaniciId=@p1", conn.connection());
                cd.Parameters.AddWithValue("@p1", Session["id"]);
                SqlDataReader dr = cd.ExecuteReader();
                while (dr.Read())
                {
                    txt_ad.Text = dr[1].ToString();
                    txt_soyad.Text = dr[2].ToString();
                    txt_mail.Text = dr[3].ToString();
                    txt_tc.Text = dr[6].ToString();
                    txt_tel.Text = dr[8].ToString();
                    ilid = dr[9].ToString();
                    ilceid = dr[10].ToString();
                    txt_adres.Text = dr[11].ToString();
                }
                conn.connection().Close();
                dd_il.SelectedValue = ilid;
                dd_ilce.SelectedValue = ilceid;
            }
        }

        protected void btn_onayla_Click(object sender, EventArgs e)
        {

            if (string.IsNullOrEmpty(txt_ad.Text) || string.IsNullOrEmpty(txt_adres.Text) || string.IsNullOrEmpty(txt_mail.Text) || string.IsNullOrEmpty(txt_soyad.Text) || string.IsNullOrEmpty(txt_tc.Text) || string.IsNullOrEmpty(txt_tel.Text))
            {
                lbl_control.Visible = true;
            }
            else
            {
                SqlCommand cd = new SqlCommand("update Tbl_Kullanici set KullaniciAd=@p1, KullaniciSoyad=@p2, KullaniciMail=@p3, KullaniciTC=@p5, KullaniciTel=@p7, ilid=@p8, ilceid=@p9, KullaniciAdres=@p10 where KullaniciId=@p11", conn.connection());
                cd.Parameters.AddWithValue("@p1", txt_ad.Text);
                cd.Parameters.AddWithValue("@p2", txt_soyad.Text);
                cd.Parameters.AddWithValue("@p3", txt_mail.Text);
                cd.Parameters.AddWithValue("@p5", txt_tc.Text);
                cd.Parameters.AddWithValue("@p7", txt_tel.Text);
                cd.Parameters.AddWithValue("@p8", dd_il.SelectedValue);
                cd.Parameters.AddWithValue("@p9", dd_ilce.SelectedValue);
                cd.Parameters.AddWithValue("@p10", txt_adres.Text);
                cd.Parameters.AddWithValue("@p11", Session["id"]);
                cd.ExecuteNonQuery();
                conn.connection().Close();
                Response.Redirect("U_Payment2.aspx");
            }
        }

        protected void dd_il_SelectedIndexChanged(object sender, EventArgs e)
        {
            dd_ilce.Items.Clear();
            SqlCommand cdilce = new SqlCommand("select *from Tbl_ilceler where ilid=@p1", conn.connection());
            cdilce.Parameters.AddWithValue("@p1", Convert.ToInt32(dd_il.SelectedValue));
            SqlDataReader drilce = cdilce.ExecuteReader();
            dd_ilce.DataTextField = "ilceAd";
            dd_ilce.DataValueField = "ilceId";
            dd_ilce.DataSource = drilce;
            dd_ilce.DataBind();
        }
    }
}