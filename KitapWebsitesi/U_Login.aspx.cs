using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text.RegularExpressions;

namespace KitapWebsitesi
{
    public partial class U_Login : System.Web.UI.Page
    {
        sqlConnectionClass conn = new sqlConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                lbl_msy.Visible = false;
                lbl_abb.Visible = false;
            }
        }

        protected void btn_giris0_Click(object sender, EventArgs e)
        {
            string pattern = @"^\*adm_";
            Regex rx = new Regex(pattern);
            Match m = rx.Match(txt_mail.Text);
            if (m.Success)
            {
                if (string.IsNullOrEmpty(txt_mail.Text) || string.IsNullOrEmpty(txt_sifre.Text))
                {
                    lbl_abb.Visible = true;
                }
                else
                {
                    SqlCommand cd = new SqlCommand("select *from Tbl_Yoneticiler where YoneticiAd=@p1 and YoneticiSifre=@p2", conn.connection());
                    cd.Parameters.AddWithValue("@p1", txt_mail.Text);
                    cd.Parameters.AddWithValue("@p2", txt_sifre.Text);
                    SqlDataReader dr = cd.ExecuteReader();
                    if (dr.HasRows == true)
                    {
                        while (dr.Read())
                        {
                            Session.Add("id", dr[0].ToString());
                            Session.Add("ad", dr[1].ToString());
                            Response.Redirect("A_BookSettings.aspx");
                        }
                        conn.connection().Close();
                    }
                    else
                        lbl_msy.Visible = true;
                }
            }
            else
            {
                if (string.IsNullOrEmpty(txt_mail.Text) || string.IsNullOrEmpty(txt_sifre.Text))
                {
                    lbl_abb.Visible = true;
                }
                else
                {
                    SqlCommand cd = new SqlCommand("select *from Tbl_Kullanici where KullaniciMail=@p1 and KullaniciSifre=@p2", conn.connection());
                    cd.Parameters.AddWithValue("@p1", txt_mail.Text);
                    cd.Parameters.AddWithValue("@p2", txt_sifre.Text);
                    SqlDataReader dr = cd.ExecuteReader();
                    if (dr.HasRows == true)
                    {
                        while (dr.Read())
                        {
                            Session.Add("id", dr[0].ToString());
                            Session.Add("ad", dr[1].ToString());
                            Session.Add("soyad", dr[2].ToString());
                            Session.Add("foto", dr[5].ToString());
                            Response.Redirect("U_Homepage.aspx");
                        }
                        conn.connection().Close();
                    }
                    else
                        lbl_msy.Visible = true;
                }
            }
            
        }
    }
}