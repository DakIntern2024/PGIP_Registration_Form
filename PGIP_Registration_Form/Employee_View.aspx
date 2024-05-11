<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee_View.aspx.cs" Inherits="PGIP_Registration_Form.Employee_View" %>
 <style>
    body {
        background-color: #f5f5f5;
    }
</style>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employee View</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Employee List</h1>
            <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
            <asp:GridView ID="GridViewEmployees" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="EmployeeID" HeaderText="ID" />
                    <asp:BoundField DataField="FirstName" HeaderText="First Name" />
                    <asp:BoundField DataField="LastName" HeaderText="Last Name" />
                    <asp:BoundField DataField="Email" HeaderText="Email" />
                    <asp:BoundField DataField="DateOfBirth" HeaderText="Date of Birth" />
                    <asp:BoundField DataField="Department" HeaderText="Department" />
                    <asp:BoundField DataField="State" HeaderText="State" />
                    <asp:BoundField DataField="Address" HeaderText="Address" />
                    <asp:BoundField DataField="Zipcode" HeaderText="Zipcode" />
                    <asp:BoundField DataField="Country" HeaderText="Country" />
                    <asp:BoundField DataField="ContactNo" HeaderText="Contact No" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>