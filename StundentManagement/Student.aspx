<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="StundentManagement.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Roll No"></asp:Label>
            <asp:TextBox ID="rollNo" runat="server"></asp:TextBox>
            <br />
        </div>
        <div>
            <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
            <asp:TextBox ID="name" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Classsdsad" runat="server" Text="Class"></asp:Label>
            <asp:TextBox ID="classs" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label5" runat="server" Text="Course"></asp:Label>
            <asp:DropDownList ID="course" runat="server" DataSourceID="SqlDataSource1" DataTextField="course_name" DataValueField="course_name">
            </asp:DropDownList>
        </div>
        <div>
            <asp:Label ID="Label6" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="email" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label7" runat="server" Text="Mobile"></asp:Label>
            <asp:TextBox ID="mobile" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label8" runat="server" Text="Dob"></asp:Label>
            <asp:TextBox ID="dob" runat="server"></asp:TextBox>
        </div>
        <br />
        <asp:Button ID="addStudent" runat="server" OnClick="addStudent_Click" Text="Add Student " />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="updateStudent" runat="server" OnClick="updateStudent_Click" Text="Update Student" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="search" runat="server" OnClick="search_Click" Text="Search" />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="delete" runat="server" OnClick="delete_Click" style="height: 35px" Text="Delete" />
        <br />
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="true">
        </asp:GridView>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ernollno" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="ernollno" HeaderText="ernollno" InsertVisible="False" ReadOnly="True" SortExpression="ernollno" />
                <asp:BoundField DataField="rollno" HeaderText="rollno" SortExpression="rollno" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="class" HeaderText="class" SortExpression="class" />
                <asp:BoundField DataField="course" HeaderText="course" SortExpression="course" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile" />
                <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:test-oneConnectionString %>" SelectCommand="SELECT * FROM [Student]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:test-oneConnectionString %>" SelectCommand="SELECT * FROM [Course]"></asp:SqlDataSource>
        <br />
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
