using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace KitapWebsitesi
{
    public partial class A_ContactAnswer : System.Web.UI.Page
    {
        sqlConnectionClass conn = new sqlConnectionClass();
        e_mail mail = new e_mail();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["id"];
            lbl_success.Visible = false;
        }
        

        protected void btn_gonder_Click(object sender, EventArgs e)
        {
            string maill = "";
            SqlCommand cd = new SqlCommand("select *from Tbl_Iletisim where IletisimId=@p1", conn.connection());
            cd.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = cd.ExecuteReader();
            while (dr.Read())
                maill = dr[3].ToString();
            conn.connection().Close();

            mail.SendMail(maill, txt_subject.Text, txt_message.Text);
            lbl_success.Visible = true;
        }
    }
}