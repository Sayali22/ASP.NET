<%@ Page Title="" Language="C#" MasterPageFile="~/UICSD/HomeCSD.Master" AutoEventWireup="true" CodeBehind="DefaultCategoryCSD.aspx.cs" Inherits="CaseStudyDec2016.UICSD.DefaultCategoryCSD" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>
<p style="margin-left: 80px">
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        Text="create Category" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btn_search" runat="server" onclick="btn_search_Click" 
        Text="Search Category" />
</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
</asp:Content>
