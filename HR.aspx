<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HR.aspx.cs" Inherits="PROGPOE.HR" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>HR Users</title>
    <style>
         body {
     font-family: Arial, sans-serif;
     background-color: white;
     color: black;
 }
 h2 {
     color: #007bff;
     text-align: center;
 }
 table {
     width: 100%;
     border-collapse: collapse;
     margin-top: 20px;
 }
 table, th, td {
     border: 1px solid #007bff;
 }
 th, td {
     padding: 10px;
     text-align: left;
 }
 th {
     background-color: #007bff;
     color: white;
 }
 .action-button {
     background-color: #28a745;
     color: white;
     padding: 5px 10px;
     border: none;
     border-radius: 5px;
     cursor: pointer;
     margin-right: 5px;
 }
 .action-button.reject {
     background-color: #dc3545;
 }
 .navigation-button {
     margin-top: 20px;
     padding: 10px 20px;
     background-color: #007bff;
     color: white;
     border: none;
     border-radius: 5px;
     cursor: pointer;
 }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <ul>
                <li><a href="ClaimSubmission.aspx">Lecture</a></li>
                <li><a href="ViewClaims.aspx">ProgrammeCoordinator.</a></li>
                <li><a href="ClaimTracking.aspx"> Manager</a></li>
                <li><a href="HRUsers.aspx">HR</a></li>
            </ul>
            <h2>HR Users</h2>
            <asp:GridView ID="gvClaims" runat="server" AutoGenerateColumns="False" 
    OnRowEditing="gvClaims_RowEditing" OnRowUpdating="gvClaims_RowUpdating" 
    OnRowCancelingEdit="gvClaims_RowCancelingEdit" DataKeyNames="ClaimNo">
    <Columns>
        <asp:BoundField DataField="ClaimNo" HeaderText="Claim No" ReadOnly="true" SortExpression="ClaimNo" />
        <asp:BoundField DataField="LecturerName" HeaderText="Lecturer Name" SortExpression="LecturerName" />
        <asp:BoundField DataField="ProgramCode" HeaderText="Program Code" SortExpression="ProgramCode" />
        <asp:BoundField DataField="ModuleCode" HeaderText="Module Code" SortExpression="ModuleCode" />
        <asp:BoundField DataField="Rate" HeaderText="Rate/hr" SortExpression="Rate" />
        <asp:BoundField DataField="Hours" HeaderText="Hours" SortExpression="Hours" />
        <asp:BoundField DataField="ClaimAmount" HeaderText="Claim Amount" SortExpression="ClaimAmount" />
        <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
        <asp:CommandField ShowEditButton="True" ShowCancelButton="True" />
    </Columns>
</asp:GridView>

            <asp:Button ID="btnExport" runat="server" Text="Export as Invoice" CssClass="button" OnClick="btnExport_Click" />
        </div>
    </form>
</body>
</html>