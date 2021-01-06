<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="A_Orders.aspx.cs" Inherits="KitapWebsitesi.A_Orders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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

        .auto-style11 {
            width: 100%;
            text-align: center;
            color: #CCCCCC;
            font-size: 24pt;
        }

        .dtl {
            width: 100%;
        }

        .auto-style16 {
            font-family: Calibri;
            font-size: 13pt;
            text-align: left;
            color: #CCCCCC;
            font-weight: bold;
            width: 98px;
        }
    
        .auto-style15 {
            text-align: left;
            width: 67px;
            font-size: 13pt;
            font-weight: bold;
            color: #CCCCCC;
        }

        .auto-style14 {
            text-align: center;
            width: 50px;
            color: #CCCCCC;
            text-decoration: underline;
            font-size: 13pt;
            font-weight: bold;
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

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel3" runat="server" CssClass="panel1">
        <table class="table1">
            <tr>
                <td class="auto-style11" style="font-family: Calibri"><strong>SİPARİŞLER</strong></td>
            </tr>
        </table>
    </asp:Panel>
                <table class="dtl" style="border: thin solid #C8C9C5">
                    <tr>
                        <td class="auto-style16" style="font-family: Calibri">Sipariş No</td>
                        <td class="auto-style15" style="font-family: Calibri">Sipariş Durumu</td>
                        <td class="auto-style14" style="font-family: Calibri;">&nbsp;</td>
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
                        <a href="A_OrderDetail.aspx?no=<%#Eval("SiparisNo") %>"><strong>Detay</strong></a></td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    </asp:Content>
