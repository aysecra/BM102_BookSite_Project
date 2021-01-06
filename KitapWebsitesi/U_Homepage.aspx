<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="U_Homepage.aspx.cs" Inherits="KitapWebsitesi.U_Homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="UsersCss.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style6 {
            color: #C8C9C5;
            font-size: x-large;
            font-family: Calibri
        }

        .td {
            text-align: right;
            color: #C8C9C5;
        }

        .auto-style11 {
            color: #DCDDD8;
            font-size: x-large;
            font-family: Calibri;
        }
        .auto-style12 {
            color: #C8C9C5;
            font-weight: bold;
            background-color: #354B5E;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style11"><strong>YENİ ÇIKANLAR</strong></td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="dl_yeniC" runat="server" RepeatColumns="7" RepeatDirection="Horizontal" Width="100%">
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
                                        <td class="tdCenter">
                                            <strong>
                                                <asp:Label ID="Label2" runat="server" CssClass="bookLabel" Text='<%# (Eval("KitapAd").ToString().Length>=30)?Eval("KitapAd").ToString().Substring(0,30) + "...":Eval("KitapAd") %>'></asp:Label>
                                            </strong>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="tdCenter">
                                            <strong>
                                            <asp:Label ID="Label3" runat="server" CssClass="bookCost" Text='<%# Eval("KitapFiyat") %>'></asp:Label>
                                            </strong>
                                            <asp:Image ID="Image2" runat="server" Height="11px" ImageUrl="~/Icon/tl2.png" Width="11px" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="tdCenter">
                                            <asp:Button ID="btn_sepet1" runat="server" Text="Sepete Ekle"  CssClass="auto-style12" PostBackUrl='<%#string.Format("~/U_Homepage.aspx?addBasket={0}", Eval("KitapId")) %>' OnClick="btn_sepet1_Click" />
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
            <td class="td">

                <a href="U_NewReleases.aspx"><strong>Devamı İçin Tıklayınız...</strong></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        </tr>
        <tr>
            <td class="auto-style11">

                <strong>ÇOK SATANLAR</strong></td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="dl_cokS" runat="server" RepeatColumns="7" Width="100%">
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
                                        <td class="tdCenter">
                                            <strong>
                                                <asp:Label ID="Label2" runat="server" CssClass="bookLabel" Text='<%#(Eval("KitapAd").ToString().Length>=30)?Eval("KitapAd").ToString().Substring(0,30) + "...":Eval("KitapAd") %>'></asp:Label>
                                            </strong>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="tdCenter">
                                            <strong>
                                            <asp:Label ID="Label4" runat="server" CssClass="bookCost" Text='<%# Eval("KitapFiyat") %>'></asp:Label>
                                            </strong><a href='U_Book.aspx?id=<%#Eval("KitapId") %>' title='<%#Eval("KitapAd") %>'>
                                            <asp:Image ID="Image2" runat="server" Height="11px" ImageUrl="~/Icon/tl2.png" Width="11px" />
                                            </a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="tdCenter">
                                            <asp:Button ID="btn_sepet2" runat="server" Text="Sepete Ekle" CssClass="auto-style12" PostBackUrl='<%#string.Format("~/U_Homepage.aspx?addBasket={0}", Eval("KitapId")) %>' OnClick="btn_sepet2_Click" />
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
            <td class="td">

                <a href="U_BestSellers.aspx"><strong>Devamı İçin Tıklayınız...</strong></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
