<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="U_OrderDetail.aspx.cs" Inherits="KitapWebsitesi.U_OrderDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            color: #DCDDD8;
            font-size: x-large;
            font-family: Calibri;
            text-align: center;
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
        
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style11"><strong>SİPARİŞ DETAYI</strong></td>
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
                
    <table class="auto-style1">
        <tr>
            <td class="auto-style11">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
