<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="U_Basket.aspx.cs" Inherits="KitapWebsitesi.U_Basket" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .panelTitle {
            width: 100%;
            height: 50px;
            background-color: #354B5E;
            font-family: Calibri;
            font-size: 24pt;
            color: #CCCCCC;
            text-align: center;
            font-weight: bold;
        }

        .basketContent {
            width: 95%;
            margin-left: 2.5%;
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
        .auto-style11 {
            text-align: right;
        }
        .auto-style12 {
            font-weight: bold;
            color: #354B5E;
            margin-left: 0px;
            background-color: #C8C9C5;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel3" runat="server" CssClass="basketContent">
    <asp:Panel ID="Panel1" runat="server" CssClass="panelTitle">
        SEPET
    </asp:Panel>
        <table class="table" border="1">
            <tr>
                <td class="tdKitap"><strong>KİTAP</strong></td>
                <td class="tdAdet"><strong>ADET</strong></td>
                <td class="tdBirimToplam"><strong>BİRİM FİYAT</strong></td>
                <td class="tdBirimToplam"><strong>TOPLAM FİYAT</strong></td>
                <td></td>
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
                            <a href="U_Basket.aspx?cikarid=<%#Eval("SepetId") %> &islem=cikar ">
                            <asp:Image ID="img_minus" runat="server" Height="20px" ImageUrl="~/Icon/minus.png" Width="20px" /></a>
                            <strong>
                            <asp:Label ID="lbl_miktar" runat="server" Text='<%# Eval("SepetMiktar") %>'></asp:Label>
                        </strong>
                            <a href="U_Basket.aspx?ekleid=<%#Eval("SepetId") %> &islem=ekle" >
                            <asp:Image ID="img_plus" runat="server" Height="20px" ImageUrl="~/Icon/plus.png" Width="20px" /></a>
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
                        <td>
                            </strong><a href="U_Basket.aspx?islem=sil&silid=<%#Eval("SepetId") %>"><strong>Kaldır</strong></a></td>
                    </tr>
                </table>

            </ItemTemplate>
        </asp:DataList>
        <table class="table">
             <tr>
                <td class="auto-style11" style="font-family: Calibri; color: #C8C9C5"> <strong>Toplam Fiyat:
                    <asp:Label ID="lbl_sum" runat="server"></asp:Label>
                    </strong> </td>
            </tr>
            <tr>
                <td> </td>
            </tr>
            <tr>
                <td class="auto-style11"><strong>
                    <asp:Button ID="btn_payment" runat="server" CssClass="auto-style12" OnClick="btn_payment_Click" Text="Ödeme Yap" Width="244px" Height="30px" />
                    </strong></td>
            </tr>
        </table>
        <br />
        
    </asp:Panel>
    <br />
</asp:Content>
