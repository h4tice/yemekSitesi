<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="yemekDuzenle.aspx.cs" Inherits="yemek_tarifleri.yemekDuzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style12 {
            font-size: large;
            text-align: right;
            width: 266px;
        }
        .auto-style13 {
            font-size: large;
            text-align: right;
            height: 29px;
            width: 266px;
        }
        .auto-style14 {
            height: 29px;
        }
        .auto-style15 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style16 {
            width: 266px;
        }
        .auto-style17 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style7">
        <tr>
            <td class="auto-style16">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>Yemek Ad:</strong></td>
            <td class="auto-style14">
                <asp:TextBox ID="txtad" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>Malzemeler:</strong></td>
            <td>
                <asp:TextBox ID="txtmalzeme" runat="server" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>Tarif:</strong></td>
            <td>
                <asp:TextBox ID="txttarif" runat="server" Height="200px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>Kategori:</strong></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="250px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>Yemek</strong> <strong>Görüntü</strong>:</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style16"></td>
            <td class="auto-style17"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style15" OnClick="Button1_Click" Text="Güncelle" Width="250px" />
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style17"><strong>
                <asp:Button ID="Button2" runat="server" CssClass="auto-style15" OnClick="Button2_Click" Text="Günün Yemeği Seç" Width="250px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
