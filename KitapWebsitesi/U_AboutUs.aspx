<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="U_AboutUs.aspx.cs" Inherits="KitapWebsitesi.U_AboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .table{
            width: 80%;
            margin-left: 10%;
        }
        .auto-style11 {
            color: #DCDDD8;
            font-size: x-large;
            font-family: Calibri;
            text-align: center;
        }
        .auto-style12 {
            color: #DCDDD8;
            font-size: large;
            font-family: Calibri;
            text-align: left;
            height: 26px;
        }
        .auto-style13 {
            color: #DCDDD8;
            font-size: large;
            font-family: Calibri;
            text-align: left;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table">
        <tr>
            <td class="auto-style11"><strong>HAKKIMIZDA</strong></td>
        </tr>
        <tr>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>Bu site BM102 projesidir. Yapım sürecinde kullanılan kaynaklar:  </strong>
                </td>
        </tr>
        <tr>
            <td class="auto-style12"><a href="https://www.youtube.com/playlist?list=PLKnjBHu2xXNO3DAV2yEdLb3qewr9wBdpB">https://www.youtube.com/playlist?list=PLKnjBHu2xXNO3DAV2yEdLb3qewr9wBdpB</a><br />
                <a href="https://forums.asp.net/t/1210964.aspx?Max+length+in+Label">https://forums.asp.net/t/1210964.aspx?Max+length+in+Label</a><br />
                <a href="http://www.btdersleri.com/ders/Css-ile-Linkleri-Biçimlendirme">http://www.btdersleri.com/ders/Css-ile-Linkleri-Bi%C3%A7imlendirme</a><br />
                <a href="http://bilgisayaci.org/css-te-hover-focus-kullanimi/">http://bilgisayaci.org/css-te-hover-focus-kullanimi/</a><br />
                <a href="https://sanalkurs.net/yazinin-uzerine-gelince-bilgi-kutucugu-cikartmak-2966.html">https://sanalkurs.net/yazinin-uzerine-gelince-bilgi-kutucugu-cikartmak-2966.html</a><br />
                <a href="https://www.nurkozan.com/asp-net-dropdownlist-selectedindexchanged-eventi-calismama-hatasi-ve-cozumu/">https://www.nurkozan.com/asp-net-dropdownlist-selectedindexchanged-eventi-calismama-hatasi-ve-cozumu/</a><br />
                <a href="https://immibbilisim.com/blog/325/css-pozisyon-belirleme-kaydirma-float-ve-hizalama-align">https://immibbilisim.com/blog/325/css-pozisyon-belirleme-kaydirma-float-ve-hizalama-align</a><br />
                <a href="https://www.teknologweb.com/asp-net-kullanici-girisi-ve-session-kullanimi">https://www.teknologweb.com/asp-net-kullanici-girisi-ve-session-kullanimi</a><br />
                <a href="https://www.gencayyildiz.com/blog/asp-net-session-kullanimi/">https://www.gencayyildiz.com/blog/asp-net-session-kullanimi/</a><br />
                <a href="https://social.msdn.microsoft.com/Forums/tr-TR/d9658977-7c0d-40a8-a99f-e18b868fc7e3/her-sayfa-iin-kullanc-sessionu-kontrol-etmek-yerine-ne-yaplabilir?forum=aspnettr">https://social.msdn.microsoft.com/Forums/tr-TR/d9658977-7c0d-40a8-a99f-e18b868fc7e3/her-sayfa-iin-kullanc-sessionu-kontrol-etmek-yerine-ne-yaplabilir?forum=aspnettr</a><br />
                <a href="http://www.csharpnedir.com/articles/read/?id=784&amp;title=QueryString%20Kavram%C4%B1">http://www.csharpnedir.com/articles/read/?id=784&amp;title=QueryString%20Kavram%C4%B1</a><br />
                <a href="https://forums.asp.net/t/1490589.aspx?how+can+i+use+eval+and+set+asp+net+button+command+CommandArgument">https://forums.asp.net/t/1490589.aspx?how+can+i+use+eval+and+set+asp+net+button+command+CommandArgument</a><br />
                <a href="https://stackoverflow.com/questions/9348006/href-news-aspxid-evalid-not-work-in-linkbutton-asp-net">https://stackoverflow.com/questions/9348006/href-news-aspxid-evalid-not-work-in-linkbutton-asp-net</a><br />
                <a href="https://www.kodlamamerkezi.com/veritabani-sql/sql-ile-null-degerlerin-kontrol-edilmesi/">https://www.kodlamamerkezi.com/veritabani-sql/sql-ile-null-degerlerin-kontrol-edilmesi/</a><br />
                <a href="https://www.hostinger.web.tr/rehberler/ucretsiz-google-smtp-sunucusu-kullanimi">https://www.hostinger.web.tr/rehberler/ucretsiz-google-smtp-sunucusu-kullanimi</a><br />
                <a href="https://www.youtube.com/watch?v=8tD5ANtUk1I&amp;t">https://www.youtube.com/watch?v=8tD5ANtUk1I&amp;t</a><br />
                <a href="https://www.youtube.com/watch?v=yD4hjkZosEg">https://www.youtube.com/watch?v=yD4hjkZosEg</a><br />
                <a href="https://stackoverflow.com/questions/14930166/server-map-path-not-working-in-asp-net">https://stackoverflow.com/questions/14930166/server-map-path-not-working-in-asp-net</a><br />
                <a href="http://www.gorselprogramlama.com/pdf-dosyasina-tablo-olustur-csharp/">http://www.gorselprogramlama.com/pdf-dosyasina-tablo-olustur-csharp/</a><br />
                <a href="https://www.sanaldata.com/itextsharp-turkce-karakter-sorunu-ve-cozumu">https://www.sanaldata.com/itextsharp-turkce-karakter-sorunu-ve-cozumu</a><br />
                <a href="http://www.canerkara.com/2013/08/itextsharp-turkce-karakter-sorunu.html">http://www.canerkara.com/2013/08/itextsharp-turkce-karakter-sorunu.html</a><br />
                <a href="https://www.yunusemrearac.com/2015/10/12/c-ile-dosya-ekleyerek-mail-gonderme-islemi/">https://www.yunusemrearac.com/2015/10/12/c-ile-dosya-ekleyerek-mail-gonderme-islemi/</a></td>
        </tr>
    </table>
</asp:Content>
