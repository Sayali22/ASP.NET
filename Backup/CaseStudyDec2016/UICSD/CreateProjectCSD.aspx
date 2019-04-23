<%@ Page Title="" Language="C#" MasterPageFile="~/UICSD/HomeCSD.Master" AutoEventWireup="true" CodeBehind="CreateProjectCSD.aspx.cs" Inherits="CaseStudyDec2016.UICSD.CreateProjectCSD" %>
<%@ Register assembly="DatePickerControl" namespace="DatePickerControl" tagprefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
    {
        width: 72%;
        height: 95px;
        margin-left: 240px;
        background-color: #99CCFF;
            margin-right: 0px;
        }
    .style2
    {
        height: 23px;
        width: 290px;
    }
    .style3
    {
        height: 17px;
        width: 290px;
    }
    .style4
    {
        font-weight: bold;
        color: #003399;
    }
    .style5
    {
        color: #003399;
    }
    .style6
    {
        height: 17px;
        width: 101px;
    }
    .style7
    {
        width: 101px;
    }
    .style8
    {
        height: 23px;
        width: 101px;
    }
    .style9
    {
        width: 290px;
    }
    #cancelButton
    {
        width: 73px;
    }
        .style10
        {
            width: 101px;
            height: 28px;
        }
        .style11
        {
            width: 290px;
            height: 28px;
        }
    </style>
    <script language="javascript" type="text/javascript">

        

    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p style="font-weight: 700; background-color: #99CCFF">
    &nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    Add Project</p>

<table class="style1">
    <tr>
        <td class="style6">
            <asp:Label ID="Label1" runat="server" CssClass="style5" 
                style="font-weight: 700" Text="Project Name :"></asp:Label>
        </td>
        <td class="style3">
            <asp:TextBox ID="projectNameTextBox" runat="server" MaxLength="50" 
                Width="190px"></asp:TextBox>
&nbsp;
            <asp:RequiredFieldValidator ID="projectNameRequiredFieldValidator" 
                runat="server" ControlToValidate="projectNameTextBox" 
                ErrorMessage="Project Name is the required field" ForeColor="Red">*</asp:RequiredFieldValidator>
        &nbsp;
            <asp:RegularExpressionValidator ID="RegularExprprojectNameRegularExpressionValidatoressionValidator1" 
                runat="server" ControlToValidate="projectNameTextBox" 
                ErrorMessage="Project Name is not in valid format. Only letters, numbers, spaces, " 
                ForeColor="Red" ValidationExpression="[\w_,\n\r\s\\\+\.\-/#()]*">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="style7">
            <asp:Label runat="server" CssClass="style4" Text="Start Date:"></asp:Label>
        </td>
        <td class="style9">
            &nbsp;
            <cc1:DatePicker ID="startDate" runat="server" />
            <asp:Image ID="startDateImg" runat="server" 
                ImageUrl="~/CommonCSD/Images/calendar.JPG" Width="25px" />
&nbsp;
            </td>
    </tr>
    <tr>
        <td class="style8">
            <asp:Label ID="Label3" runat="server" CssClass="style4" Text="End Date:"></asp:Label>
        </td>
        <td class="style2">
            &nbsp;<cc1:DatePicker ID="endDate" runat="server" />
&nbsp;<asp:Image ID="startDateImg0" runat="server" 
                ImageUrl="~/CommonCSD/Images/calendar.JPG" Width="28px" />
&nbsp;&nbsp;
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style7">
            <asp:Label ID="Label4" runat="server" CssClass="style4" Text="Client :"></asp:Label>
        </td>
        <td class="style9">
            <asp:TextBox ID="clientTextBox" runat="server" MaxLength="50" Width="190px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="clientRequiredFieldValidator" runat="server" 
                ErrorMessage="Client is the required field" ForeColor="Red" 
                ControlToValidate="clientTextBox">*</asp:RequiredFieldValidator>
        &nbsp;<asp:RegularExpressionValidator ID="clientRegularExpressionValidator" 
                runat="server" ControlToValidate="clientTextBox" 
                ErrorMessage="Client is not in valid format. Only letters, numbers, spaces, dots, " 
                ForeColor="Red" ValidationExpression="[\w_,\n\r\s\\\+\.\-/#()]*">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="style7">
            <asp:Label ID="Label5" runat="server" CssClass="style4" Text="Description:"></asp:Label>
        </td>
        <td class="style9">
            <asp:TextBox ID="descriptionTextBox" runat="server" Height="46px" 
                MaxLength="100" TextMode="MultiLine" Width="221px"></asp:TextBox>
            &nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="descriptionRequiredFieldValidator" 
                runat="server" ErrorMessage="Description is the required field" 
                ForeColor="Red" ControlToValidate="descriptionTextBox">*</asp:RequiredFieldValidator>
        &nbsp;<asp:RegularExpressionValidator ID="descriptionRegularExpressionValidator" 
                runat="server" ControlToValidate="descriptionTextBox" 
                ErrorMessage="Description is not in valid format. Only letters, numbers, spaces, dots,
						        commas, underscores, slashes, plus, hyphens, hashes and brackets are allowed." 
                ForeColor="Red" ValidationExpression="[\w_,\n\r\s\\\+\.\-/#()]*">*</asp:RegularExpressionValidator>
&nbsp;<asp:CustomValidator ID="descriptionCustomValidator" runat="server" 
                ClientValidationFunction="CheckLength_ClientValidate" 
                ControlToValidate="descriptionTextBox" 
                ErrorMessage="Description should not exceed 100 characters." ForeColor="Red">*</asp:CustomValidator>
        </td>
    </tr>
    <tr>
        <td class="style10">
        </td>
        <td class="style11">
&nbsp;&nbsp;
            <asp:Button ID="saveButton" runat="server" Text="Save" Width="64px" 
                onclick="saveButton_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                ID="btn_Cancel" runat="server" onclick="btn_Cancel_Click" Text="Cancel" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
    </tr>
</table>
<p>
    &nbsp;</p>
    <asp:ValidationSummary ID="createProjectValidationSummary" runat="server" 
        ForeColor="Red" ShowMessageBox="True" ShowSummary="False" />
</asp:Content>
