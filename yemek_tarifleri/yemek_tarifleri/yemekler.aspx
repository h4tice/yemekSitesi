<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="yemekler.aspx.cs" Inherits="yemek_tarifleri.yemekler" %>
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
        .auto-style24 {
            margin-left: 80px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style12">
        <table class="auto-style7">
            <tr>
                <td class="auto-style19"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style20" Height="30px" Text="+" Width="30px" OnClick="Button1_Click" />
                    </strong></td>
                <td class="auto-style21"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style20" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
                    </strong></td>
                <td>YEMEK LİSTESİ</td>
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
                                <asp:Label ID="Label1" runat="server" CssClass="auto-style15" Text='<%# Eval("yemekAd") %>'></asp:Label>
                            </td>
                            <td class="auto-style16">
                               <a href="yemekler.aspx?yemekid=<%#Eval("yemekid")%>&islem=sil"><asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/iconlar/delete.png" Width="30px" /></a>
                            </td>
                            <td class="auto-style16">
                              <a href="yemekDuzenle.aspx?yemekid=<%#Eval("yemekid") %>"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/iconlar/update.png" Width="30px" /></a>
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
                        <asp:Button ID="Button3" runat="server" CssClass="auto-style20" Height="30px" Text="+" Width="30px" OnClick="Button3_Click"/>
                        </strong></td>
                    <td class="auto-style21"><strong>
                        <asp:Button ID="Button4" runat="server" CssClass="auto-style20" Height="30px" Text="-" Width="30px" OnClick="Button4_Click"/>
                        </strong></td>
                    <td>YEMEK EKLEME</td>
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
            <td>YEMEK AD:</td>
            <td>
                <asp:TextBox ID="txtad" runat="server" Width="280px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>MALZEMELER:</td>
            <td class="auto-style22">
                <asp:TextBox ID="txtmalzeme" runat="server" Height="100px" TextMode="MultiLine" Width="280px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>YEMEK TARİF:</td>
            <td class="auto-style22">
                <asp:TextBox ID="txttarif" runat="server" Height="200px" TextMode="MultiLine" Width="280px"></asp:TextBox>
            </td>
        </tr>
            <tr>
                <td>KATEGORİ:</td>
                <td class="auto-style22">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="280px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style24"><strong>
                    <asp:Button ID="btnekle" runat="server" CssClass="auto-style23" OnClick="btnekle_Click" Text="Ekle" Width="100px" />
                    </strong></td>
            </tr>
    </table>
    </asp:Panel>
    
</asp:Content>

