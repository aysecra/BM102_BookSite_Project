<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="A_AdminRegistration.aspx.cs" Inherits="KitapWebsitesi.A_AdminRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="A_BookSettingsCss.css" rel="stylesheet" />
    <style type="text/css">
        .panel1 {
            width: 100%;
            height: 50px;
            background-color: #006699;
        }

        .table1 {
            height: 50px;
            width: 100%;
        }

        .auto-style1 {
            font-family: Calibri;
            font-size: 24px;
            text-align: center;
            color: #CCCCCC;
            font-weight: bold;
            width: 1053px;
        }

        .auto-style2 {
            width: 100%;
        }

        .auto-style3 {
            font-family: Calibri;
            font-size: 13pt;
            text-align: right;
            color: #CCCCCC;
            font-weight: bold;
            width: 429px;
        }

        .auto-style4 {
            font-weight: bold;
            background-color: #CCCCCC;
        }

        .auto-style5 {
            color: #FF0000;
        }

        .auto-style6 {
            color: #00FF00;
        }
    .auto-style7 {
        font-family: Calibri;
        font-size: large;
        text-align: center;
        color: #CCCCCC;
        font-weight: bold;
        width: 427px;
    }
    .auto-style8 {
        text-align: left;
    }
    .auto-style9 {
            font-family: Calibri;
            font-size: large;
            text-align: right;
            color: #CCCCCC;
            font-weight: bold;
            width: 427px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel3" runat="server" CssClass="panel1">
        <table class="table1">
            <tr>
                <td class="auto-style1">ADMİN KAYIT</td>
            </tr>
        </table>
    </asp:Panel>
    <br />
    <table class="auto-style2">
        <tr>
            <td class="auto-style9">Kullanıcı İsmi (*adm_ ile başlasın): </td>
            <td class="auto-style8">
                <asp:TextBox ID="txt_name" runat="server" CssClass="txt"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Şifre:</td>
            <td class="auto-style8">
                <asp:TextBox ID="txt_password" runat="server" CssClass="txt" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style8">
                <strong>
                    <asp:Button ID="btn_register" runat="server" CssClass="auto-style4" Height="36px" OnClick="btn_register_Click" Text="KAYDET" Width="141px" />
                    &nbsp;
                <asp:Label ID="lbl_name" runat="server" CssClass="auto-style5" Font-Names="Calibri" Text="Kullanıcı ismi *adm_ ile başlamalı" Visible="False"></asp:Label>
                    &nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbl_passw" runat="server" CssClass="auto-style5" Font-Names="Calibri" Text="Şifre kısmı boş bırakılamaz" Visible="False"></asp:Label>
                <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbl_register" runat="server" CssClass="auto-style6" Font-Names="Calibri" Text="Kayıt yapılmıştır" Visible="False"></asp:Label>
                </strong>
            </td>
        </tr>
    </table>
</asp:Content>
