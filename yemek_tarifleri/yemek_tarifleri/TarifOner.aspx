<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="yemek_tarifleri.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style6 {
        text-align: right;
    }
    .auto-style7 {
        font-style: italic;
        font-weight: bold;
        margin-left: 52px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6"><strong>Tarif Ad:</strong></td>
        <td>
            <asp:TextBox ID="txtTarifAd" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6"><strong>Malzemeler:</strong></td>
        <td>
            <asp:TextBox ID="txtMalzeme" runat="server" Height="80px" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6"><strong>Yapılış:</strong></td>
        <td>
            <asp:TextBox ID="txtYapilis" runat="server" Height="150px" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6"><strong>Resim:</strong></td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="tb5" />
        </td>
    </tr>
    <tr>
        <td class="auto-style6"><strong>Tarif Öneren:</strong></td>
        <td>
            <asp:TextBox ID="txtTarifOneren" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6"><strong>Mail Adresi:</strong></td>
        <td>
            <asp:TextBox ID="txtMail" runat="server" TextMode="Email" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td><strong><em>
            <asp:Button ID="bnTarifOner" runat="server" BackColor="#99CCFF" CssClass="fb8" Height="40px" Text="Tarif Öner" Width="144px" OnClick="bnTarifOner_Click" />
            </em></strong></td>
    </tr>
</table>
</asp:Content>
