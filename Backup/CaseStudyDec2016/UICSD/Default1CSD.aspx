<%@ Page Title="" Language="C#" MasterPageFile="~/UICSD/HomeCSD.Master" AutoEventWireup="true" CodeBehind="Default1CSD.aspx.cs" Inherits="CaseStudyDec2016.UICSD.Default1CSD" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Button ID="btn_search" runat="server" onclick="Button2_Click" 
        Text="Search" CausesValidation="False" />
    <asp:Button ID="btn_update" runat="server" onclick="btn_update_Click" 
        Text="Update" Width="78px" />
</asp:Content>
