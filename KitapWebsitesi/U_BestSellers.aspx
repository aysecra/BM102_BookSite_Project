<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="U_BestSellers.aspx.cs" Inherits="KitapWebsitesi.U_BestSellers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="UsersCss.css" rel="stylesheet" />
    <style type="text/css">
        .title {
            text-align: center;
            font-size: x-large;
            color: #C8C9C5;
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
            <td class="title"><strong>ÇOK SATANLAR</strong></td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="DataList2" runat="server" RepeatColumns="7" Width="100%">
                    <ItemTemplate>
                        <a href="U_Book.aspx?id=<%#Eval("KitapId") %>" title="<%#Eval("KitapAd")%>" >
                            <div class="bookList">
                                <table class="auto-style1">
                                    <tr>
                                        <td class="auto-style5">
                                            <asp:Image ID="Image1" runat="server" Height="200px" Width="150px" ImageUrl='<%# Eval("KitapResim") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style5"><strong>
                                            <asp:Label ID="Label2" runat="server" CssClass="bookLabel" Text='<%# (Eval("KitapAd").ToString().Length>=30)?Eval("KitapAd").ToString().Substring(0,30) + "...":Eval("KitapAd") %>'></asp:Label>
                                        </strong></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style5"><strong>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("KitapFiyat") %>' CssClass="bookCost"></asp:Label>
                                            </strong><a href='U_Book.aspx?id=<%#Eval("KitapId") %>' title='<%#Eval("KitapAd") %>'>
                                            <asp:Image ID="Image2" runat="server" Height="11px" ImageUrl="~/Icon/tl2.png" Width="11px" />
                                            </a></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style5"><a href='U_Book.aspx?id=<%#Eval("KitapId") %>' title='<%#Eval("KitapAd") %>'><strong>
                                            
                                            </strong>
                                            <asp:Button ID="btn_sepet" runat="server" Text="Sepete Ekle" CssClass="auto-style12" OnClick="btn_sepet_Click" PostBackUrl='<%#string.Format("~/U_BestSellers.aspx?addBasket={0}", Eval("KitapId")) %>' />
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
