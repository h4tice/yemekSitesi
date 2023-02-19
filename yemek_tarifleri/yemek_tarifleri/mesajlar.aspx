<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="mesajlar.aspx.cs" Inherits="yemek_tarifleri.mesajlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">


        .auto-style12 {
            background-color: #CCCCCC;
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
            margin-left: 83px;
        }
        .auto-style23 {
            width: 313px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style12">
        <table class="auto-style7">
            <tr>
                <td class="auto-style19"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style20" Height="30px" Text="+" Width="30px" OnClick="Button1_Click"  />
                    </strong></td>
                <td class="auto-style21"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style20" Height="30px" Text="-" Width="30px" OnClick="Button2_Click"  />
                    </strong></td>
                <td>MESAJ LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
                <asp:DataList ID="DataList1" runat="server" Width="449px">
                    <ItemTemplate>
                        <table class="auto-style7">
                            <tr>
                                <td class="auto-style23">
                                    <asp:Label ID="Label1" runat="server" CssClass="auto-style15" Text='<%# Eval("mesajGonderen") %>'></asp:Label>
                                </td>
                                <td class="auto-style16">
                                  <a href="mesajDetay.aspx?mesajid=<%#Eval("mesajid") %>"> <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/iconlar/read.png" Width="30px" CssClass="auto-style22" /></a>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
    </asp:Panel>
</asp:Content>
