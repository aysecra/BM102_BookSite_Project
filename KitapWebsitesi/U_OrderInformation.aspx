<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="U_OrderInformation.aspx.cs" Inherits="KitapWebsitesi.U_OrderInformation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            color: #DCDDD8;
            font-size: x-large;
            font-family: Calibri;
            text-align: center;
        }

        .dtl {
            width: 100%;
        }

        .td5 {
            font-family: Calibri;
            font-size: 13pt;
            text-align: left;
            color: #CCCCCC;
            font-weight: bold;
            width: 110px;
        }

        .imgdt {
            text-align: left;
            width: 50px;
        }

        .img {
            width: 40px;
            height: 40px;
        }

        .auto-style12 {
            color: #C8C9C5;
            font-size: 13pt;
        }

        .auto-style13 {
            text-align: center;
            width: 50px;
            color: #C8C9C5;
            text-decoration: underline;
            font-size: 13.5pt;
        }

        .auto-style14 {
            text-align: center;
            width: 50px;
            color: #C8C9C5;
            text-decoration: underline;
            font-size: 13pt;
        }

        .auto-style15 {
            text-align: left;
            width: 67px;
            font-size: 13pt;
        }

        .auto-style16 {
            font-family: Calibri;
            font-size: 13pt;
            text-align: left;
            color: #CCCCCC;
            font-weight: bold;
            width: 98px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style11"><strong>SİPARİŞ BİLGİLERİ</strong></td>
        </tr>
        <tr>
            <td class="auto-style11">
                <table class="dtl" style="border: thin solid #C8C9C5">
                    <tr>
                        <td class="auto-style16">Sipariş No</td>
                        <td class="auto-style15">Sipariş Durumu</td>
                        <td class="auto-style14" style="font-family: Calibri;">&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <asp:DataList ID="DataList1" runat="server" CssClass="dtl">
        <ItemTemplate>
            <table class="dtl" style="border: thin solid #C8C9C5">
                <tr>
                    <td class="td5">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("SiparisNo") %>'></asp:Label>
                    </td>
                    <td class="imgdt">
                        <strong>
                            <asp:Label ID="Label2" runat="server" CssClass="auto-style12" Font-Names="Calibri" Text='<%# Eval("SiparisDurum") %>'></asp:Label>
                        </strong>
                    </td>
                    <td class="auto-style13" style="font-family: Calibri;">
                        <a href="U_OrderDetail.aspx?no=<%#Eval("SiparisNo") %>"><strong>Detay</strong></a></td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <table class="auto-style1">
        <tr>
            <td class="auto-style11">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
