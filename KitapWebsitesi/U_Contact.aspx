<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="U_Contact.aspx.cs" Inherits="KitapWebsitesi.U_Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .title {
            text-align: center;
            font-size: x-large;
            color: #C8C9C5;
            font-family:Calibri;
        }
        .auto-style8 {
            text-align: right;
            font-size: large;
            width: 488px;
        }
        .auto-style9 {
            text-align: left;
        }
        .auto-style10 {
            text-align: right;
            font-size: large;
            height: 26px;
            width: 488px;
        }
        .auto-style11 {
            text-align: left;
            height: 26px;
        }
        .auto-style12 {
            font-weight: bold;
            color: #354B5E;
        }
        .auto-style13 {
            font-size: medium;
        }
        .auto-style15 {
            color: #00FF00;
            font-size: large;
        }
        .auto-style16 {
            color: #FF0000;
            font-size: large;
        }
        .auto-style17 {
            text-align: right;
            font-size: large;
            width: 488px;
            color: #354B5E;
            height: 31px;
        }
        .auto-style18 {
            text-align: left;
            height: 31px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="title">
        <strong>İLETİŞİM<br />
        </strong>
        <table class="auto-style1">
            <tr>
                <td class="auto-style10"><strong>Ad Soyad: </strong></td>
                <td class="auto-style18">
                    <asp:TextBox ID="txb_gonderen" runat="server" BackColor="#C8C9C5" Font-Bold="True" Font-Names="Calibri" Font-Size="13pt" ForeColor="#354B5E" Width="400px" CssClass="auto-style13"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10"><strong>Mail: </strong></td>
                <td class="auto-style9">
                    <asp:TextBox ID="txb_mail" runat="server" BackColor="#C8C9C5" Font-Bold="True" Font-Names="Calibri" Font-Size="13pt" ForeColor="#354B5E" Width="400px" CssClass="auto-style13" TextMode="Email"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10"><strong>Konu: </strong></td>
                <td class="auto-style11">
                    <asp:TextBox ID="txb_konu" runat="server" BackColor="#C8C9C5" Font-Bold="True" Font-Names="Calibri" Font-Size="13pt" ForeColor="#354B5E" Width="400px" CssClass="auto-style13"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8"><strong>Mesaj: </strong></td>
                <td class="auto-style9">
                    <asp:TextBox ID="txb_icerik" runat="server" BackColor="#C8C9C5" Font-Bold="True" Font-Names="Calibri" Font-Size="13pt" ForeColor="#354B5E" Height="200px" TextMode="MultiLine" Width="400px" CssClass="auto-style13"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style9">
                    <asp:Button ID="btn_gonder" runat="server" BackColor="#C8C9C5" CssClass="auto-style12" Font-Names="Calibri" Font-Size="13pt" OnClick="btn_gonder_Click" Text="GÖNDER" Width="200px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style9">
                    <strong>
                    <asp:Label ID="lbl_success" runat="server" CssClass="auto-style15" Font-Names="Calibri" Text="Mesaj başarıyla gönderildi" Visible="False"></asp:Label>
&nbsp;&nbsp;
                    <asp:Label ID="lbl_unsuccess" runat="server" CssClass="auto-style16" Font-Names="Calibri" Text="Alanları boş bırakmayınız" Visible="False"></asp:Label>
                    </strong>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
