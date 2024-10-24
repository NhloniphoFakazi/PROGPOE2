using System;
using System.Data;

namespace PROGPOE
{
    public partial class ClaimDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindClaimDetailsGrid();
            }
        }

        private void BindClaimDetailsGrid()
        {
            DataTable claimsTable = Session["ClaimsTable"] as DataTable;
            if (claimsTable != null)
            {
                gvClaimDetails.DataSource = claimsTable;
                gvClaimDetails.DataBind();
            }
        }
    }
}
