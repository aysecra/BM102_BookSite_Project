<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="U_UserRegistration.aspx.cs" Inherits="KitapWebsitesi.U_UserRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="UsersCss.css" rel="stylesheet" />
    <style type="text/css">
        .panelUpdate {
            width: 100%;
            height: 50px;
            background-color: #354B5E;
            font-family: Calibri;
            font-size: 24pt;
            color: #DCDDD8;
            text-align: center;
            font-weight: bold;
        }
        .style7 {
            font-weight: bold;
            color: #354B5E;
            background-color: #C8C9C5;
        }
        .style8 {
            font-size: large;
            color: #FF0000;
        }
        .auto-style11 {
            font-size: large;
            color: #00FF00;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Panel ID="Panel1" runat="server" CssClass="panelUpdate">
        HESAP OLUŞTUR</asp:Panel>

    <table>
        <tr>
            <td class="tdCenter">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td class="tdReg">Profil Fotoğrafı: 
            </td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="txt" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="tdReg">Ad: </td>
            <td>
                <asp:TextBox ID="txt_ad" runat="server" CssClass="txt"></asp:TextBox>
            </td>
            <td class="tdReg">Soyad: </td>
            <td>
                <asp:TextBox ID="txt_soyad" runat="server" CssClass="txt"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="tdReg">Şifre:</td>
            <td>
                <asp:TextBox ID="txt_sifre" runat="server" CssClass="txt" TextMode="Password"></asp:TextBox>
            </td>
            <td class="tdReg">Şifre (Tekrar): </td>
            <td>
                <asp:TextBox ID="txt_sifreT" runat="server" CssClass="txt" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="tdReg">Mail: </td>
            <td>
                <asp:TextBox ID="txt_mail" runat="server" CssClass="txt" TextMode="Email"></asp:TextBox>
            </td>
            <td class="tdReg">TC Kimlik Numrası:</td>
            <td>
                <asp:TextBox ID="txt_tc" runat="server" CssClass="txt" TextMode="Number"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="tdReg">Doğum Tarihi: </td>
            <td>
                <asp:TextBox ID="txt_dt" runat="server" CssClass="txt" TextMode="DateTime"></asp:TextBox>
            </td>
            <td class="tdReg">Cep Telefonu (0 dahil):</td>
            <td>
                <asp:TextBox ID="txt_tel" runat="server" CssClass="txt" TextMode="Number"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="tdReg">İl:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="txt" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td class="tdReg">İlçe: </td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="txt">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="tdReg">Adres: </td>
            <td>
                <asp:TextBox ID="txt_adres" runat="server" CssClass="txtAdres" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td class="tdCenter"><strong style="font-family: Calibri">
                <asp:Label ID="Label1" runat="server" CssClass="style8" Text="Şifre Tekrarı Yanlış"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" CssClass="style8" Text="Lütfen Hiçbir Alanı Boş Bırakmayınız" Visible="False"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" CssClass="style8" Text="Bu mail ile zaten kayıt yapılmış"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label3" runat="server" CssClass="auto-style11" Text="Kayıt Başarıyla Yapıldı" Visible="False"></asp:Label>
                </strong></td>
        </tr>
        <tr>
            <td class="tdReg">&nbsp;</td>
            <td class="tdCenter">
                <strong>
                <asp:Button ID="btn_kaydet" runat="server" CssClass="style7" Height="30px" OnClick="btn_kaydet_Click" Text="KAYDET" Width="300px" />
                </strong>
            </td>
            <td>
                &nbsp;</td>
            <td class="tdCenter">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
