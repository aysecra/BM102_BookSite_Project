<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="U_ChangePassword.aspx.cs" Inherits="KitapWebsitesi.U_ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">


        .auto-style11 {
            color: #DCDDD8;
            font-size: x-large;
            font-family: Calibri;
            text-align: center;
        }
        .auto-style12 {
            text-align: right;
        }
        .auto-style13 {
            color: #354B5E;
            font-weight: bold;
            background-color: #C8C9C5;
        }
        .auto-style14 {
            text-align: right;
            height: 30px;
            width:50%;
        }
        .auto-style15 {
            height: 30px;
        }
        .auto-style16 {
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style11"><strong>ŞİFRE DEĞİŞTİR</strong></td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style12" style="font-family: Calibri; color: #C8C9C5; font-size: medium"><strong>Yeni Şİfre:</strong></td>
            <td>
                <asp:TextBox ID="txt_password1" runat="server" Height="20px" Width="250px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12" style="font-family: Calibri; color: #C8C9C5; font-size: medium"><strong>Yeni Şİfre Tekrar:</strong></td>
            <td>
                <asp:TextBox ID="txt_password2" runat="server" MaxLength="20" Width="250px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14" style="font-family: Calibri; color: #C8C9C5; font-size: medium"></td>
            <td class="auto-style15"><strong>
                <asp:Button ID="btn_password" runat="server" CssClass="auto-style13" Text="ŞİFRE DEĞİŞTİR" Width="146px" OnClick="btn_password_Click" />
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style14" style="font-family: Calibri; color: #C8C9C5; font-size: medium">&nbsp;</td>
            <td class="auto-style15"><strong>
                <asp:Label ID="lbl_space" runat="server" CssClass="auto-style16" Font-Names="Calibri" Text="Alanları boş bırakmayınız" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbl_equals" runat="server" CssClass="auto-style16" Font-Names="Calibri" Text="Şifreler aynı değil" Visible="False"></asp:Label>
                </strong></td>
        </tr>
    </table>
</asp:Content>
