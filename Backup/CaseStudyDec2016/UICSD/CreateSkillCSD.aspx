<%@ Page Title="" Language="C#" MasterPageFile="~/UICSD/HomeCSD.Master" AutoEventWireup="true" CodeBehind="CreateSkillCSD.aspx.cs" Inherits="CaseStudyDec2016.UICSD.CreateSkillCSD" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">


.emptyline
{
	height : 5px;
}

.button
{
	font-family : Arial;
	font-size : smaller;
	font-style : normal;
	background-color :rgb(255, 153, 102);
	font-weight : bold;
        margin-left: 0px;
    }

</style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
    &nbsp;</p>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    Add Skill&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <table style="width: 404px; margin-left: 0px">
        <tr>
            <td align="left">
                <asp:Label ID="categoryLabel" runat="server" CssClass="label">Category:</asp:Label>
            </td>
            <td align="left">
                <asp:DropDownList ID="ddl_category" runat="server" AutoPostBack="True" 
                   >
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="categoryRequiredFieldValidator" runat="server" 
                    ControlToValidate="ddl_category" 
                    ErrorMessage="Category needs to be selected " InitialValue="-1" 
                    style="color: #CC0000">*
									</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="left">
                <asp:Label ID="skillLabel" runat="server" CssClass="label">Skill:</asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="skillTextBox" runat="server" CssClass="textbox" MaxLength="50" 
                    tabIndex="2"></asp:TextBox>
                <asp:RequiredFieldValidator ID="skillRequiredFieldValidator" runat="server" 
                    ControlToValidate="skillTextBox" Display="Static" 
                    ErrorMessage="Skill Name Is Required To Be Entered" style="color: #CC0000">*
									</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="skillRegularExpressionValidator" 
                    runat="server" ControlToValidate="skillTextBox" 
                    ErrorMessage="Skill is not in valid format. Only letters, numbers, spaces, dots, commas, underscores, slashes, plus, hyphens, hashes and brackets are allowed." 
                    style="color: #CC0000" ValidationExpression="[\w_,\n\r\s\\\+\.\-/#()]*">*
									</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="left">
                <asp:Label ID="descriptionLabel" runat="server" CssClass="label">Description:</asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="descriptionTextBox" runat="server" 
                   ></asp:TextBox>
                <asp:RequiredFieldValidator ID="descriptionRequiredFieldValidator" 
                    runat="server" ControlToValidate="descriptionTextBox" Display="Static" 
                    ErrorMessage="Skill Description Is Required To Be Entered" 
                    style="color: #CC0000">*
									</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="emptyline">
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="saveButton" runat="server" BackColor="#FF9966" 
                    CssClass="button" onclick="saveButton_Click" tabIndex="4" Text="Save" 
                    Width="52px" />
                <asp:Button ID="Cancel_btn" runat="server" BackColor="#FF9966" 
                    onclick="Cancel_btn_Click" Text="Cancel" />
&nbsp;</td>
        </tr>
    </table>
&nbsp;&nbsp;
</asp:Content>
