<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="U_Payment2.aspx.cs" Inherits="KitapWebsitesi.U_Payment2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style11 {
            color: #DCDDD8;
            font-size: x-large;
            font-family: Calibri;
        }

        .table {
            width: 100%;
        }

        .tdKitap {
            width: 300px;
            font-family:Calibri;
            width: 300px;
            color: #C8C9C5;
        }

        .tdAdet {
            width: 150px;
            text-align: center;
            font-family:Calibri;
            width: 300px;
            color: #C8C9C5;
        }

        .tdBirimToplam {
            width: 250px;
            font-family:Calibri;
            width: 300px;
            color: #C8C9C5;
        }

        .auto-style10 {
            font-family: Calibri;
            width: 100%;
            color: #C8C9C5;
        }
        
        .auto-style12 {
            color: #DCDDD8;
            font-size: 18pt;
            font-family: Calibri;
        }
        
        .text {
            width: 100px;
            font-family: Calibri;
            text-align: right;
            font-size: 18px;
            color: #DCDDD8;
            font-weight: bold;
            border-style: solid;
            border-color: #DCDDD8;
            border-width: 2px;
        }

        .label {
            font-family: Calibri;
            text-align: left;
            font-size: 18px;
            color: #DCDDD8;
            font-weight: bold;
            width: 200px;
            border-style: solid;
            border-color: #DCDDD8;
            border-width: 2px;
        }

        .txb {
            font-family: Calibri;
            width: 350px;
            font-size: 16px;
            background-color: #DCDDD8;
        }

        .txbM {
            font-family: Calibri;
            font-size: 16px;
            width: 350px;
            height: 100px;
            background-color: #DCDDD8;
        }


        .btn {
            font-weight: bold;
            color: #354B5E;
            background-color: #C8C9C5;
        }

        .auto-style14 {
            text-align: left;
            height: 23px;
            color: #C8C9C5;
        }

        .auto-style15 {
            color: #FF0000;
        }

        .auto-style16 {
            text-align: center;
            height: 23px;
            color: #C8C9C5;
        }

        .auto-style17 {
            color: #DCDDD8;
            font-size: large;
            font-family: Calibri;
            text-align: right;
        }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style11"><strong>ÖDEME İŞLEMLERİ - KARGOYA VERİLME/SON İŞLEM</strong></td>
        </tr>
    </table>

    <table class="auto-style1">
        <tr>
            <td class="auto-style12">Satın Alınacaklar </td>
        </tr>
    </table>

        <table class="table" border="1" >
            <tr>
                <td class="tdKitap"><strong>KİTAP</strong></td>
                <td class="tdAdet"><strong>ADET</strong></td>
                <td class="tdBirimToplam" ><strong >BİRİM FİYAT</strong></td>
                <td class="tdBirimToplam" ><strong>TOPLAM FİYAT</strong></td>
            </tr>
        </table>
        
        <asp:DataList ID="DataList2" runat="server" Width="100%">
            <ItemTemplate>

                <table class="auto-style10" border="1">
                    <tr>
                        <td class="tdKitap">
                            <strong>
                            <asp:Label ID="lbl_kitap" runat="server" Text='<%# Eval("KitapAd") %>'></asp:Label>
                            </strong>
                        </td>
                        <td class="tdAdet">
                            <strong>
                            <asp:Label ID="lbl_miktar" runat="server" Text='<%# Eval("SepetMiktar") %>'></asp:Label>
                        </strong>
                            </td>
                        <td class="tdBirimToplam">
                            <strong>
                            <asp:Label ID="lbl_birimf" runat="server" Text='<%# Eval("KitapFiyat") %>'></asp:Label>
                            </strong>
                        </td>
                        <td class="tdBirimToplam">
                            <strong>
                            <asp:Label ID="lbl_toplamf" runat="server" Text='<%#Eval("SepetFiyat") %>'></asp:Label>
                            </strong>
                        </td>
                    </tr>
                </table>

            </ItemTemplate>
        </asp:DataList>
                
        <table class="table" __designer:mapid="2ab">
             <tr __designer:mapid="2ac">
                <td class="auto-style17" style="font-family: Calibri; color: #C8C9C5" __designer:mapid="2ad"> <strong __designer:mapid="2ae">Toplam Fiyat:
                    <asp:Label ID="lbl_sum" runat="server"></asp:Label>
                    </strong> </td>
            </tr>
        </table>
                
    <table class="auto-style1">
        <tr>
            <td class="auto-style12">Kişisel Bilgiler</td>
        </tr>
    </table>

    <table class="auto-style1">
        <tr>
            <td class="text">Ad: </td>
            <td class="label">
                <asp:Label ID="lbl_ad" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="text">Soyad:</td>
            <td class="label">
                <asp:Label ID="lbl_soyad" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="text">Mail:</td>
            <td class="label">
                <asp:Label ID="lbl_mail" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="text">TC Numarası: </td>
            <td class="label">
                <asp:Label ID="lbl_tc" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="text">İl:</td>
            <td class="label">
                <asp:Label ID="lbl_il" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="text">İlçe:</td>
            <td class="label">
                <asp:Label ID="lbl_ilce" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="text">Telefon Numarası:</td>
            <td class="label">
                <asp:Label ID="lbl_tel" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="text">Adres:</td>
            <td class="label">
                <asp:Label ID="lbl_adres" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>

        <table class="table">
            <tr>
                <td class="auto-style14" style="font-family: Calibri"><strong>Ödeme işlemleri olarak sadece kapıda ödeme bulunmaktadır.</strong></td>
            </tr>
            <tr>
                <td class="auto-style14" style="font-family: Calibri"><strong>Tercih edilen kargo şirketi:</strong><asp:RadioButtonList ID="rdbList_kargo" runat="server">
                    <asp:ListItem>Aras Kargo</asp:ListItem>
                    <asp:ListItem>Yurtiçi Kargo</asp:ListItem>
                    <asp:ListItem>MNG Kargo</asp:ListItem>
                    <asp:ListItem>Ptt Kargo</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style14" style="font-family: Calibri"><strong>
                    <asp:Button ID="btn_buy" runat="server" BorderColor="#C8C9C5" BorderStyle="Solid" CssClass="btn" Height="36px" Text="SATIN AL" Width="280px" OnClick="btn_buy_Click" />
                    &nbsp;&nbsp;
                    <asp:Label ID="lbl_durum" runat="server" Text="Label" Visible="False"></asp:Label>
                    &nbsp;&nbsp;
                    <asp:Label ID="lbl_kargo" runat="server" Text="Tercih edilen kargo şirketini seçiniz" CssClass="auto-style15" Visible="False"></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style16" style="font-family: Calibri"><strong>
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                    </strong></td>
            </tr>
    </table>

        </asp:Content>
