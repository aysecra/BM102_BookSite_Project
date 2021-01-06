using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace KitapWebsitesi
{
    public partial class U_ChangePassword : System.Web.UI.Page
    {
        sqlConnectionClass conn = new sqlConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_equals.Visible = false;
            lbl_space.Visible = false;
        }

        protected void btn_password_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txt_password1.Text) || string.IsNullOrEmpty(txt_password2.Text))
            {
                lbl_space.Visible = true;
            }
            else
            {
                if (txt_password1.Text == txt_password2.Text)
                {
                    SqlCommand cd = new SqlCommand("update Tbl_Kullanici set KullaniciSifre=@p1 where KullaniciId=@p2", conn.connection());
                    cd.Parameters.AddWithValue("@p1", txt_password1.Text);
                    cd.Parameters.AddWithValue("@p2", Session["id"]);
                    cd.ExecuteNonQuery();
                    conn.connection().Close();
                }
                else
                    lbl_equals.Visible = true;
            }
        }
    }
}