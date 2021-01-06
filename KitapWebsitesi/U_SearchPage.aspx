<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="U_SearchPage.aspx.cs" Inherits="KitapWebsitesi.U_SearchPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">


        .auto-style11 {
            color: #DCDDD8;
            font-size: x-large;
            font-family: Calibri;
        }
        .bookList {
    background-color: #DCDDD8;
    width: 200px;
    height: 320px;
    margin-top: 10px;
}

.tdCenter {
    text-align: center;
}

.bookLabel {
    color: #354B5E;
    font-size: small;
    font-family: Calibri;
}

.bookCost {
    color: #354B5E;
    font-size: medium;
    font-family: Calibri;
}

        .auto-style12 {
            color: #C8C9C5;
            font-weight: bold;
            background-color: #354B5E;
        }
    
        .td {
            text-align: right;
            color: #C8C9C5;
        }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style11"><strong>ARAMA SONUCU:&nbsp;
                <asp:Label ID="lbl_sum" runat="server" Text="Sonuç bulunamadı" Visible="False"></asp:Label>
                </strong></td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="dl_search" runat="server" RepeatColumns="7" RepeatDirection="Horizontal" Width="100%">
                    <ItemTemplate>
                        <a href="U_Book.aspx?id=<%#Eval("KitapId") %>" title="<%#Eval("KitapAd") %>">
                        <div class="bookList">
                            <table class="auto-style1">
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="tdCenter">
                                        <asp:Image ID="Image1" runat="server" Height="200px" Width="150px" ImageUrl='<%# Eval("KitapResim") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="tdCenter"><strong>
                                        <asp:Label ID="Label2" runat="server" CssClass="bookLabel" Text='<%# (Eval("KitapAd").ToString().Length>=30)?Eval("KitapAd").ToString().Substring(0,30) + "...":Eval("KitapAd") %>'></asp:Label>
                                        </strong></td>
                                </tr>
                                <tr>
                                    <td class="tdCenter"><strong>
                                        <asp:Label ID="Label3" runat="server" CssClass="bookCost" Text='<%# Eval("KitapFiyat") %>'></asp:Label>
                                        </strong>
                                        <asp:Image ID="Image2" runat="server" Height="11px" ImageUrl="~/Icon/tl2.png" Width="11px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="tdCenter">
                                        <asp:Button ID="btn_sepet1" runat="server" Text="Sepete Ekle"  CssClass="auto-style12" PostBackUrl='<%#string.Format("~/U_SearchPage.aspx?addBasket={0}", Eval("KitapId")) %>' OnClick="btn_sepet1_Click" />
                                    </td>
                                </tr>
                            </table>
                        </div>
                        </a>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td class="td"> </td>
        </tr>
    </table>
</asp:Content>
