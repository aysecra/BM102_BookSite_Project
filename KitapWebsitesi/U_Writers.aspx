<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="U_Writers.aspx.cs" Inherits="KitapWebsitesi.U_Writers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            font-size: x-large;
            color: #DCDDD8;
            font-family: Calibri;
        }

        .style {
            font-size: large;
            color: #C8C9C5;
            font-family: Calibri;
            text-align: left;
        }
        .auto-style9 {
            font-size: xx-large;
            color: #C8C9C5;
            font-family: Calibri;
        }
        .auto-style10 {
            text-align: left;
        }
        .auto-style11 {
            font-size: x-large;
            color: #C8C9C5;
            font-family: Calibri;
        }
        .auto-style12 {
            text-align: center;
            height: 56px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style12"><strong><span class="auto-style11">YAZARLAR</span><span class="auto-style9"> </span></strong></td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:DataList ID="DataList2" runat="server" RepeatColumns="6" Width="100%">
                    <ItemTemplate>
                        <div class="auto-style10">
                            <a href='U_WritersBooks.aspx?yazar=<%#Eval("KitapYazar") %>'><strong>
                            <asp:Label ID="Label2" runat="server" CssClass="style" Text='<%# Eval("KitapYazar") %>'></asp:Label>
                            </strong></a>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
