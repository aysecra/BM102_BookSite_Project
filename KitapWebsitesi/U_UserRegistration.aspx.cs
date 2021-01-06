using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace KitapWebsitesi
{
    public partial class U_UserRegistration : System.Web.UI.Page
    {
        sqlConnectionClass conn = new sqlConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                Label1.Visible = false;
                Label2.Visible = false;
                Label3.Visible = false;
                Label4.Visible = false;

                SqlCommand cdil = new SqlCommand("select *from Tbl_iller", conn.connection());
                SqlDataReader dril = cdil.ExecuteReader();
                DropDownList1.DataTextField = "ilAd";
                DropDownList1.DataValueField = "ilId";
                DropDownList1.DataSource = dril;
                DropDownList1.DataBind();
            }


        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList2.Items.Clear();
            SqlCommand cdilce = new SqlCommand("select *from Tbl_ilceler where ilid=@p1", conn.connection());
            cdilce.Parameters.AddWithValue("@p1", Convert.ToInt32(DropDownList1.SelectedValue));
            SqlDataReader drilce = cdilce.ExecuteReader();
            DropDownList2.DataTextField = "ilceAd";
            DropDownList2.DataValueField = "ilceId";
            DropDownList2.DataSource = drilce;
            DropDownList2.DataBind();
        }

        protected void btn_kaydet_Click(object sender, EventArgs e)
        {

            try
            {
                if (string.IsNullOrEmpty(txt_ad.Text) || string.IsNullOrEmpty(txt_adres.Text) || string.IsNullOrEmpty(txt_dt.Text) || string.IsNullOrEmpty(txt_mail.Text) || string.IsNullOrEmpty(txt_sifre.Text) || string.IsNullOrEmpty(txt_sifreT.Text) || string.IsNullOrEmpty(txt_soyad.Text) || string.IsNullOrEmpty(txt_tc.Text) || string.IsNullOrEmpty(txt_tel.Text) || string.IsNullOrEmpty(DropDownList1.SelectedValue) || string.IsNullOrEmpty(DropDownList2.SelectedValue))
                {
                    Label2.Visible = true;
                }
                else
                {
                    if (txt_sifre.Text == txt_sifreT.Text)
                    {
                        bool control = false;
                        SqlCommand cdcontrol = new SqlCommand("select *from Tbl_Kullanici where KullaniciMail=@p1", conn.connection());
                        cdcontrol.Parameters.AddWithValue("@p1", txt_mail.Text);
                        SqlDataReader drcontrol = cdcontrol.ExecuteReader();
                        if (drcontrol.HasRows)
                            control = true;
                        else
                            control = false;

                        if (control) { Label4.Visible = true; }
                        else
                        {
                            FileUpload1.SaveAs(Server.MapPath("/UserImg/" + FileUpload1.FileName));

                            SqlCommand cmd = new SqlCommand("insert into Tbl_Kullanici (KullaniciAd,KullaniciSoyad,KullaniciMail,KullaniciSifre,KullaniciFoto,KullaniciTC,KullaniciDogumT,KullaniciTel,ilid,ilceid,KullaniciAdres),values (@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8,@p9,@p10,@p11)", conn.connection());
                            cmd.Parameters.AddWithValue("@p1", txt_ad.Text);
                            cmd.Parameters.AddWithValue("@p2", txt_soyad.Text);
                            cmd.Parameters.AddWithValue("@p3", txt_mail.Text);
                            cmd.Parameters.AddWithValue("@p4", txt_sifre.Text);
                            cmd.Parameters.AddWithValue("@p5", "~/UserImg/" + FileUpload1.FileName);
                            cmd.Parameters.AddWithValue("@p6", txt_tc.Text);
                            cmd.Parameters.AddWithValue("@p7", txt_dt.Text);
                            cmd.Parameters.AddWithValue("@p8", txt_tel.Text);
                            cmd.Parameters.AddWithValue("@p9", DropDownList1.SelectedValue);
                            cmd.Parameters.AddWithValue("@p10", DropDownList2.SelectedValue);
                            cmd.Parameters.AddWithValue("@p11", txt_adres.Text);
                            cmd.ExecuteNonQuery();
                            conn.connection().Close();
                            Label3.Visible = true;
                        }
                    }
                    else
                    {
                        Label1.Visible = true;
                    }
                }

            }
            catch (System.IO.DirectoryNotFoundException)
            {
                SqlCommand cmd = new SqlCommand("insert into Tbl_Kullanici (KullaniciAd,KullaniciSoyad,KullaniciMail,KullaniciSifre,KullaniciFoto,KullaniciTC,KullaniciDogumT,KullaniciTel,ilid,ilceid,KullaniciAdres) values (@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8,@p9,@p10,@p11)", conn.connection());
                cmd.Parameters.AddWithValue("@p1", txt_ad.Text);
                cmd.Parameters.AddWithValue("@p2", txt_soyad.Text);
                cmd.Parameters.AddWithValue("@p3", txt_mail.Text);
                cmd.Parameters.AddWithValue("@p4", txt_sifre.Text);
                cmd.Parameters.AddWithValue("@p5", "~/UserImg/user.png");
                cmd.Parameters.AddWithValue("@p6", txt_tc.Text);
                cmd.Parameters.AddWithValue("@p7", txt_dt.Text);
                cmd.Parameters.AddWithValue("@p8", txt_tel.Text);
                cmd.Parameters.AddWithValue("@p9", DropDownList1.SelectedValue);
                cmd.Parameters.AddWithValue("@p10", DropDownList2.SelectedValue);
                cmd.Parameters.AddWithValue("@p11", txt_adres.Text);
                cmd.ExecuteNonQuery();
                conn.connection().Close();
                Label3.Visible = true;
            }
        }


    }
}