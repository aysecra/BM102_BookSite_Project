<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="A_ContactAnswer.aspx.cs" Inherits="KitapWebsitesi.A_ContactAnswer" %>
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

        .table {
            width: 100%;
        }

        .tdKitap {
            width: 300px;
            font-family:Calibri;
            width: 300px;
            color: #C8C9C5;
        }

        .tdAdet {
            width: 150px;
            text-align: center;
            font-family:Calibri;
            width: 300px;
            color: #C8C9C5;
        }

        .tdBirimToplam {
            width: 250px;
            font-family:Calibri;
            width: 300px;
            color: #C8C9C5;
        }

        .auto-style12 {
            text-align: right;
            width:45%;
        }

        .auto-style13 {
            font-weight: bold;
            background-color: #CCCCCC;
        }

        .auto-style14 {
            text-align: left;
        }
        .auto-style15 {
            color: #00FF00;
        }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel3" runat="server" CssClass="panel1">
        <table class="table1">
            <tr>
                <td class="auto-style11" style="font-family: Calibri"><strong>İLETİŞİM - CEVAP</strong></td>
            </tr>
        </table>
    </asp:Panel>

        <table class="dtl">
            <tr>
                <td class="auto-style12" style="font-family: Calibri; color: #CCCCCC"><strong></strong></td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12" style="font-family: Calibri; color: #CCCCCC"><strong>KONU:</strong></td>
                <td>
                    <asp:TextBox ID="txt_subject" runat="server" Font-Names="Calibri" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12" style="font-family: Calibri; color: #CCCCCC"><strong>MESAJ:</strong></td>
                <td>
                    <asp:TextBox ID="txt_message" runat="server" Font-Names="Calibri" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12" style="font-family: Calibri; color: #CCCCCC">&nbsp;</td>
                <td>
                    <strong>
                    <asp:Button ID="btn_gonder" runat="server" CssClass="auto-style13" Text="GÖNDER" Width="195px" OnClick="btn_gonder_Click" />
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style12" style="font-family: Calibri; color: #CCCCCC">&nbsp;</td>
                <td class="auto-style14">
                    <strong>
                    <asp:Label ID="lbl_success" runat="server" CssClass="auto-style15" Font-Names="Calibri" Text="Mesaj başarıyla gönderildi" Visible="False"></asp:Label>
                    </strong></td>
            </tr>
    </table>
    </asp:Content>
