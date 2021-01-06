<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="A_Contact.aspx.cs" Inherits="KitapWebsitesi.A_Contact" %>
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

.img {
    width :40px;
    height: 40px;
}

        .auto-style12 {
            font-family: Calibri;
            font-size: 13pt;
            text-align: left;
            color: #CCCCCC;
            font-weight: bold;
            width: 104px;
        }

        .auto-style13 {
            color: #000000;
        }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel3" runat="server" CssClass="panel1">
        <table class="table1">
            <tr>
                <td class="auto-style11" style="font-family: Calibri"><strong>İLETİŞİM</strong></td>
            </tr>
        </table>
    </asp:Panel>

        <asp:DataList ID="DataList1" runat="server" Width="100%">
            <ItemTemplate>
                <table class="dtl">
                    <tr>
                        <td class="auto-style12" style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #000000">
                            Gönderen:
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("IletisimGonderen") %>'></asp:Label>
                            <br />
                            Konu:
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("IletisimKonu") %>'></asp:Label>
                            <br />
                            <asp:TextBox ID="TextBox1" runat="server" Enabled="False" Height="75px" Text='<%# Eval("IletisimIcerik") %>' TextMode="MultiLine" Width="500px" CssClass="auto-style13" Font-Names="Calibri" Font-Size="Medium"></asp:TextBox>
                        </td>
                        <td class="imgdt" style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #000000;">
                            <a href="A_Contact.aspx?id=<%#Eval("IletisimId") %> &islem=sil">
                                <asp:Image ID="img_delete" runat="server" CssClass="img" ImageUrl="~/Icon/delete.png" /></a>
                        </td>
                        <td class="imgdt" style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #000000">
                            <a href="A_ContactAnswer.aspx?id=<%#Eval("IletisimId") %>">
                                <asp:Image ID="img_answer" runat="server" CssClass="img" ImageUrl="~/Icon/edit.png" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    
</asp:Content>
