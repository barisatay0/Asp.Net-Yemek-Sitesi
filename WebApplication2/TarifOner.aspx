
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="WebApplication2.TarifOner" MasterPageFile="~/Kullanici.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style18 {
            width: 137px;
        }
        .auto-style19 {
            width: 136px;
        }
        .auto-style20 {
            margin-left: 156px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">   
    <table class="auto-style1">
        <tr>
            <td class="auto-style19">Tarif Ad:</td>
            <td>
                <asp:TextBox ID="TxtTarifAd" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style19">Malzemeler:</td>
            <td>
                <asp:TextBox ID="TxtMalzeme" runat="server" Height="80px" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style18">Yapılış:</td>
            <td>
                <asp:TextBox ID="TxtYapilis" runat="server" Height="94px" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style18">Resim:</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" CssClass="tb5" />
            </td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style18">Tarif Öneren:</td>
            <td>
                <asp:TextBox ID="TxtTarifOneren" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style19">Mail Adresi:</td>
            <td>
                <asp:TextBox ID="TxtMailAdresi" runat="server" TextMode="Email" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="BtnTarifOner" runat="server" BackColor="#66CCFF" Text="Tarif Öner" Width="172px" OnClick="BtnTarifOner_Click" CssClass="auto-style20" Height="27px" />
            </td>
        </tr>
    </table>
</asp:Content>
