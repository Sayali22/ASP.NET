<%@ Page Title="" Language="C#" MasterPageFile="~/UICSD/HomeCSD.Master" AutoEventWireup="true" CodeBehind="SearchEmployeeCSD.aspx.cs" Inherits="CaseStudyDec2016.UICSD.SearchEmployeeCSD" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    <p>
        <br />
    </p>
    <p>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Arial" 
            Text="Employee Search"></asp:Label>
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Enter First name"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="Fnametb" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" Text="Enter Last Name"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="LNameTb" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="BtnSearch" runat="server" Text="Search" 
            onclick="BtnSearch_Click" CausesValidation="False" />
        <asp:GridView ID="employeeGridView" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="EmployeeId" onrowcommand="employeeGridView_RowCommand" 
            
            >
            <Columns>
                <asp:BoundField DataField="EmployeeId" HeaderText="EmployeeID" />
                <asp:BoundField DataField="FullName" HeaderText="FullName" />
                <asp:BoundField DataField="Level" HeaderText="Level" />
                <asp:ButtonField ButtonType="Button" CommandName="Update_Emp" 
                    HeaderText="Update" Text="Update">
                </asp:ButtonField>
                <asp:HyperLinkField DataNavigateUrlFields="EmployeeId" 
                    DataNavigateUrlFormatString="~/UICSD/ViewEmployeeCSD.aspx?EmployeeId={0}" 
                    NavigateUrl="~/UICSD/ViewEmployeeCSD.aspx" Text="View" />
            </Columns>
        </asp:GridView>
    </p>
    <p>
        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Add New Employee</asp:LinkButton>
    </p>
    <p>
    </p>
</asp:Content>


