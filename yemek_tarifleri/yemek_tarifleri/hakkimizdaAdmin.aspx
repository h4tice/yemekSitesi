<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="hakkimizdaAdmin.aspx.cs" Inherits="yemek_tarifleri.hakkimizdaAdmin" %>
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
            text-align: center;
            margin-left: 120px;
        }
        .auto-style23 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style24 {
            font-size: medium;
            font-style: italic;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style12">
        <table class="auto-style7">
            <tr>
                <td class="auto-style19"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style20" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click" />
                    </strong></td>
                <td class="auto-style21"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style20" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click" />
                    </strong></td>
                <td>HAKKIMIZDA</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
         <table class="auto-style7">
        <tr>
            <td class="auto-style22"><em>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style24" Height="200px" TextMode="MultiLine" Width="435px"></asp:TextBox>
                </em><strong>
                <asp:Button ID="Button3" runat="server" CssClass="auto-style23" Text="Güncelle" Width="200px" OnClick="Button3_Click" />
                </strong></td>
        </tr>
    </table>
    </asp:Panel>
   
</asp:Content>
