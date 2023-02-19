<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="yemek_tarifleri.Hakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            font-size: x-large;
            text-align: center;
        }
        .auto-style7 {
            margin-left: 6px;
        }
        .auto-style8 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style6">
        HAKKIMIZDA</p>
    <div class="auto-style8">
    <asp:DataList ID="DataList2" runat="server" Width="439px" CssClass="auto-style7">
        <ItemTemplate>
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("metin") %>'></asp:Label>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    </div>
    <asp:Image ID="Image1" runat="server" Height="147px" ImageUrl="~/resimler/blog.jpg" Width="450px" />
</asp:Content>
