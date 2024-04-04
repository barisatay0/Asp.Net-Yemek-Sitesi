<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="WebApplication2.YemekDetay" MasterPageFile="~/Kullanici.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style16 {
            font-size: xx-large;
            color: #FFFFFF;
        }
        .auto-style17 {
            font-size: xx-small;
        }
        .auto-style18 {
            font-size: x-large;
        }
        .auto-style19 {
            width: 188px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">   
    <strong>
    <asp:Label ID="Label3" runat="server" CssClass="auto-style16" Text="Label"></asp:Label>
    <br />
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style18" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-bottom-style: inset; border-bottom-width: thin">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Yorumicerik") %>'></asp:Label>
                        &nbsp;-
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style17" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <br />
    </strong>   
    <div style="background-color: #FFFFFF">YORUM YAPMA PANELİ</div>
    <asp:Panel ID="Panel1" runat="server" Height="16px">
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19">Ad Soyad:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">Mail:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">Yorumunuz:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Yorum Yap" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>