<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="yemekDetay.aspx.cs" Inherits="yemek_tarifleri.yemekDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            font-size: xx-large;
            color: #FFFFFF;
        }
        .auto-style7 {
            font-size: x-small;
        }
        .auto-style8 {
            font-size: x-large;
        }
        .auto-style9 {
            background-color: #FFFFFF;
        }
        .auto-style10 {
            margin-left: 0px;
            font-size: medium;
        }
        .auto-style11 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label3" runat="server" CssClass="auto-style6" Text="Label" style="font-size:30pt"></asp:Label>
   
    <br />
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style8" Text='<%# Eval("yorumAdSoyad") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-bottom-style: inset; border-bottom-width: thin">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("yorumIcerik") %>'></asp:Label>
                        &nbsp;-
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style7" Text='<%# Eval("yorumTarih") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
<br />

        <div class="auto-style9" style="background-color:#eea4a4">YORUM YAPMA PANELİ</div>
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>Ad Soyad:</strong></td>
            <td>
                <asp:TextBox ID="txtadsoyad" runat="server" Height="20px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>Mail:</strong></td>
            <td>
                <asp:TextBox ID="txtmail" runat="server" Height="20px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>Yorum:</strong></td>
            <td>
                <asp:TextBox ID="txtyorum" runat="server" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style10" Text="Yorum Yap" Width="200px" OnClick="Button1_Click" />
                </strong>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
