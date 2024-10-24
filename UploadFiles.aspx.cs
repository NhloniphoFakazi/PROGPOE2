using System;
using System.IO;

namespace PROGPOE
{
    public partial class UploadFiles : System.Web.UI.Page
    {
        protected void btnUpload_Click(object sender, EventArgs e)
        {
            if (fileUpload.HasFile)
            {
                // Specify the directory where files will be uploaded
                string directoryPath = Server.MapPath("~/UploadedFiles/");
                if (!Directory.Exists(directoryPath))
                {
                    Directory.CreateDirectory(directoryPath);
                }

                // Save the uploaded file
                string filePath = Path.Combine(directoryPath, fileUpload.FileName);
                fileUpload.SaveAs(filePath);
                msgUpload.InnerText = "File uploaded successfully!";
            }
            else
            {
                msgUpload.InnerText = "Please select a file to upload.";
            }
        }
    }
}
