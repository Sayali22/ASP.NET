<%@ Page Title="" Language="C#" MasterPageFile="~/UICSD/HomeCSD.Master" AutoEventWireup="true" CodeBehind="SearchProjectCSD.aspx.cs" Inherits="CaseStudyDec2016.UICSD.SearchProjectCSD" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 835px;
            background-color: #99CCFF;
        }
        .label
        {
            color: #0000FF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
        <table style="width: 87%; height: 116px; font-weight: 700; color: #000099;">
            <tr>
                <td class="style1">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Project Search:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="projectNameTextBox" runat="server" MaxLength="50" 
                        Width="287px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="projectNameRequiredFieldValidator" runat="server" 
                        ControlToValidate="projectNameTextBox" Display="Static" 
                        ErrorMessage="Please input search criteria.">*</asp:RequiredFieldValidator>
&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="projectNameRegularExpressionValidator" 
                        Runat="Server" ControlToValidate="projectNameTextBox" Display="Static" 
                        ErrorMessage="Project is an invalid search criteria. Only letters, numbers, spaces, dots, commas, underscores, slashes, plus, hyphens, hashes and brackets are allowed." 
                        ValidationExpression="[\w_,\n\r\s\\\+\.\-/#()]*">*</asp:RegularExpressionValidator>
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="searchButton" runat="server" Text="Search" 
                        onclick="searchButton_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="addLinkButton" runat="server" CausesValidation="False" 
                        onclick="addLinkButton_Click">Add Project</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
            </tr>
        </table>
        <br />
        <asp:Label ID="recordCountLabel" Runat="server" CssClass="label"></asp:Label>
    </p>
    <table style="width:100%;">
        <tr>
            <td>
&nbsp;<asp:GridView ID="projectGridView" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="ProjId" GridLines="None" HeaderStyle-CssClass="header" 
                    HeaderStyle-HorizontalAlign="Center" OnRowCommand="projectGridView_RowCommand" 
                    RowStyle-CssClass="griditem" RowStyle-HorizontalAlign="Center" 
                    style="color: #000099; background-color: #99CCFF" tabIndex="4" Width="75%" 
                    onselectedindexchanged="projectGridView_SelectedIndexChanged">
                    <Columns>
                        <asp:HyperLinkField DataNavigateUrlFields="ProjId" 
                            DataNavigateUrlFormatString="ViewProject.aspx?ProjId={0}" 
                            DataTextField="ProjName" HeaderStyle-HorizontalAlign="left" 
                            HeaderText="Project Name" itemStyle-HorizontalAlign="left" >
<HeaderStyle HorizontalAlign="Left"></HeaderStyle>

<ItemStyle HorizontalAlign="Left"></ItemStyle>
                        </asp:HyperLinkField>
                        <asp:BoundField DataField="StartDate" DataFormatString="{0:MMMM dd, yyyy}" 
                            HeaderText="Start Date" />
                        <asp:BoundField DataField="EndDate" DataFormatString="{0:MMMM dd, yyyy}" 
                            HeaderText="End Date" />
                        <asp:ButtonField CommandName="Edit" Text="Edit">
                        <ItemStyle Width="10%" />
                        </asp:ButtonField>
                        <asp:HyperLinkField DataNavigateUrlFields="ProjId" 
                            DataNavigateUrlFormatString="~/UICSD/ViewProjectCSD.aspx?ProjId={0}" 
                            NavigateUrl="~/UICSD/ViewProjectCSD.aspx" Text="View" />
                    </Columns>

<HeaderStyle HorizontalAlign="Center" CssClass="header"></HeaderStyle>

<RowStyle HorizontalAlign="Center" CssClass="griditem"></RowStyle>
                </asp:GridView>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <asp:ValidationSummary ID="searchProjectValidationSummary" Runat="server" 
                    ShowMessageBox="True" ShowSummary="False" 
                    style="color: #000099; background-color: #99CCFF" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
