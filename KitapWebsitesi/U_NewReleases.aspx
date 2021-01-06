<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="U_NewReleases.aspx.cs" Inherits="KitapWebsitesi.U_NewReleases" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="UsersCss.css" rel="stylesheet" />
    <style type="text/css">
        .title {
            font-family: Calibri;
            text-align: center;
            font-size: x-large;
            color: #C8C9C5;
        }

        .auto-style8 {
            color: #354B5E;
            font-size: small;
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
            <td class="title"><strong>YENİ ÇIKANLAR</strong></td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="DataList2" runat="server" RepeatColumns="7" Width="100%">
                    <ItemTemplate>
                        <a href="U_Book.aspx?id=<%#Eval("KitapId") %>" title="<%#Eval("KitapAd")%>">
                            <div class="bookList">

                                <table class="auto-style1">
                                    <tr>
                                        <td class="auto-style5">
                                            <asp:Image ID="Image1" runat="server" Height="200px" Width="150px" ImageUrl='<%# Eval("KitapResim") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style5"><strong>
                                            <asp:Label ID="Label2" runat="server" CssClass="auto-style8" Text='<%# (Eval("KitapAd").ToString().Length>=30)?Eval("KitapAd").ToString().Substring(0,30) + "...":Eval("KitapAd") %>'></asp:Label>
                                        </strong></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style5"><strong>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("KitapFiyat") %>' CssClass="bookCost"></asp:Label>
                                            <a href='U_Book.aspx?id=<%#Eval("KitapId") %>' title='<%#Eval("KitapAd") %>'>
                                            <asp:Image ID="Image2" runat="server" Height="11px" ImageUrl="~/Icon/tl2.png" Width="11px" />
                                            </a></strong></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style5"><a href='U_Book.aspx?id=<%#Eval("KitapId") %>' title='<%#Eval("KitapAd") %>'><strong>
                                            
                                            </strong>
                                            <asp:Button ID="btn_sepet" runat="server" Text="Sepete Ekle" CssClass="auto-style12" PostBackUrl='<%#string.Format("~/U_NewReleases.aspx?addBasket={0}", Eval("KitapId")) %>' OnClick="btn_sepet_Click" />
                                            </a></td>
                                    </tr>
                                </table>

                            </div>
                        </a>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
