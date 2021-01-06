<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="U_Login.aspx.cs" Inherits="KitapWebsitesi.U_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="UsersCss.css" rel="stylesheet" />

    <style type="text/css">
        .divLogin {
            background-color: #475F77;
            color: #DCDDD8;
            width: 400px;
            height: 500px;
            position: absolute;
            left: 36%;
            top: 30%;
            font-family: Calibri;
            font-weight: bold;
            border: solid;
            border-color: #DCDDD8;
        }

        .auto-style11 {
            text-align: left;
        }

        .auto-style14 {
            width: 90px;
        }

        .auto-style15 {
            text-align: center;
            width: 90px;
            font-size: medium;
        }

        .auto-style8 {
            font-weight: bold;
            font-family: Calibri;
            color: #DCDDD8;
            background-color: #354B5E;
            width: 250px;
            height: 30px;
            font-size: medium;
        }

        .auto-style17 {
            color: #C8C9C5;
            font-size: medium;
        }

        .auto-style18 {
            text-align: center;
            width: 90px;
            height: 29px;
            font-size: medium;
        }

        .auto-style19 {
            height: 29px;
        }

        .auto-style20 {
            font-weight: bold;
            font-family: Calibri;
            color: #C8C9C5;
            width: 250px;
            height: 30px;
            font-size: medium;
            background-color: #354B5E;
        }

        .auto-style21 {
            font-size: medium;
        }

        .auto-style22 {
            width: 90px;
            font-size: medium;
        }

        .auto-style23 {
            width: 400px;
            font-family: Calibri;
            font-size: medium;
            background-color: #DCDDD8;
            color: black;
        }

        .auto-style24 {
            font-size: x-large;
        }

        .auto-style16 {
            color: #FF0000;
            font-size: medium;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="divLogin">
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <span class="auto-style24">GİRİŞ YAP</span><br />
                    &nbsp;<br />
                </td>
            </tr>
            <tr>
                <td class="auto-style18">Mail:</td>
                <td class="auto-style19">
                    <asp:TextBox ID="txt_mail" runat="server" CssClass="auto-style23" Width="250px"></asp:TextBox>
                    <br />
                    &nbsp;<br />
                </td>
            </tr>
            <tr>
                <td class="auto-style15">Şifre:</td>
                <td>
                    <asp:TextBox ID="txt_sifre" runat="server" CssClass="auto-style23" TextMode="Password" Width="250px" ></asp:TextBox>
                    <br />
                    &nbsp;<br />
                </td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style11">&nbsp;<strong><asp:Button ID="btn_giris" runat="server" CssClass="auto-style20" OnClick="btn_giris0_Click" Text="GİRİŞ" />
                </strong><span class="auto-style21">&nbsp;&nbsp; </span>
                    <br class="auto-style21" />
                </td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td><a href="U_UserRegistration.aspx"><span class="auto-style17">Kayıt ol </span></a><span class="auto-style21">&nbsp;&nbsp;&nbsp;&nbsp; </span></td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td><strong>
                    <asp:Label ID="lbl_msy" runat="server" CssClass="auto-style16" Text="Mail ya da Şifre Yanlış" Visible="False"></asp:Label>
                    <br class="auto-style21" />
                    <asp:Label ID="lbl_abb" runat="server" CssClass="auto-style16" Text="Alanları Boş Bırakmayınız" Visible="False"></asp:Label>
                </strong>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
