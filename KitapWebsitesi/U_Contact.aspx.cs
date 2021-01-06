using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace KitapWebsitesi
{
    public partial class U_Contact : System.Web.UI.Page
    {
        sqlConnectionClass conn = new sqlConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_success.Visible = false;
            lbl_unsuccess.Visible = false;
        }

        protected void btn_gonder_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txb_gonderen.Text) || string.IsNullOrEmpty(txb_icerik.Text) || string.IsNullOrEmpty(txb_konu.Text) || string.IsNullOrEmpty(txb_mail.Text))
            {
                lbl_unsuccess.Visible = true;
            }
            else
            {
                SqlCommand cd = new SqlCommand("insert into Tbl_Iletisim (IletisimGonderen, IletisimKonu, IletisimMail, IletisimIcerik ) values (@p1,@p2,@p3,@p4)", conn.connection());
                cd.Parameters.AddWithValue("@p1", txb_gonderen.Text);
                cd.Parameters.AddWithValue("@p2", txb_konu.Text);
                cd.Parameters.AddWithValue("@p3", txb_mail.Text);
                cd.Parameters.AddWithValue("@p4", txb_icerik.Text);
                cd.ExecuteNonQuery();
                conn.connection().Close();
                lbl_success.Visible = true;
            }
        }
    }
}