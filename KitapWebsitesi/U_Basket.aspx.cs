using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace KitapWebsitesi
{
    public partial class U_Basket : System.Web.UI.Page
    {
        sqlConnectionClass conn = new sqlConnectionClass();
        string ekleid = "";
        string cikarid = "";
        string silid = "";
        string islem = "";
        double sum = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            islem = Request.QueryString["islem"];
            cikarid = Request.QueryString["cikarid"];
            ekleid = Request.QueryString["ekleid"];
            silid = Request.QueryString["silid"];
            if (Page.IsPostBack == false)
            {
                SqlCommand cd = new SqlCommand("Select *from Tbl_Sepet where KullaniciId=@p1 and SiparisNo is null", conn.connection());
                cd.Parameters.AddWithValue("@p1", Session["id"]);
                SqlDataReader dr = cd.ExecuteReader();
                DataList2.DataSource = dr;
                DataList2.DataBind();
                conn.connection().Close();

                if (islem == "sil")
                {
                    SqlCommand cdsil = new SqlCommand("delete from Tbl_Sepet where SepetId=@p1",conn.connection());
                    cdsil.Parameters.AddWithValue("@p1", silid);
                    cdsil.ExecuteNonQuery();
                    conn.connection().Close();
                    Response.Redirect("U_Basket.aspx");
                }
                else if (islem == "ekle")
                {
                    SqlCommand cdekle = new SqlCommand("update Tbl_Sepet set SepetMiktar+=1 where SepetId=@p1 ", conn.connection());
                    cdekle.Parameters.AddWithValue("@p1", ekleid);
                    cdekle.ExecuteNonQuery();
                    conn.connection().Close();

                    SqlCommand cdtf = new SqlCommand("update Tbl_Sepet set SepetFiyat = KitapFiyat*SepetMiktar where SepetId=@p1 ", conn.connection());
                    cdtf.Parameters.AddWithValue("@p1", ekleid);
                    cdtf.ExecuteNonQuery();
                    conn.connection().Close();
                    Response.Redirect("U_Basket.aspx");

                }
                else if (islem == "cikar")
                {
                    int currentMiktar = 0;
                    SqlCommand cdcurr = new SqlCommand("select *from Tbl_Sepet where SepetId=@p1",conn.connection());
                    cdcurr.Parameters.AddWithValue("@p1",cikarid);
                    SqlDataReader drcurr = cdcurr.ExecuteReader();
                    while (drcurr.Read())
                        currentMiktar = Convert.ToInt32(drcurr[2]);
                    conn.connection().Close();

                    if (currentMiktar > 1)
                    {
                        SqlCommand cdcikar = new SqlCommand("update Tbl_Sepet set SepetMiktar-=1 where SepetId=@p1", conn.connection());
                        cdcikar.Parameters.AddWithValue("@p1", cikarid);
                        cdcikar.ExecuteNonQuery();
                        conn.connection().Close();

                        SqlCommand cdtf = new SqlCommand("update Tbl_Sepet set SepetFiyat= KitapFiyat*SepetMiktar where SepetId=@p1 ", conn.connection());
                        cdtf.Parameters.AddWithValue("@p1", cikarid);
                        cdtf.ExecuteNonQuery();
                        conn.connection().Close();
                    }
                    Response.Redirect("U_Basket.aspx");
                }

                SqlCommand cdsum = new SqlCommand("Select *from Tbl_Sepet where KullaniciId=@p1 and SiparisNo is null", conn.connection());
                cdsum.Parameters.AddWithValue("@p1", Session["id"]);
                SqlDataReader drsum = cdsum.ExecuteReader();
                while (drsum.Read())
                    sum += Convert.ToDouble(drsum[3]);
                conn.connection();
                lbl_sum.Text = sum.ToString();

            }
        }

        protected void btn_payment_Click(object sender, EventArgs e)
        {
            Response.Redirect("U_Payment.aspx");
        }
    }
}