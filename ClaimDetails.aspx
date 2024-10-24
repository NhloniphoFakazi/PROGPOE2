<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClaimDetails.aspx.cs" Inherits="PROGPOE.ClaimDetails" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Claim Details</title>
    <style>
        /* Styles similar to Add Claims for consistency */
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-container">
            <h2>Claim Details</h2>
            <asp:GridView ID="gvClaimDetails" runat="server"></asp:GridView>
        </div>
    </form>
</body>
</html>
