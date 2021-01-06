<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="U_UserProfile.aspx.cs" Inherits="KitapWebsitesi.U_UserSite" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="U_UserProfileCss.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="panelUpdate">
        PROFİL
    </asp:Panel>
    <asp:Panel ID="pnl_content" runat="server" CssClass="panelContent">
        <table class="table">
            <tr>
                <td class="tdImg">
                    <asp:Image ID="img_user" runat="server" Height="150px" Width="150px" BackColor="#C8C9C5" />
                </td>

                <td class="pd"><a href="U_UserProfileUpdate.aspx">Profili Düzenle</a><br />
                    <br />
                    <a href="U_ChangePassword.aspx">Şifre Değiştir</a><br />
                    <br />
                    <a href="U_OrderInformation.aspx">Sipariş Bilgileri</a></td>
            </tr>
        </table>
        <table class="table">
            <tr>
                <td class="text">Ad:</td>
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
                <td class="text">TC Numarası:</td>
                <td class="label">
                    <asp:Label ID="lbl_tc" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="text">Doğum Tarihi:</td>
                <td class="label">
                    <asp:Label ID="lbl_dt" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="text">Telefon Numarası:</td>
                <td class="label">
                    <asp:Label ID="lbl_tel" runat="server" Text="Label"></asp:Label>
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
        </table>
        <table class="table">
            <tr>
                <td class="text">Adres</td>
                <td class="label">
                    <asp:Label ID="lbl_adres" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
