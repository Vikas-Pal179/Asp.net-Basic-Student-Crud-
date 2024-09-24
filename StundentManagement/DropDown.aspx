<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DropDown.aspx.cs" Inherits="StundentManagement.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="course_name" DataValueField="course_name">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:test-oneConnectionString %>" SelectCommand="SELECT * FROM [Course]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
