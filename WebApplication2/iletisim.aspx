
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="WebApplication2.iletisim" MasterPageFile="~/Kullanici.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style16 {
        width: 136px;
    }
    .auto-style17 {
        width: 136px;
        height: 26px;
    }
    .auto-style18 {
        font-size: x-large;
        color: #FFFF99;
    }
        .auto-style19 {
            color: #000000;
        }
        .auto-style20 {
            border: 2px solid #456879;
            border-radius: 10px;
        }
        .auto-style21 {
            margin-left: 16px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">   
    <table class="auto-style1">
    <tr>
        <td class="auto-style18" colspan="2"><strong><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </em><span class="auto-style19">MESAJ PANELİ</span></strong></td>
    </tr>
    <tr>
        <td class="auto-style16">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style16">Ad Soyad:</td>
        <td>
            <asp:TextBox ID="TxtGonderen" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style16">Mail Adresiniz:</td>
        <td>
            <asp:TextBox ID="TxtMail" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style16">Konu:</td>
        <td>
            <asp:TextBox ID="TxtBaslik" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style17">Mesaj:</td>
        <td class="auto-style10">
            <asp:TextBox ID="TxtMesaj" runat="server" CssClass="auto-style20" Height="104px" Width="228px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style17">&nbsp;</td>
        <td class="auto-style10">
            <asp:Button ID="Button1" runat="server" Height="47px" Text="Gönder" Width="202px" CssClass="tb5" OnClick="Button1_Click" />
        </td>
    </tr>
</table>
</asp:Content>