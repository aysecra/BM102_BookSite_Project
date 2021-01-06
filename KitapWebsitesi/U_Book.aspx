<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="U_Book.aspx.cs" Inherits="KitapWebsitesi.U_Book" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            width: 309px;
            text-align: center;
        }

        .auto-style9 {
            text-align: left;
        }

        .head {
            width: 847px;
            font-size: xx-large;
            color: #C8C9C5;
            font-family: Calibri;
        }

        .auto-style10 {
            font-size: large;
            color: #C8C9C5;
            font-family: Calibri;
        }

        .auto-style12 {
            color: #C8C9C5;
            font-size: large;
            font-family: Calibri;
        }
        .auto-style13{
            margin-left:2.5%;
        }

        .auto-style14 {
            font-size: medium;
            color: #C8C9C5;
            font-weight: bold;
            background-color: #354B5E;
        }
        .txb_command{
            margin-left:5%;
        }
        .auto-style15 {
            color: #00FF00;
        }
        .auto-style16 {
            font-size: x-large;
        }
        .auto-style17 {
            font-size: x-large;
            color: #C8C9C5;
            font-family: Calibri;
            text-align: center;
        }
        .auto-style18 {
            font-size: large;
            color: #C8C9C5;
            font-family: Calibri;
            text-align: center;
        }
        .auto-style19 {
            margin-left: 5%;
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;<table class="auto-style1">
        <tr>
            <td>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style8">
                            <asp:Image ID="Image2" runat="server" Height="300px" Width="250px" />
                        </td>
                        <td class="auto-style9">&nbsp;&nbsp; <strong>
                            <asp:Label ID="lb_bookname" runat="server" CssClass="head" Text="Label"></asp:Label>
                        </strong>&nbsp;<br />
                            &nbsp;&nbsp; <strong>
                                <em>
                                    <asp:Label ID="lb_oriname" runat="server" CssClass="auto-style12" Text="Label" Visible="False"></asp:Label>
                                </em>
                            </strong>
                            <br />
                            &nbsp;&nbsp; <strong>
                                <span class="auto-style12">Yazar:</span>
                                <asp:Label ID="lb_yazar" runat="server" CssClass="auto-style10" Text="Label"></asp:Label>
                                <br />
                                &nbsp;&nbsp;
                            <span class="auto-style12">Yayınevi: </span>&nbsp;<asp:Label ID="lb_yayinevi" runat="server" CssClass="auto-style10" Text="Label"></asp:Label>
                                <asp:Panel ID="Panel2" runat="server" Visible="False">
                                    &nbsp;&nbsp; <span class="auto-style12">Çevirmen:&nbsp; </span>
                                    <asp:Label ID="lb_cevirmen" runat="server" CssClass="auto-style12" Text="Label"></asp:Label>
                                </asp:Panel>
                                &nbsp;&nbsp; <span class="auto-style12">Puan:
                                <asp:Label ID="lb_puan" runat="server" CssClass="auto-style12" Text="Label"></asp:Label>
                                    &nbsp;</span><br />
                                <br />
                                &nbsp;&nbsp; <span class="auto-style12">Fiyat:&nbsp; </span>
                                <asp:Label ID="lb_fiyat" runat="server" CssClass="auto-style12" Text="Label"></asp:Label>
                                <asp:Image ID="Image3" runat="server" Height="13px" ImageUrl="~/Icon/tl1.png" Width="13px" />
                            <br />
                            <br />
&nbsp;&nbsp;
                            <asp:Button ID="btn_addBasket" runat="server" Text="Sepete Ekle" BorderColor="#C8C9C5" BorderStyle="Solid" CssClass="auto-style14" Height="30px" Width="200px" OnClick="btn_addBasket_Click" />
                            </strong>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>

                <asp:Panel ID="Panel1" CssClass="auto-style13" runat="server" Width="90%">
                    <strong>&nbsp;&nbsp;&nbsp;
                   <asp:Label ID="lb_icerik" runat="server" CssClass="auto-style10" Text="Label"></asp:Label>
                    </strong>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp;&nbsp; <span class="auto-style12">&nbsp;&nbsp;&nbsp; Sayfa :
                <asp:Label ID="lb_sayfa" runat="server" CssClass="auto-style10" Text="Label"></asp:Label>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Baskı Tarihi :
                <asp:Label ID="lb_baski" runat="server" CssClass="auto-style10" Text="Label"></asp:Label>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Baskı sayısı :
                <asp:Label ID="lb_baskisayisi" runat="server" CssClass="auto-style10" Text="Label"></asp:Label>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ISBN Numarası :
                <asp:Label ID="lb_isbn" runat="server" CssClass="auto-style10" Text="Label"></asp:Label>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kitabın Dili :
                <asp:Label ID="lb_dil" runat="server" CssClass="auto-style10" Text="Label"></asp:Label>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cilt Tipi :
                <asp:Label ID="lb_cilt" runat="server" CssClass="auto-style10" Text="Label"></asp:Label>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kağıt Tipi :
                <asp:Label ID="lb_kagit" runat="server" CssClass="auto-style10" Text="Label"></asp:Label>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Boyut :
                <asp:Label ID="lb_boyut1" runat="server" CssClass="auto-style10" Text="Label"></asp:Label>
                &nbsp;X
                <asp:Label ID="lb_boyut2" runat="server" CssClass="auto-style10" Text="Label"></asp:Label>
            </span>
            </td>
        </tr>
    </table>
    &nbsp;
    <table class="auto-style1">
        <tr>
            <td class="auto-style17"><strong>Yorum Yap</strong></td>
        </tr>
        <tr>
            <td>
                <strong>
                <asp:TextBox ID="TextBox1" runat="server" Height="100px" TextMode="MultiLine" Width="90%" Font-Names="Calibri" CssClass="auto-style19" ></asp:TextBox>
                </strong>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; <strong>
                            <asp:Button ID="btn_command" runat="server" Text="Yorum Yap" BorderColor="#C8C9C5" BorderStyle="Solid" CssClass="auto-style14" Height="30px" Width="200px" OnClick="btn_command_Click" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbl_islem" runat="server" CssClass="auto-style15" Font-Names="Calibri" Text="Yorumunuz alınmıştır. Yorumunuz onaylandıktan sonra eklenecektir." Visible="False"></asp:Label>
                            </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">
                <strong><span class="auto-style16">Yorumlar</span>&nbsp;</strong></td>
        </tr>
        <tr>
            <td class="auto-style10">
                <asp:DataList ID="DataList2" runat="server" Width="90%" CssClass="txb_command">
                    <ItemTemplate>
                        <table class="auto-style1">
                            <tr>
                                <td><strong>
                                    <asp:Label ID="lbl_command1" runat="server" Text='<%# Eval("YorumGonderen") %>'></asp:Label>
                                    </strong>
                                    <br />
                                    <asp:Label ID="lbl_command2" runat="server" Text='<%# Eval("YorumIcerik") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
