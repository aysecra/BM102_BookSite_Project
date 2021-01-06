using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using System.Data.SqlClient;

namespace KitapWebsitesi
{
    public partial class A_AdminRegistration : System.Web.UI.Page
    {
        sqlConnectionClass conn = new sqlConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_name.Visible = false;
            lbl_register.Visible = false;
            lbl_passw.Visible = false;
        }

        protected void btn_register_Click(object sender, EventArgs e)
        {
            string pattern = @"^\*adm_";
            Regex rx = new Regex(pattern);
            Match m = rx.Match(txt_name.Text);
            if (m.Success)
            {
                if (txt_password == null)
                {
                    lbl_passw.Visible = false;
                }
                else
                {
                    SqlCommand cd = new SqlCommand("insert into Tbl_Yoneticiler (YoneticiAd, YoneticiSifre) values (@p1,@p2)", conn.connection());
                    cd.Parameters.AddWithValue("@p1", txt_name.Text);
                    cd.Parameters.AddWithValue("@p2", txt_password.Text);
                    cd.ExecuteNonQuery();
                    conn.connection().Close();
                    lbl_register.Visible = true;
                }
            }
            else
            {
                lbl_name.Visible = true;
            }
        }
    }
}