﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="A_BookUpdate.aspx.cs" Inherits="KitapWebsitesi.A_BookUpdate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="A_BookSettingsCss.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            color: #FF0000;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="panelUpdate">
        KİTAP GÜNCELLE</asp:Panel>

    <asp:Panel ID="Panel2" runat="server" CssClass="panel2">
        <table>
            <tr>
                <td class="td3">Kitap Adı:&nbsp; </td>
                <td>
                    <asp:TextBox ID="txt_ad" runat="server" CssClass="txt"></asp:TextBox>
                </td>
                <td class="td3">Orijinal İsmi:&nbsp; </td>
                <td>
                    <asp:TextBox ID="txt_ori" runat="server" CssClass="txt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="td3">Yazar:&nbsp; </td>
                <td>
                    <asp:TextBox ID="txt_yazar" runat="server" CssClass="txt"></asp:TextBox>
                </td>
                <td class="td3">Çevirmen:&nbsp; </td>
                <td>
                    <asp:TextBox ID="txt_cevirmen" runat="server" CssClass="txt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="td3">Yayınevi:&nbsp; </td>
                <td>
                    <asp:TextBox ID="txt_yayinevi" runat="server" CssClass="txt"></asp:TextBox>
                </td>
                <td class="td3">Fiyat:&nbsp; </td>
                <td>
                    <asp:TextBox ID="txt_fiyat" runat="server" CssClass="txt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="td3">Sayfa:&nbsp; </td>
                <td>
                    <asp:TextBox ID="txt_sayfa" runat="server" CssClass="txt" TextMode="Number"></asp:TextBox>
                </td>
                <td class="td3">Baskı Tarihi:&nbsp; </td>
                <td>
                    <asp:TextBox ID="txt_btarihi" runat="server" CssClass="txt" TextMode="DateTime"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="td3">Baskı Sayısı:&nbsp; </td>
                <td>
                    <asp:TextBox ID="txt_bsayisi" runat="server" CssClass="txt" TextMode="Number"></asp:TextBox>
                </td>
                <td class="td3">ISBN Numarası:&nbsp; </td>
                <td>
                    <asp:TextBox ID="txt_isbn" runat="server" CssClass="txt" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="td3">Kitabın Dili:&nbsp; </td>
                <td>
                    <asp:TextBox ID="txt_dil" runat="server" CssClass="txt"></asp:TextBox>
                </td>
                <td class="td3">Cilt Tipi:&nbsp; </td>
                <td>
                    <asp:TextBox ID="txt_cilt" runat="server" CssClass="txt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="td3">Kağıt Tipi:&nbsp; </td>
                <td>
                    <asp:TextBox ID="txt_kagit" runat="server" CssClass="txt"></asp:TextBox>
                </td>
                <td class="td3">Boyut1:&nbsp; </td>
                <td>
                    <asp:TextBox ID="txt_byt1" runat="server" CssClass="txt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="td3">Boyut2:&nbsp; </td>
                <td>
                    <asp:TextBox ID="txt_byt2" runat="server" CssClass="txt"></asp:TextBox>
                </td>
                <td class="td3">Resim:&nbsp; </td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="txt" />
                </td>
            </tr>
            <tr>
                <td class="td3">Kategorisi:&nbsp; </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="txt">
                    </asp:DropDownList>
                </td>
                <td class="td3">Miktarı:&nbsp; </td>
                <td>
                    <asp:TextBox ID="txt_miktar" runat="server" CssClass="txt"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table>
            <tr>
                <td class="td3">İçerik:&nbsp; </td>
                <td>
                    <asp:TextBox ID="txt_icerik" runat="server" CssClass="txticerik" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="td3">&nbsp;</td>
                <td>
                    <asp:Button ID="btn_update" runat="server" CssClass="btn" Text="GÜNCELLE" OnClick="btn_update_Click"/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                    <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="Resim Yükleyiniz" Visible="False"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" CssClass="auto-style1" Text="Alanları Boş Bırakmayınız" Visible="False"></asp:Label>
                    </strong>
                </td>
            </tr>
        </table>
    </asp:Panel>
    
</asp:Content>
