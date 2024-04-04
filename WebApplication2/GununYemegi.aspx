
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="WebApplication2.GununYemegi" MasterPageFile="~/Kullanici.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style5 {
        font-size: x-large;
    }
        .auto-style14 {
            width: 404px;
            height: 54px;
        }
        .auto-style15 {
            width: 100%;
            height: 11px;
        }
        .auto-style16 {
            text-align: center;
        }
        .auto-style17 {
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">   
    <asp:DataList ID="DataList2" runat="server" CssClass="auto-style17" Height="1506px">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td>
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style16"><strong>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("GununYemegiAd") %>'></asp:Label>
                                    </strong></td>
                            </tr>
                        </table>
                        <table class="auto-style1">
                            <tr>
                                <td>
                                    Malzemeler:
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("GununYemegiMalzeme") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                        <table class="auto-style15">
                            <tr>
                                <td>
                                    Tarif:
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("GununYemegiTarif") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                        <table class="auto-style1">
                            <tr>
                                <td>
                                    <img alt="" src="" class="auto-style14" />
                                </td>
                            </tr>
                        </table>
                        <table class="auto-style1">
                            <tr>
                                <td>
                                    Puan:
                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("GununYemegiPuan") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                        <table class="auto-style1">
                            <tr>
                                <td>
                                    Ekleme Tarihi:
                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("GununYemegiTarih") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
