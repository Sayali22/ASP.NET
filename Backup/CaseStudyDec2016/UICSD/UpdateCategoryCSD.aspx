<%@ Page Title="" Language="C#" MasterPageFile="~/UICSD/HomeCSD.Master" AutoEventWireup="true" CodeBehind="UpdateCategoryCSD.aspx.cs" Inherits="CaseStudyDec2016.UICSD.UpdateCategoryCSD" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .header
{
	background-color : #CCFFFF;
	font-family : Arial;
	font-weight : bold;
	color : White; 
	height : 1px;	
	
}

.emptyline
{
	height : 5px;
}

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
        background-color: #CCFFFF;
        font-family : Arial;
        font-weight : bold;
        color: #000099;
        height : 1px;
    }
    .style2
    {
        height: 181px;
    }
    .style3
    {
        font-weight: bold;
        background-color: #FFCCFF;
    }
    .style4
    {
        font-family : Arial;
        font-size : smaller;
        font-style : normal;
        background-color: #FFCCFF;
        font-weight : bold;
    }
</style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table id="Table1" border="0" cellpadding="1" cellspacing="1" height="100%" 
    width="1005px">
    <tr>
        <td align="center" class="style1" style="HEIGHT: 1px">
            Update Category</td>
    </tr>
    <tr>
        <td class="emptyline">
        </td>
    </tr>
    <tr valign="top">
        <td align="center" class="style2">
            <table style="font-weight: 700; color: #000099; background-color: #CCFFFF">
                <tr>
                    <td align="left">
                        <asp:Label ID="categoryLabel" runat="server" CssClass="label">Category:</asp:Label>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="categoryTextBox" runat="server" AutoPostBack="True" 
                            CssClass="textbox" MaxLength="50" tabIndex="1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="categoryRequiredFieldValidator" runat="server" 
                            ControlToValidate="categoryTextBox" Display="Static" 
                            ErrorMessage="Category Name needs to be entered">*
									</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="categoryRegularExpressionValidator" 
                            runat="server" ControlToValidate="categoryTextBox" 
                            ErrorMessage="Category is not in valid format. Only letters, numbers, spaces, dots, commas, underscores, slashes, plus, hyphens, hashes and brackets are allowed." 
                            ValidationExpression="[\w_,\n\r\s\\\+\.\-/#()]*">*
									</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        <asp:Label ID="descriptionLabel" runat="server" CssClass="label">Description:</asp:Label>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="descriptionTextBox" runat="server" AutoPostBack="True" 
                            tabIndex="2" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="descriptionRequiredFieldValidator" 
                            runat="server" ControlToValidate="descriptionTextBox" Display="Static" 
                            ErrorMessage="Category Description needs to be entered">*
									</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="descriptionRegularExpressionValidator" 
                            runat="server" ControlToValidate="descriptionTextBox" 
                            ErrorMessage="Description is not in valid format. Only letters, numbers, spaces, dots, commas, underscores, slashes, plus, hyphens, hashes and brackets are allowed." 
                            ValidationExpression="[\w_,\n\r\s\\\+\.\-/#()]*">*
									</asp:RegularExpressionValidator>
                        <asp:CustomValidator ID="descriptionCustomValidator" runat="server" 
                            ClientValidationFunction="CheckLength_ClientValidate" 
                            ControlToValidate="descriptionTextBox" Display="Static" 
                            ErrorMessage="Description cannot exceed 100 characters">*
									</asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="2">
                        <asp:Button ID="updateButton" runat="server" CssClass="style4" 
                            onclick="updateButton_Click" tabIndex="3" Text="Update" />
&nbsp;<asp:Button ID="btn_cancel" runat="server" CssClass="style3" onclick="btn_cancel_Click" 
                            Text="Cancel" />
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>
