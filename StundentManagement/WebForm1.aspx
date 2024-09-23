<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="StundentManagement.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 33px; width: 524px">
            <asp:Label ID="Label1" runat="server" Text="Course"></asp:Label>
            <div>
            </div>
        </div>
        <div>
            <asp:Label ID="Label2" runat="server" Text="Course Name     "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="courseName" runat="server"></asp:TextBox>
            <asp:Button ID="AddCourse" runat="server" OnClick="AddCourse_Click" Text="Add Course" />
            <br />
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cours_id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="cours_id" HeaderText="cours_id" InsertVisible="False" ReadOnly="True" SortExpression="cours_id" />
                <asp:BoundField DataField="course_name" HeaderText="course_name" SortExpression="course_name" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:test-oneConnectionString %>" ProviderName="<%$ ConnectionStrings:test-oneConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Course]"></asp:SqlDataSource>
    <p>
        Class Table</p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Course ID"></asp:Label>
            <asp:TextBox ID="course_id" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="class_name" runat="server" Text="Class Name"></asp:Label>
            <asp:TextBox ID="className" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="AddClass" runat="server" OnClick="AddClass_Click" Text="AddClass" />
        </p>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="class_id" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="class_id" HeaderText="class_id" InsertVisible="False" ReadOnly="True" SortExpression="class_id" />
                <asp:BoundField DataField="course_id" HeaderText="course_id" SortExpression="course_id" />
                <asp:BoundField DataField="class_name" HeaderText="class_name" SortExpression="class_name" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:test-oneConnectionString %>" SelectCommand="SELECT * FROM [Class]"></asp:SqlDataSource>
        <br />
        <br />
    </form>
    </body>
</html>
