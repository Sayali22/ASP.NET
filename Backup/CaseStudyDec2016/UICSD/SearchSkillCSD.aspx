<%@ Page Title="" Language="C#" MasterPageFile="~/UICSD/HomeCSD.Master" AutoEventWireup="true" CodeBehind="SearchSkillCSD.aspx.cs" Inherits="CaseStudyDec2016.UICSD.SearchSkillCSD" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    <p>
</p>
<p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="SkillsearchLabel" runat="server" style="color: #000066" 
        Text="Skill Search"></asp:Label>
&nbsp;
</p>
<p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="SkillTextBox" runat="server" 
       ></asp:TextBox>
    <asp:GridView ID="Searchgridview" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="SkillId" 
        onrowcommand="Searchgridview_RowCommand" 
        >
        <Columns>
            <asp:BoundField AccessibleHeaderText="SearchSkill" DataField="skillName" 
                HeaderText="Searchskill" />
            <asp:ButtonField CommandName="edit" HeaderText="edit" Text="Button" />
            <asp:HyperLinkField DataNavigateUrlFields="skillId" 
                DataNavigateUrlFormatString="ViewSkillCSD.aspx?skillId={0}" 
                HeaderText="View Skill" NavigateUrl="~/UICSD/ViewSkillCSD.aspx" Text="View" />
        </Columns>
    </asp:GridView>
</p>
<p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="SearchButton" runat="server" BackColor="#FF9966" 
        style="font-weight: 700" Text="Search" onclick="SearchButton_Click" />
</p>
<p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="AddSkillLink" runat="server" onclick="AddSkillLink_Click">Add skill</asp:LinkButton>
</p>
<br />
<br />
<br />
</asp:Content>

