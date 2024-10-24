using System;
using System.Data;

namespace PROGPOE
{
    public partial class TrackClaimStatus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindTrackStatusGrid();
            }
        }

        private void BindTrackStatusGrid()
        {
            DataTable claimsTable = Session["ClaimsTable"] as DataTable;
            if (claimsTable != null)
            {
                gvTrackStatus.DataSource = claimsTable;
                gvTrackStatus.DataBind();
            }
        }
    }
}
