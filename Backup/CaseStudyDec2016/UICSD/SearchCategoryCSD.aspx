<%@ Page Title="" Language="C#" MasterPageFile="~/UICSD/HomeCSD.Master" AutoEventWireup="true" CodeBehind="SearchCategoryCSD.aspx.cs" Inherits="CaseStudyDec2016.UICSD.SearchCategoryCSD" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">


        .text
{
	font-family : Arial;
	font-size : small;
	font-style : normal;
	font-weight : bold;
            background-color: #CCFFFF;
        }

.emptyline
{
	height : 5px;
}

    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table>
            <tr>
                <td class="text">
                    Category Search</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="categoryTextBox" Runat="server" CssClass="textbox" 
                        tabIndex="1"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="categoryRequiredFieldValidator" runat="server" 
                        ControlToValidate="categoryTextBox" Display="Static" 
                        ErrorMessage="Please input search criteria">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="categoryRegularExpressionValidator" 
                        runat="server" ControlToValidate="categoryTextBox" 
                        ErrorMessage="Category is an invalid search criteria. Only letters, numbers, spaces, dots, commas, underscores, slashes, plus, hyphens, hashes and brackets are allowed." 
                        ValidationExpression="[\w_,\n\r\s\\\+\.\-/#()]*">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="emptyline">
                </td>
            </tr>
            <tr>
                <td style="background-color: #CCFFFF">
                    <asp:Button ID="searchButton" runat="server" CssClass="button" 
                        onclick="searchButton_Click" tabIndex="2" Text="Search" />
                </td>
            </tr>
            <tr>
                <td class="emptyline">
                </td>
            </tr>
            <tr>
                <td style="font-weight: 700">
                    <asp:LinkButton ID="addCategoryLinkButton" Runat="server" 
                        CausesValidation="False" CssClass="linkbutton" 
                       tabIndex="3" text="Add Category" onclick="addCategoryLinkButton_Click">Add Category</asp:LinkButton>
                </td>
            </tr>
        </table>
        <table width="100%">
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="searchResultGridView" runat="server" 
                        AutoGenerateColumns="False" DataKeyNames="CategoryId" GridLines="None" 
                        HeaderStyle-CssClass="header" HeaderStyle-HorizontalAlign="left" 
                        OnRowCommand="searchResultGridView_RowCommand" 
                        onselectedindexchanged="searchResultGridView_SelectedIndexChanged" 
                        RowStyle-CssClass="griditem" RowStyle-HorizontalAlign="left" tabIndex="4" 
                        Width="79%" style="background-color: #CCFFFF">
                        <Columns>
                            <asp:HyperLinkField DataNavigateUrlFields="CategoryId" 
                                DataNavigateUrlFormatString="ViewCategory.aspx?categoryId={0}" 
                                DataTextField="CategoryName" HeaderText="Category"></asp:HyperLinkField>
                            <asp:ButtonField CommandName="Edit" Text="Edit">
                                <ItemStyle Width="40%" />
                            </asp:ButtonField>
                            <asp:HyperLinkField DataNavigateUrlFields="CategoryId" 
                                DataNavigateUrlFormatString="~/UICSD/ViewCategory.aspx?catId={0}" 
                                NavigateUrl="~/UICSD/ViewCategory.aspx" Text="View" />
                        </Columns>

<HeaderStyle HorizontalAlign="Left" CssClass="header"></HeaderStyle>

<RowStyle HorizontalAlign="Left" CssClass="griditem"></RowStyle>
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        &nbsp;</p>
</asp:Content>
