<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="U_UserProfileUpdate.aspx.cs" Inherits="KitapWebsitesi.U_UserProfileUpdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="U_UserProfileCss.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style9 {
            color: #FF0000;
        }

        .auto-style10 {
            color: #00FF00;
        }

        .table2 {
            float: left;
            width: 50%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="panelUpdate">
        PROFİLİ DÜZENLE
    </asp:Panel>
    <table class="auto-style1">
        <tr>
            <td class="text">Ad: </td>
            <td class="label">
                <asp:TextBox ID="txt_ad" runat="server" CssClass="txb"></asp:TextBox>
            </td>
            <td class="text">Soyad:</td>
            <td class="label">
                <asp:TextBox ID="txt_soyad" runat="server" CssClass="txb"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text">Mail:</td>
            <td class="label">
                <asp:TextBox ID="txt_mail" runat="server" CssClass="txb"></asp:TextBox>
            </td>
            <td class="text">Fotoğraf:</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="txb" />
            </td>
        </tr>
        <tr>
            <td class="text">TC Numarası: </td>
            <td class="label">
                <asp:TextBox ID="txt_tc" runat="server" CssClass="txb"></asp:TextBox>
            </td>
            <td class="text">Doğrum Tarihi:</td>
            <td class="label">
                <asp:TextBox ID="txt_dt" runat="server" CssClass="txb"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text">İl:</td>
            <td class="label">
                <asp:DropDownList ID="dd_il" runat="server" CssClass="txb" AutoPostBack="True" OnSelectedIndexChanged="dd_il_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td class="text">İlçe:</td>
            <td class="label">
                <asp:DropDownList ID="dd_ilce" runat="server" CssClass="txb">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="text">Telefon Numarası:</td>
            <td class="label">
                <asp:TextBox ID="txt_tel" runat="server" CssClass="txb"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table class="table2">
        <tr>
            <td class="text">Adres:</td>
            <td class="label">
                <asp:TextBox ID="txt_adres" runat="server" TextMode="MultiLine" CssClass="txbM" Width="350px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text">&nbsp;</td>
            <td class="label">
                <strong>
                    <asp:Button ID="btn_guncelle" runat="server" CssClass="btn" Text="GÜNCELLE" Width="200px" OnClick="btn_ekle_Click" />
                </strong>
            </td>
        </tr>
        <tr>
            <td class="text">&nbsp;</td>
            <td class="label">&nbsp;</td>
        </tr>
    </table>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <strong>
        <asp:Label ID="Label1" runat="server" Text="Alanları boş bırakmayınız" CssClass="auto-style9" Visible="False"></asp:Label>
        <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="Bu mail ile zaten bir kayıt yapılmış" CssClass="auto-style9" Visible="False"></asp:Label>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Profil Düzenleme Başarılı" CssClass="auto-style10" Visible="False"></asp:Label>
    </strong>
</asp:Content>
