using System;
using System.Data;

namespace PROGPOE
{
    public partial class PendingClaims : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindPendingClaimsGrid();
            }
        }

        private void BindPendingClaimsGrid()
        {
            DataTable claimsTable = Session["ClaimsTable"] as DataTable;
            if (claimsTable != null)
            {
                DataView pendingClaimsView = new DataView(claimsTable);
                pendingClaimsView.RowFilter = "Status = 'Pending'";
                gvPendingClaims.DataSource = pendingClaimsView;
                gvPendingClaims.DataBind();
            }
        }
    }
}
