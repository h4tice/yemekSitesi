<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="kategoriler.aspx.cs" Inherits="yemek_tarifleri.kategoriler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style12 {
            background-color: #CCCCCC;
        }
    .auto-style13 {
        text-align: left;
    }
    .auto-style15 {
        font-size: large;
    }
        .auto-style16 {
            text-align: right;
        }
        .auto-style17 {
            text-align: left;
            width: 295px;
        }
        .auto-style19 {
            width: 32px;
        }
        .auto-style20 {
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style21 {
            width: 41px;
        }
        .auto-style22 {
            margin-left: 80px;
        }
        .auto-style23 {
            font-weight: bold;
            font-size: 12pt;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style12">
        <table class="auto-style7">
            <tr>
                <td class="auto-style19"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style20" Height="30px" OnClick="Button1_Click" Text="+" Width="30px" />
                    </strong></td>
                <td class="auto-style21"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style20" Height="30px" OnClick="Button2_Click" Text="-" Width="30px" />
                    </strong></td>
                <td>KATEGORİ LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <div class="auto-style13">
            <asp:DataList ID="DataList1" runat="server" Width="449px">
                <ItemTemplate>
                    <table class="auto-style7">
                        <tr>
                            <td class="auto-style17">
                                <asp:Label ID="Label1" runat="server" CssClass="auto-style15" Text='<%# Eval("kategoriAd") %>'></asp:Label>
                            </td>
                            <td class="auto-style16">
                               <a href="kategoriler.aspx?kategoriid=<%#Eval("kategoriid")%>&islem=sil"><asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/iconlar/delete.png" Width="30px" /></a>
                            </td>
                            <td class="auto-style16">
                              <a href="kategoriDuzenle.aspx?kategoriid=<%#Eval("kategoriid") %>"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/iconlar/update.png" Width="30px" /></a>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </div>
</asp:Panel>
        <asp:Panel ID="Panel4" runat="server" CssClass="auto-style12">
            <table class="auto-style7">
                <tr>
                    <td class="auto-style19"><strong>
                        <asp:Button ID="Button3" runat="server" CssClass="auto-style20" Height="30px" Text="+" Width="30px" OnClick="Button3_Click" />
                        </strong></td>
                    <td class="auto-style21"><strong>
                        <asp:Button ID="Button4" runat="server" CssClass="auto-style20" Height="30px" Text="-" Width="30px" OnClick="Button4_Click" />
                        </strong></td>
                    <td>KATEGORİ EKLEME</td>
                </tr>
            </table>
        </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <table class="auto-style7">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>KATEGORİ AD:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>KATEGORİ İKON:</td>
            <td class="auto-style22">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style22"><strong>
                <asp:Button ID="btnekle" runat="server" CssClass="auto-style23" Text="Ekle" Width="100px" OnClick="btnekle_Click" />
                </strong></td>
        </tr>
    </table>
    </asp:Panel>
    
</asp:Content>
