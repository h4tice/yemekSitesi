<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="kategoriDuzenle.aspx.cs" Inherits="yemek_tarifleri.kategoriAdminDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style12 {
            width: 295px;
            margin-left: 80px;
        }
        .auto-style13 {
            width: 295px;
        }
        .auto-style14 {
            font-size: medium;
            font-weight: bold;
        }
        .auto-style15 {
            text-align: right;
            width: 168px;
        }
        .auto-style16 {
            width: 168px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style7">
        <tr>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>KATEGORİ AD:</strong></td>
            <td class="auto-style13">
                <asp:TextBox ID="txtad" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>ADET:</strong></td>
            <td class="auto-style12">
                <asp:TextBox ID="txtadet" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>RESİM:</strong></td>
            <td class="auto-style12">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style12"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style14" Text="Güncelle" Width="150px" OnClick="Button1_Click" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
