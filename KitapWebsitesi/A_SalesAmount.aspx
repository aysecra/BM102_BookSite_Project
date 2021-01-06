<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="A_SalesAmount.aspx.cs" Inherits="KitapWebsitesi.A_SalesAmount" %>
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

.td2 {
    font-family: Calibri;
    font-size: 24px;
    text-align: center;
    color: #CCCCCC;
    font-weight: bold;
}

        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
            font-size: large;
            color: #BBBBBB;
        }
        .auto-style3 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel3" runat="server" CssClass="panel1">
        <table class="table1">
            <tr>
                <td class="td2">SATIŞ MİKTARI</td>
            </tr>
        </table>
    </asp:Panel>
    <br />
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" style="font-family: Calibri">
                <strong>&nbsp;7 GÜNLÜK SATIŞ RAPORU&nbsp;</strong></td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Chart ID="chart_gunluk" runat="server" BackImageTransparentColor="ControlDarkDark" BorderlineColor="DimGray" Height="400px" Palette="None" Width="750px">
                    <Series>
                        <asp:Series ChartArea="ChartArea1" ChartType="Spline" Name="Kitap" XValueMember="Eval(&quot;SatisTarih&quot;)" YValueMembers="Eval(SatisMiktar&quot;)">
                        </asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
            </td>
        </tr>
    </table>
</asp:Content>
