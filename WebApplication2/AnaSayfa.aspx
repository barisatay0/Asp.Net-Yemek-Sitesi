<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AnaSayfa.aspx.cs" Inherits="WebApplication2.AnaSayfa" MasterPageFile="~/Kullanici.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="server">
    <style type="text/css">
        .auto-style16 {
            font-size: x-large;
        }
        .auto-style17 {
            height: 38px;
            background-color: #666699;
        }
        .auto-style18 {
            background-color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="server">   
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style17">
                     <a href="YemekDetay.aspx?Yemekid=<%# Eval("Yemekid") %>">   <asp:Label ID="Label3" runat="server" CssClass="auto-style16" Text='<%# Eval("YemekAd") %>'></asp:Label></a>
                    </td>
                </tr>
                <tr>
                    <td><strong>Malzemeler:</strong>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Yemek Tarifi:
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><strong>Eklenme Tarihi:<asp:Label ID="Label6" runat="server" CssClass="auto-style18" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                        </strong>- Puan:<strong><asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #000000">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>