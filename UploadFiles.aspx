<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UploadFiles.aspx.cs" Inherits="PROGPOE.UploadFiles" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Upload Files</title>
    <style>
        /* Styles similar to Add Claims for consistency */
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-container">
            <h2>Upload Supporting Documents</h2>
            <div class="form-row">
                <label for="fileUpload">Select File:</label>
                <asp:FileUpload ID="fileUpload" runat="server" />
            </div>
            <div class="button-container">
                <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" />
            </div>
            <div id="msgUpload" runat="server"></div>
        </div>
    </form>
</body>
</html>
