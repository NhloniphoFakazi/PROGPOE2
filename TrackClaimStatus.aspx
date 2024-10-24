<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrackClaimStatus.aspx.cs" Inherits="PROGPOE.TrackClaimStatus" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Track Claim Status</title>
    <style>
        /* Styles similar to Add Claims for consistency */
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-container">
            <h2>Track Claim Status</h2>
            <asp:GridView ID="gvTrackStatus" runat="server"></asp:GridView>
        </div>
    </form>
</body>
</html>
