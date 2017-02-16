using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GeoRuin
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                //GeoRuinFramework.Classes.TabUtilizador.Metodo.Insert(1, "system", GeoRuinFramework.Classes.TabUtilizador.Metodo.EncriptaPassword("system").ToString(), DBNull.Value, DBNull.Value, DBNull.Value, DBNull.Value, "system@email.com", true);
                _VerificaSessao();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private void _VerificaSessao()
        {
            DataTable dt = (DataTable)(Session["User"]);

            try
            {
                if (dt.Rows.Count > 0)
                {
                    Response.Redirect("/Inicio");
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}