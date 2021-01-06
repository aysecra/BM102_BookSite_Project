using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace KitapWebsitesi
{
    public partial class User : System.Web.UI.MasterPage
    {
        sqlConnectionClass conn = new sqlConnectionClass();
        static int panelControl = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            SqlCommand cm = new SqlCommand("select *from Tbl_Kategoriler", conn.connection());
            SqlDataReader dr = cm.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();

            if (Session["ad"] == null)
            {
                lbl_giris.Visible = true;
                lbl_kayit.Visible = true;
                Panel2.Visible = false;
                img_basket.Visible = false;
            }
            else
            {
                lbl_giris.Visible = false;
                lbl_kayit.Visible = false;
                Panel2.Visible = true;
                img_basket.Visible = true;
                lbl_adsoyad.Text = Session["ad"].ToString() + " " + Session["soyad"].ToString();
                img_user.ImageUrl = Session["foto"].ToString();
            }
        }

        protected void btn_menu_Click(object sender, ImageClickEventArgs e)
        {
            panelControl++;
            if (panelControl % 2 == 0)
                Panel1.Visible = false;
            else
                Panel1.Visible = true;

        }

        protected void imgBtn_search_Click(object sender, ImageClickEventArgs e)
        {
            string url = "U_SearchPage.aspx?search=" + txt_search.Text;
            Response.Redirect(url);
        }
    }
}