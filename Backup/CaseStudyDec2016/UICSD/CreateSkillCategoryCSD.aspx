<%@ Page Title="" Language="C#" MasterPageFile="~/UICSD/HomeCSD.Master" AutoEventWireup="true" CodeBehind="CreateSkillCategoryCSD.aspx.cs" Inherits="CaseStudyDec2016.UICSD.CreateSkillCategoryCSD" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">


.button
{
	font-family : Arial;
	font-size : smaller;
	font-style : normal;
	background-color :rgb(210,180,140);
	font-weight : bold; 
}

    .style1
    {
        color: #003399;
        font-weight: bold;
    }
    .style2
    {
        font-family : Arial;
        font-size : smaller;
        font-style : normal;
        background-color: #66FFFF;
        font-weight : bold;
        color: #003399;
    }
    .style3
    {
        color: #003399;
    }
    .style4
    {
        background-color: #66FFFF;
    }
</style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p class="style1">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>
<p class="style1">
    &nbsp;&nbsp;&nbsp; Create Category&nbsp;</p>
<p>
    <span class="style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
    <table style="width: 396px; color: #003399; margin-left: 116px; background-color: #CCFFFF">
        <tr>
            <td align="left">
                <b>
                <asp:Label ID="categoryLabel" runat="server" CssClass="label" 
                    style="color: #003399">Category:</asp:Label>
                </b>
            </td>
            <td align="left">
                <asp:TextBox ID="categoryTextBox" runat="server" CssClass="textbox" 
                    MaxLength="50" style="font-weight: bold; color: #003399" tabIndex="1" 
                    Width="150px"></asp:TextBox>
                <b>
                <asp:RequiredFieldValidator ID="categoryRequiredFieldValidator" runat="server" 
                    ControlToValidate="categoryTextBox" CssClass="style3" Display="Static" 
                    ErrorMessage="Category Name should be entered">*
						    </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="categoryRegularExpressionValidator" 
                    runat="server" ControlToValidate="categoryTextBox" CssClass="style3" ErrorMessage="Category is not in valid format.
						        Only letters, numbers, spaces, dots, commas, underscores, slashes, plus, hyphens,
						        hashes and brackets are allowed." 
                    ValidationExpression="[\w_,\n\r\s\\\+\.\-/#()]*">*
							</asp:RegularExpressionValidator>
                </b>
            </td>
        </tr>
        <tr>
            <td align="left">
                <b>
                <asp:Label ID="descriptionLabel" runat="server" CssClass="label" 
                    style="color: #003399">Description:</asp:Label>
                </b>
            </td>
            <td align="left">
                <asp:TextBox ID="descriptionTextBox" runat="server" CssClass="textbox" 
                    MaxLength="100" style="font-weight: bold; color: #003399" tabIndex="2" 
                    TextMode="MultiLine" Width="150px"></asp:TextBox>
                <b>
                <asp:RequiredFieldValidator ID="descriptionRequiredFieldValidator" 
                    runat="server" ControlToValidate="descriptionTextBox" CssClass="style3" 
                    Display="Static" ErrorMessage="Category Description must be Entered">*
						    </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="descriptionRegularExpressionValidator" 
                    runat="server" ControlToValidate="descriptionTextBox" CssClass="style3" ErrorMessage="Description is 
						        not in valid format. Only letters, numbers, spaces, dots, commas, underscores, 
						        slashes, plus, hyphens, hashes and brackets are allowed." 
                    ValidationExpression="[\w_,\n\r\s\\\+\.\-/#()]*">*
						    </asp:RegularExpressionValidator>
                <asp:CustomValidator ID="descriptionCustomValidator" runat="server" 
                    ClientValidationFunction="CheckLength_ClientValidate" 
                    ControlToValidate="descriptionTextBox" CssClass="style3" Display="Static" 
                    ErrorMessage="Description cannot exceed 100 characters">*
							</asp:CustomValidator>
                </b>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="addButton" runat="server" CssClass="style2" 
                    OnClick="addButton_Click" tabIndex="3" Text="Add" Width="62px" />
                <span class="style1">&nbsp;<asp:Button ID="btn_cancel" runat="server" 
                    CssClass="style4" onclick="btn_cancel_Click" 
                    style="font-weight: 700; color: #003399" Text="Cancel" />
                </span>
            </td>
        </tr>
    </table>
    <span class="style1">&nbsp;</span></p>
</asp:Content>
