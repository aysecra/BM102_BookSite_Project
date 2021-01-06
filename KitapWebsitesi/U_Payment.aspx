<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="U_Payment.aspx.cs" Inherits="KitapWebsitesi.U_Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            color: #DCDDD8;
            font-size: x-large;
            font-family: Calibri;
        }

        .text {
            width: 100px;
            font-family: Calibri;
            text-align: right;
            font-size: 18px;
            color: #DCDDD8;
            font-weight: bold;
            border-style: solid;
            border-color: #DCDDD8;
            border-width: 2px;
        }

        .label {
            font-family: Calibri;
            text-align: left;
            font-size: 18px;
            color: #DCDDD8;
            font-weight: bold;
            width: 200px;
            border-style: solid;
            border-color: #DCDDD8;
            border-width: 2px;
        }

        .txb {
            font-family: Calibri;
            width: 350px;
            font-size: 16px;
            background-color: #DCDDD8;
        }

        .txbM {
            font-family: Calibri;
            font-size: 16px;
            width: 350px;
            height: 100px;
            background-color: #DCDDD8;
        }


        .btn {
            font-weight: bold;
            color: #354B5E;
            background-color: #C8C9C5;
        }

        .auto-style12 {
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style11"><strong>ÖDEME İŞLEMLERİ - BİLGİ ONAYLAMA</strong></td>
        </tr>
    </table>

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
            <td class="text">TC Numarası: </td>
            <td>
                <asp:TextBox ID="txt_tc" runat="server" CssClass="txb"></asp:TextBox>
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
            <td class="text">Adres:</td>
            <td class="label">
                <asp:TextBox ID="txt_adres" runat="server" TextMode="MultiLine" CssClass="txbM" Width="350px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text">&nbsp;</td>
            <td class="label">
                <strong>
                    <asp:Button ID="btn_onayla" runat="server" CssClass="btn" Text="ONAYLA" Width="200px" OnClick="btn_onayla_Click" Height="30px" />
                    &nbsp;</strong><asp:Label ID="lbl_control" runat="server" CssClass="auto-style12" Text="Alanları boş bırakmayınız" Visible="False"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>
