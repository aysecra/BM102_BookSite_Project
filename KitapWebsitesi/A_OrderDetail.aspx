<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="A_OrderDetail.aspx.cs" Inherits="KitapWebsitesi.A_OrderDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">


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

        .dtl {
            width: 100%;
        }

        
.panel1 {
    width: 100%;
    height: 50px;
    background-color: #006699;
}

.table1 {
    height: 50px;
    width: 100%;
}

        .auto-style11 {
            width: 100%;
            text-align: center;
            color: #CCCCCC;
            font-size: 24pt;
        }

        .auto-style12 {
        font-weight: bold;
        background-color: #CCCCCC;
    }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel3" runat="server" CssClass="panel1">
        <table class="table1">
            <tr>
                <td class="auto-style11" style="font-family: Calibri"><strong>SİPARİŞ GÜNCELLE</strong></td>
            </tr>
        </table>
    </asp:Panel>

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
    <table class="dtl">
        <tr>
            <td style="font-family: Calibri; color: #CCCCCC">Sipariş durumu:<asp:RadioButtonList ID="rdbList_durum" runat="server">
                <asp:ListItem>Paketlendi</asp:ListItem>
                <asp:ListItem>Kargolandı</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="auto-style10" style="font-family: Calibri; color: #CCCCCC"><strong>
                <asp:Button ID="btn_update" runat="server" CssClass="auto-style12" OnClick="btn_update_Click" Text="Güncelle" Width="237px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
