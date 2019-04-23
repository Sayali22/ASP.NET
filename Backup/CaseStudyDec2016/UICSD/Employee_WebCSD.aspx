<%@ Page Title="" Language="C#" MasterPageFile="~/UICSD/HomeCSD.Master" AutoEventWireup="true" CodeBehind="Employee_WebCSD.aspx.cs" Inherits="CaseStudyDec2016.UICSD.Employee_WebCSD" %>
<%@ Register assembly="DatePickerControl" namespace="DatePickerControl" tagprefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style4
        {
            width: 75px;
            height: 54px;
        }
        .style5
        {
            height: 54px;
        }
        .style7
        {
            width: 75px;
            height: 42px;
        }
        .style8
        {
            height: 42px;
        }
        .style12
        {
            height: 42px;
            width: 257px;
        }
        .style13
        {
            height: 54px;
            width: 257px;
        }
        .style18
        {
            width: 75px;
            height: 56px;
        }
        .style20
        {
            height: 56px;
        }
        .style21
        {
            height: 56px;
            width: 257px;
        }
        .style22
        {
            height: 23px;
            text-align: center;
            color: #006600;
        }
        .style23
        {
            width: 75px;
            height: 72px;
        }
        .style25
        {
            height: 72px;
        }
        .style26
        {
            height: 72px;
            width: 257px;
        }
        .style27
        {
            width: 75px;
            height: 91px;
        }
        .style29
        {
            height: 91px;
        }
        .style30
        {
            height: 91px;
            width: 257px;
        }
        .style31
        {
            height: 23px;
            font-weight: 700;
            color: #006600;
            text-align: center;
        }
        .style48
        {
            width: 75px;
            height: 62px;
        }
        .style50
        {
            height: 62px;
        }
        .style51
        {
            height: 62px;
            width: 257px;
        }
        .style52
        {
            width: 75px;
            height: 47px;
        }
        .style54
        {
            height: 47px;
        }
        .style55
        {
            height: 47px;
            width: 257px;
        }
        .style56
        {
            width: 75px;
            height: 55px;
        }
        .style58
        {
            height: 55px;
        }
        .style59
        {
            height: 55px;
            width: 257px;
        }
        .style60
        {
            height: 26px;
            text-align: center;
            color: #006600;
        }
        .style61
        {
            width: 75px;
            height: 70px;
        }
        .style62
        {
            height: 70px;
        }
        .style63
        {
            height: 70px;
            width: 257px;
        }
        .style64
        {
            width: 75px;
            height: 77px;
        }
        .style65
        {
            height: 77px;
        }
        .style66
        {
            height: 77px;
            width: 257px;
        }
        .style67
        {
            width: 75px;
            height: 87px;
        }
        .style68
        {
            height: 87px;
        }
        .style69
        {
            height: 87px;
            width: 257px;
        }
        .style70
        {
            width: 75px;
            height: 96px;
        }
        .style71
        {
            height: 96px;
        }
        .style72
        {
            height: 96px;
            width: 257px;
        }
        .style73
        {
            width: 75px;
            height: 84px;
        }
        .style74
        {
            height: 84px;
        }
        .style75
        {
            height: 84px;
            width: 257px;
        }
        .style76
        {
            width: 75px;
            height: 118px;
        }
        .style77
        {
            height: 118px;
        }
        .style78
        {
            height: 118px;
            width: 257px;
        }
        .style79
        {
            height: 42px;
            width: 271px;
        }
        .style80
        {
            height: 54px;
            width: 271px;
        }
        .style81
        {
            height: 56px;
            width: 271px;
        }
        .style82
        {
            height: 72px;
            width: 271px;
        }
        .style83
        {
            height: 91px;
            width: 271px;
        }
        .style84
        {
            height: 62px;
            width: 271px;
        }
        .style85
        {
            height: 47px;
            width: 271px;
        }
        .style86
        {
            height: 55px;
            width: 271px;
        }
        .style87
        {
            height: 70px;
            width: 271px;
        }
        .style88
        {
            height: 77px;
            width: 271px;
        }
        .style89
        {
            height: 87px;
            width: 271px;
        }
        .style90
        {
            height: 96px;
            width: 271px;
        }
        .style91
        {
            height: 84px;
            width: 271px;
        }
        .style92
        {
            height: 118px;
            width: 271px;
        }
        .style94
        {
            height: 33px;
            color: #006600;
            text-align: center;
        }
        .style95
        {
            width: 75px;
            height: 106px;
        }
        .style96
        {
            height: 106px;
            width: 271px;
        }
        .style97
        {
            height: 106px;
        }
        .style98
        {
            height: 106px;
            width: 257px;
        }
        .style99
        {
            width: 75px;
            height: 25px;
        }
        .style100
        {
            height: 25px;
            width: 271px;
        }
        .style101
        {
            height: 25px;
        }
        .style102
        {
            height: 25px;
            width: 257px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    <p style="table-layout: fixed; empty-cells: show">
        <br />
    </p>
    <p>
        <table style="width: 100%; height: 554px; color: #000066; background-color: #66CCFF;">
            <tr>
                <td class="style7">
                    First Name:</td>
                <td class="style79">
                    <asp:TextBox ID="FNtb" runat="server" style="text-align: justify"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="FNtb" ErrorMessage="*Required Field"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="FNtb" ErrorMessage="Invalid Name" 
                        ValidationExpression="[\w_\s\.-]*"></asp:RegularExpressionValidator>
                </td>
                <td class="style8">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Middle Name:
                </td>
                <td class="style12">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="MNtb" runat="server" 
                        style="text-align: right"></asp:TextBox>
&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="*Required Field" ControlToValidate="MNtb"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Last Name:</td>
                <td class="style80">
                    <asp:TextBox ID="LNtb" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="LNtb" ErrorMessage="Invalid name" 
                        ValidationExpression="[\w_\s\.-]*"></asp:RegularExpressionValidator>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="LNtb" ErrorMessage="*Required Field"></asp:RequiredFieldValidator>
                </td>
                <td class="style5">
                    Date of Birth
                    <asp:CustomValidator ID="CustomValidator1" runat="server" 
                        ErrorMessage="*Enter Correct Date*" ControlToValidate="DOB1"></asp:CustomValidator>
                </td>
                <td class="style13">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <cc1:DatePicker ID="DOB1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="style18">
                    Civil Status:</td>
                <td class="style81">
                    <asp:DropDownList ID="DDL_CS" runat="server">
                    </asp:DropDownList>
                </td>
                <td class="style20">
                    Gender:</td>
                <td class="style21">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DDL_gender" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style22" colspan="4">
                    <strong>CIVIL INFORMATION</strong></td>
            </tr>
            <tr>
                <td class="style23">
                    SSS<br />
                    Number:</td>
                <td class="style82">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ControlToValidate="SSStb" ErrorMessage="Invalid number" 
                        ValidationExpression="[0-9\s-]*"></asp:RegularExpressionValidator>
                    <asp:TextBox ID="SSStb" runat="server"></asp:TextBox>
&nbsp;</td>
                <td class="style25">
                    Citizenship:</td>
                <td class="style26">
                    <asp:TextBox ID="Citizentb" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                        ControlToValidate="Citizentb" ErrorMessage="Invalid" 
                        ValidationExpression="[\w_\s\.-]*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style27">
                    TIN Number:</td>
                <td class="style83">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                        ControlToValidate="TINtb" ErrorMessage="Invalid number" 
                        ValidationExpression="[0-9\s-]*S"></asp:RegularExpressionValidator>
                    <asp:TextBox ID="TINtb" runat="server"></asp:TextBox>
                </td>
                <td class="style29">
                    Status:</td>
                <td class="style30">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                        ControlToValidate="Statustb" ErrorMessage="Invalid status" 
                        ValidationExpression="[\w_\s\.-]*"></asp:RegularExpressionValidator>
                    <asp:TextBox ID="Statustb" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style31" colspan="4">
                    HOME ADDRESS</td>
            </tr>
            <tr>
                <td class="style48">
                    Street 1:</td>
                <td class="style84">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                        ControlToValidate="Street1tb" ErrorMessage="Invalid Street" 
                        ValidationExpression="[\w_,\n\r\s\\\+\.\-/#()]*"></asp:RegularExpressionValidator>
                    <asp:TextBox ID="Street1tb" runat="server"></asp:TextBox>
                </td>
                <td class="style50">
                    Mobile No.</td>
                <td class="style51">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator11" 
                        runat="server" ControlToValidate="Mobiletb" ErrorMessage="Invalid Number" 
                        ValidationExpression="[\w_,\n\r\s\\\+\.\-/#()]*"></asp:RegularExpressionValidator>
                    <asp:TextBox ID="Mobiletb" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style48">
                    Street 2:</td>
                <td class="style84">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
                        ControlToValidate="Street2tb" ErrorMessage="Invalid Street" 
                        ValidationExpression="[\w_,\n\r\s\\\+\.\-/#()]*"></asp:RegularExpressionValidator>
                    <asp:TextBox ID="Street2tb" runat="server"></asp:TextBox>
                </td>
                <td class="style50">
                    LandLine no.</td>
                <td class="style51">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator12" 
                        runat="server" ControlToValidate="Landlinetb" ErrorMessage="Invalid number" 
                        ValidationExpression="[\w_,\n\r\s\\\+\.\-/#()]*"></asp:RegularExpressionValidator>
                    <asp:TextBox ID="Landlinetb" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style52">
                    City:</td>
                <td class="style85">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" 
                        ControlToValidate="Citytb" ErrorMessage="Invalid City" 
                        ValidationExpression="[\w_,\n\r\s\\\+\.\-/#()]*"></asp:RegularExpressionValidator>
                    <asp:TextBox ID="Citytb" runat="server"></asp:TextBox>
                </td>
                <td class="style54">
                    State:</td>
                <td class="style55">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator13" 
                        runat="server" ControlToValidate="StateTb" ErrorMessage="Invalid State" 
                        ValidationExpression="[\w_,\n\r\s\\\+\.\-/#()]*"></asp:RegularExpressionValidator>
                    <asp:TextBox ID="StateTb" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style56">
                    Country:</td>
                <td class="style86">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator10" 
                        runat="server" ControlToValidate="Countrytb" ErrorMessage="Invalid Country" 
                        ValidationExpression="[\w_,\n\r\s\\\+\.\-/#()]*"></asp:RegularExpressionValidator>
                    <asp:TextBox ID="Countrytb" runat="server"></asp:TextBox>
                </td>
                <td class="style58">
                </td>
                <td class="style59">
                </td>
            </tr>
            <tr>
                <td class="style60" colspan="4">
                    <strong>ACCENTURE&nbsp; INFORMATION</strong></td>
            </tr>
            <tr>
                <td class="style61">
                    Email Address:</td>
                <td class="style87">
                    <asp:TextBox ID="Emailtb" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator14" 
                        runat="server" ControlToValidate="Emailtb" ErrorMessage="Invalid email" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                <td class="style62">
                    Enterprise ID:</td>
                <td class="style63">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator21" 
                        runat="server" ControlToValidate="Enterprisetb" ErrorMessage="Invalid ID" 
                        ValidationExpression="[\w_,\n\r\s\\\+\.\-/#()]*"></asp:RegularExpressionValidator>
                    <asp:TextBox ID="Enterprisetb" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style64">
                    GMU:</td>
                <td class="style88">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator15" 
                        runat="server" ControlToValidate="GMUtb" ErrorMessage="Invalid GMU" 
                        ValidationExpression="[\w]*"></asp:RegularExpressionValidator>
                    <asp:TextBox ID="GMUtb" runat="server"></asp:TextBox>
                </td>
                <td class="style65">
                    Level</td>
                <td class="style66">
                    <asp:DropDownList ID="DDL_level" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style67">
                    LMU:</td>
                <td class="style89">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator16" 
                        runat="server" ControlToValidate="LMUtb" ErrorMessage="Invalid LMU" 
                        ValidationExpression="[\w]*"></asp:RegularExpressionValidator>
                    <asp:TextBox ID="LMUtb" runat="server"></asp:TextBox>
                </td>
                <td class="style68">
                    Date Hired:</td>
                <td class="style69">
                    <cc1:DatePicker ID="Date1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="style70">
                    Work Group:</td>
                <td class="style90">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator17" 
                        runat="server" ControlToValidate="WorkGrouptb" ErrorMessage="Invalid WorkGroup" 
                        ValidationExpression="[\w_,\n\r\s\\\+\.\-/#()]*"></asp:RegularExpressionValidator>
                    <asp:TextBox ID="WorkGrouptb" runat="server"></asp:TextBox>
                </td>
                <td class="style71">
                    Status:</td>
                <td class="style72">
                    <asp:TextBox ID="Status" runat="server" ></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator23" 
                        runat="server" ControlToValidate="Status" ErrorMessage="Invalid status" 
                        ValidationExpression="[\w_\s\.-]*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style73">
                    Speciality:</td>
                <td class="style91">
                    <asp:DropDownList ID="DDL_spl" runat="server">
                    </asp:DropDownList>
                </td>
                <td class="style74">
                    Service Line:</td>
                <td class="style75">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator18" 
                        runat="server" ControlToValidate="ServiceLinetb" 
                        ErrorMessage="Invalid Service Line" 
                        ValidationExpression="[\w_,\n\r\s\\\+\.\-/#()]*"></asp:RegularExpressionValidator>
                    <asp:TextBox ID="ServiceLinetb" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style60" colspan="4">
                    <strong>EDUCATION BACKGROUND</strong></td>
            </tr>
            <tr>
                <td class="style76">
                </td>
                <td class="style92" colspan="2">
                    <asp:TextBox ID="EduBacktb" runat="server" Height="62px" 
                        style="margin-top: 0px" TextMode="MultiLine" Width="237px"></asp:TextBox>
                </td>
                <td class="style77">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator19" 
                        runat="server" ControlToValidate="EduBacktb" 
                        ErrorMessage="Invalid Educational Background" 
                        ValidationExpression="[\w_,\n\r\s\\\+\.\-/#()]*"></asp:RegularExpressionValidator>
                </td>
                <td class="style78">
                </td>
            </tr>
            <tr>
                <td class="style94" colspan="4">
                    <strong>CERTIFICATES/AWARDS</strong></td>
            </tr>
            <tr>
                <td class="style95">
                </td>
                <td class="style96" colspan="2">
                    <asp:TextBox ID="Certitb" runat="server" Height="60px" style="margin-left: 0px" 
                        TextMode="MultiLine" Width="246px"></asp:TextBox>
                </td>
                <td class="style97">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator20" 
                        runat="server" ControlToValidate="Certitb" ErrorMessage="Invalid Recognition" 
                        ValidationExpression="[\w_,\n\r\s\\\+\.\-/#()]*"></asp:RegularExpressionValidator>
                </td>
                <td class="style98">
                </td>
            </tr>
            <tr>
                <td class="style99">
                </td>
                <td class="style100">
                    <asp:Button ID="Add" runat="server" Text="Add" Width="88px" 
                        onclick="Add_Click" CausesValidation="False" />
                </td>
                <td class="style101">
                </td>
                <td class="style102">
                    <asp:Button ID="Cancel" runat="server" Text="Cancel" />
                </td>
            </tr>
        </table>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>


