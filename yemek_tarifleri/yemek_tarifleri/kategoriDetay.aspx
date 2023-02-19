<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="kategoriDetay.aspx.cs" Inherits="yemek_tarifleri.kategoriDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style7 {
            background-color: #FFFF99;
        }
        .auto-style6 {
            font-size: x-large;
            color: #CC0066;
        }
        .auto-style8 {
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server">
    <ItemTemplate>
        <table class="auto-style1">
            <tr>
                <td class="auto-style7"><a href="yemekDetay.aspx?yemekid=<%# Eval("yemekid") %>"><strong>
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style6" Text='<%# Eval("yemekAd") %>'></asp:Label>
                    </strong></td>
                </a>
            </tr>
            <tr>
                <td><strong>Malzemeler:</strong><asp:Label ID="Label4" runat="server" Text='<%# Eval("yemekMalzeme") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td><strong>Yemek Tarifi:</strong><asp:Label ID="Label5" runat="server" Text='<%# Eval("yemekTarif") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td><strong>Eklenme Tarihi:</strong>
                    <asp:Label ID="Label6" runat="server" CssClass="auto-style8" Text='<%# Eval("yemekTarih") %>'></asp:Label>
                            &nbsp;- <strong>Puan:<em><asp:Label ID="Label7" runat="server" CssClass="auto-style8" Text='<%# Eval("yemekPuan") %>'></asp:Label>
                    </em></strong></td>
            </tr>
            <tr>
                <td style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #333333">&nbsp;</td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
