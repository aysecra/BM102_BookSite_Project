using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using iTextSharp.text;
using iTextSharp.text.pdf;
using System.Data.SqlClient;

namespace KitapWebsitesi
{
    public class pdf_bill
    {
        sqlConnectionClass conn = new sqlConnectionClass();
        e_mail maill = new e_mail();
        string siparisNo = "";
        string Kullaniciid = "";
        string name = "";
        string filePath = "";
        string e_mail = "";
        public void bill(string siparisNo, string Kullaniciid)
        {
            this.siparisNo = siparisNo;
            this.Kullaniciid = Kullaniciid;

            iTextSharp.text.pdf.BaseFont STF_Helvetica_Turkish = iTextSharp.text.pdf.BaseFont.CreateFont("Helvetica", "CP1254", iTextSharp.text.pdf.BaseFont.NOT_EMBEDDED);
            iTextSharp.text.Font fontTitle = new iTextSharp.text.Font(STF_Helvetica_Turkish, 11, iTextSharp.text.Font.NORMAL);

            SqlCommand cdname = new SqlCommand("select *from Tbl_Kullanici where KullaniciId=@p1", conn.connection());
            cdname.Parameters.AddWithValue("@p1", Kullaniciid);
            SqlDataReader drname = cdname.ExecuteReader();
            while (drname.Read())
            {
                name = drname[1].ToString() + " " + drname[2].ToString();
                e_mail = drname[3].ToString();
            }

            conn.connection().Close();

            iTextSharp.text.Document pdf = new iTextSharp.text.Document();
            filePath = HttpContext.Current.Server.MapPath("~/Bills/" + siparisNo + "_Fatura.Pdf");
            PdfWriter.GetInstance(pdf, new FileStream(filePath, FileMode.Create));
            pdf.AddAuthor("BookSite");
            pdf.AddCreator("BookSite");
            pdf.AddCreationDate();
            pdf.AddSubject("Fatura");


            PdfPTable table = new PdfPTable(4);
            PdfPCell cell = new PdfPCell(new Phrase(name + "        FATURA - " + siparisNo, fontTitle));
            cell.Colspan = 4;
            cell.HorizontalAlignment = 1;
            table.AddCell(cell);

            table.AddCell(new Phrase("Kitap Adı", fontTitle));
            table.AddCell(new Phrase("Miktar", fontTitle));
            table.AddCell(new Phrase("Birim Fiyat", fontTitle));
            table.AddCell(new Phrase("Toplam Fiyat", fontTitle));

            SqlCommand cd = new SqlCommand("select *from Tbl_Sepet where SiparisNo=@p1", conn.connection());
            cd.Parameters.AddWithValue("@p1", siparisNo);
            SqlDataReader dr = cd.ExecuteReader();
            while (dr.Read())
            {
                table.AddCell(new Phrase(dr[7].ToString(), fontTitle));
                table.AddCell(new Phrase(dr[2].ToString(), fontTitle));
                table.AddCell(new Phrase(dr[6].ToString(), fontTitle));
                table.AddCell(new Phrase(dr[3].ToString(), fontTitle));
            }
            conn.connection().Close();


            if (pdf.IsOpen() == false)
                pdf.Open();
            pdf.Add(table);
            pdf.Close();
        }
        public void sendBill()
        {
            maill.SendFileMail(e_mail, "Fatura", filePath);
        }
    }
}