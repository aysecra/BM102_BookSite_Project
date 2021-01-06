using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;

namespace KitapWebsitesi
{
    public partial class U_Payment2 : System.Web.UI.Page
    {
        sqlConnectionClass conn = new sqlConnectionClass();
        pdf_bill bll = new pdf_bill();
        fallFromWarehouse fallFromAmount = new fallFromWarehouse();
        string orderNumber = "";
        double sum = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                lbl_durum.Visible = false;
                lbl_kargo.Visible = false;
                SqlCommand cdBuy = new SqlCommand("Select *from Tbl_Sepet where KullaniciId=@p1 and SiparisNo is null", conn.connection());
                cdBuy.Parameters.AddWithValue("@p1", Session["id"]);
                SqlDataReader drBuy = cdBuy.ExecuteReader();
                DataList2.DataSource = drBuy;
                DataList2.DataBind();
                conn.connection().Close();

                SqlCommand cdsum = new SqlCommand("Select *from Tbl_Sepet where KullaniciId=@p1 and SiparisNo is null", conn.connection());
                cdsum.Parameters.AddWithValue("@p1", Session["id"]);
                SqlDataReader drsum = cdsum.ExecuteReader();
                while (drsum.Read())
                    sum += Convert.ToDouble(drsum[3]);
                conn.connection();
                lbl_sum.Text = sum.ToString();

                SqlCommand cd = new SqlCommand("select *from Tbl_Kullanici where KullaniciId=@p1", conn.connection());
                cd.Parameters.AddWithValue("@p1", Session["id"]);
                SqlDataReader dr = cd.ExecuteReader();
                while (dr.Read())
                {
                    lbl_ad.Text = dr[1].ToString();
                    lbl_soyad.Text = dr[2].ToString();
                    lbl_mail.Text = dr[3].ToString();
                    lbl_tc.Text = dr[6].ToString();
                    lbl_tel.Text = dr[8].ToString();
                    lbl_il.Text = dr[9].ToString();
                    lbl_ilce.Text = dr[10].ToString();
                    lbl_adres.Text = dr[11].ToString();
                }
                conn.connection().Close();
            }
        }
        void OrderNumber()
        {
            int num;
            char[] rdChar = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".ToCharArray();
            Random rd = new Random();
            for (int i = 0; i < 12; i++)
            {
                num = rd.Next(0, rdChar.Length - 1);
                orderNumber += rdChar[num];
            }
        }

        protected void btn_buy_Click(object sender, EventArgs e)
        {
           
            bool control = true;

            if (rdbList_kargo.SelectedIndex != -1)
            {
                lbl_kargo.Visible = false;
                while (control)
                {
                    OrderNumber();
                    SqlCommand cdcontrol = new SqlCommand("select *from Tbl_Siparis where SiparisNo=@p1", conn.connection());
                    cdcontrol.Parameters.AddWithValue("@p1", orderNumber);
                    SqlDataReader drcontrol = cdcontrol.ExecuteReader();
                    if (drcontrol.HasRows)
                        control = true;
                    else
                    {
                        control = false;
                        SqlCommand cd = new SqlCommand("insert into Tbl_Siparis(SiparisNo,SiparisKargo,KullaniciId) values(@p1,@p2,@p3)", conn.connection());
                        cd.Parameters.AddWithValue("@p1", orderNumber);
                        cd.Parameters.AddWithValue("@p2", rdbList_kargo.SelectedValue);
                        cd.Parameters.AddWithValue("@p3", Session["id"]);
                        cd.ExecuteNonQuery();
                        conn.connection().Close();

                        SqlCommand cdbasket = new SqlCommand("update Tbl_Sepet set SiparisNo=@p1 where KullaniciId=@p2 and SiparisNo is null ", conn.connection());
                        cdbasket.Parameters.AddWithValue("@p1", orderNumber);
                        cdbasket.Parameters.AddWithValue("@p2", Session["id"]);
                        cdbasket.ExecuteNonQuery();
                        conn.connection().Close();

                    }
                    conn.connection().Close();
                }
                lbl_durum.Visible = true;
                lbl_durum.Text = "Siparişiniz alınmıştır. Sipariş No: " + orderNumber;

                fallFromAmount.fall(orderNumber);

                bll.bill(orderNumber, Session["id"].ToString());
                bll.sendBill();
            }
            else
            {
                lbl_kargo.Visible = true;
            }
        }
    }
}
