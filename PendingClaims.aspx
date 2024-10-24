<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PendingClaims.aspx.cs" Inherits="PROGPOE.PendingClaims" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pending Claims</title>
    <style>
        /* Styles similar to Add Claims for consistency */
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-container">
            <h2>Pending Claims</h2>
            <table>
                <tr>
                    <th>Claim No.</th>
                    <th>Program Code</th>
                    <th>Module Code</th>
                    <th>Claim Amount</th>
                    <th>Status</th>
                </tr>
                <asp:GridView ID="gvPendingClaims" runat="server"></asp:GridView>
            </table>
        </div>
    </form>
</body>
</html>
