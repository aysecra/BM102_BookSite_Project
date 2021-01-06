<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="A_CommandAssent.aspx.cs" Inherits="KitapWebsitesi.A_CommandAssent" %>
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

.td1 {
    height: 50px;
    width: 60px;
    text-align: center;
}

.pbutton {
    height: 50px;
    width: 50px;
    font-weight: bold;
    background-color: #CCCCCC;
    color: black;
}

.td2 {
    font-family: Calibri;
    font-size: 24px;
    text-align: center;
    color: #CCCCCC;
    font-weight: bold;
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

        .auto-style1 {
            font-family: Calibri;
            font-size: 24px;
            text-align: center;
            color: #CCCCCC;
            font-weight: bold;
            width: 1053px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel3" runat="server" CssClass="panel1">
        <table class="table1">
            <tr>
                <td class="auto-style1">YORUM ONAY</td>
            </tr>
        </table>
    </asp:Panel>

        <asp:DataList ID="DataList1" runat="server" CssClass="dtl">
            <ItemTemplate>
                <table class="dtl">
                    <tr>
                        <td class="td5" style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #000000">
                            Gönderen:
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YorumGonderen") %>'></asp:Label>
                            <br />
                            Yorum:
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("YorumIcerik") %>'></asp:Label>
                        </td>
                        <td class="imgdt" style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #000000;">
                            <a href="A_CommandAssent.aspx?id=<%#Eval("YorumId") %> &islem=sil">
                                <asp:Image ID="img_delete" runat="server" CssClass="img" ImageUrl="~/Icon/delete.png" /></a>
                        </td>
                        <td class="imgdt" style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #000000">
                            <a href="A_CommandAssent.aspx?id=<%#Eval("YorumId") %> &islem=onay">
                                <asp:Image ID="img_update" runat="server" CssClass="img" ImageUrl="~/Icon/tick.png" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    
</asp:Content>
