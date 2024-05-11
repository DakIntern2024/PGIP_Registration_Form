<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Employee_reg.aspx.cs" Inherits="PGIP_Registration_Form.Employee_reg" %>
<asp:content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <style>
        body {
            background-color: #f5f5f5;
        }
        .dark-gray-border {
            border: 1px solid #333; 
        }
    </style>

    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <section id="main-content"></section>
                <section class="wrapper"></section>

                <div class="row">
                    <div class="col-lg-12">
                        <section class="panel">
                            <header class="panel-heading text-center" style="font-size: 10px;">
                                <div class="col-md-6 col-md-offset-4">
                                    <h2 class ="text-center">Employee Registration Form</h2><br />
   
                                  </div>
                            </header>
                            <div class="panel-body">
                                <table class="table">
                                    <tr>
                                        <td>
                                            <style></style>
                                            <asp:Label runat="server" AssociatedControlID="txtemployeeFname"><b>First Name:</b></asp:Label><br />
                                            <asp:TextBox runat="server" required="required" Enabled="True" name="BrandName" ID="txtemployeeFname" class="form-control input-group-sm" placeholder="Enter First Name"></asp:TextBox><br />
                                        </td>
                                        <td>
                                            <asp:Label runat="server" AssociatedControlID="txtemployeeLname"><b>Last Name:</b></asp:Label><br />
                                            <asp:TextBox runat="server" required="required" Enabled="True" name="BrandName" ID="txtemployeeLname" class="form-control input-group-sm" placeholder="Enter Last Name"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label runat="server" AssociatedControlID="txtemployeeno"><b>Employee ID:</b></asp:Label><br />
                                            <asp:TextBox runat="server" required="required" Enabled="True" Name="BrandName" ID="txtemployeeno" class="form-control input-group-sm" placeholder="Enter Employee ID"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:Label runat="server" AssociatedControlID="txtemployeeEmail"><b>Email:</b></asp:Label><br />
                                            <asp:TextBox runat="server" required="required" Enabled="True" Name="BrandName" ID="txtemployeeEmail" class="form-control input-group-sm" placeholder="Enter Email Address"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label runat="server" AssociatedControlID="txtcontact"><b>Contact No:</b></asp:Label><br />
                                            <asp:TextBox runat="server" required="required" Enabled="True" TextMode="Number" Name="BrandName" ID="txtcontact" class="form-control input-group-sm" placeholder="Enter Contact Number"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:Label runat="server" AssociatedControlID="txtgender"><b>Gender:</b></asp:Label><br />
                                            <asp:RadioButtonList CssClass="form-group" ID="txtgender" runat="server">
                                                <asp:ListItem Text="Male" />
                                                <asp:ListItem Text="Female" />
                                                <asp:ListItem Text="Other" />
                                            </asp:RadioButtonList>
                                        </td>
                                    </tr>
                                    <asp:HiddenField ID="hdnMessage" runat="server" />
                                    <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                                    <tr>
                                        <td colspan="2">
                                            <asp:Label runat="server" AssociatedControlID="txtaddress"><b>Address:</b></asp:Label><br />
                                            <asp:TextBox runat="server" required="required" Enabled="True" Name="BrandName" ID="txtaddress" class="form-control input-group-sm" placeholder="Enter Address"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label runat="server" AssociatedControlID="txtcity"><b>City:</b></asp:Label><br />
                                            <asp:TextBox runat="server" required="required" Enabled="True" Name="BrandName" ID="txtcity" class="form-control input-group-sm" placeholder="Enter City"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:Label runat="server" AssociatedControlID="txtstate"><b>State:</b></asp:Label><br />
                                            <asp:DropDownList ID="txtstate" CssClass="form-control input-sm" runat="server" >
                                                <asp:ListItem Text="Alabama" />
                                                <asp:ListItem Text="Florida" />
                                                <asp:ListItem Text="Connecticut" />
                                                <asp:ListItem Text="Illinois" />
                                                <asp:ListItem Text="Maine" />
                                                <asp:ListItem Text="Maryland" />
                                                <asp:ListItem Text="New Jersey" />
                                                <asp:ListItem Text="New  York" />
                                                <asp:ListItem Text="Texas" />
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label runat="server" AssociatedControlID="txtzipcode"><b>Zip Code:</b></asp:Label><br />
                                            <asp:TextBox runat="server" required="required" Enabled="True" Name="BrandName" ID="txtzipcode" class="form-control input-group-sm" placeholder="Enter Zip Code"></asp:TextBox>
                                        </td>
                                       <td>
                                            <asp:Label runat="server" AssociatedControlID="txtcountry"><b>Country:</b></asp:Label><br />
                                            <asp:DropDownList ID="txtcountry" CssClass="form-control input-sm" runat="server" >
                                                <asp:ListItem Text="Select Country" />
                                                <asp:ListItem Text="USA" />
                                                <asp:ListItem Text="Canada" />
                                                <asp:ListItem Text="UK" />                                                                             
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:Label runat="server" AssociatedControlID="txtdob"><b>Date of Birth:</b></asp:Label><br />
                                            <asp:TextBox runat="server" required="required" TextMode="Date" Enabled="True" Name="BrandName" ID="txtdob" class="form-control input-group-sm" placeholder="Select Date of Birth"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:Label runat="server" AssociatedControlID="txtdepartment"><b>Department:</b></asp:Label><br />
                                            <asp:TextBox runat="server" required="required" Enabled="True" Name="BrandName" ID="txtdepartment" class="form-control input-group-sm" placeholder="Enter Department"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                                <div class="row justify-content-center">
                                    <div class="col-md-8">
                                         <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" Color="#0099FF" style="margin-right: 50px;" />
                                         <asp:Button ID="Button" runat="server" Text="Clear" OnClick="btnclear_Click" CssClass="mr-2" Color="#0099FF" />
                                    </div>
                               </div>
                            </div>
                        </section>
                    </div>
                </div>
            </div>
         </div>
    </div>
</asp:Content>