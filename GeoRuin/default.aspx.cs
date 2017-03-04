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
                //DataTable Tabela = GeoRuinFramework.Classes.TabUtilizador.Metodo.Select(GeoRuinFramework.Classes.TabUtilizador.Id + "=2");
                //GeoRuinFramework.Classes.TabUtilizador.Metodo.Update((Int32)(Tabela.Rows[0][GeoRuinFramework.Classes.TabUtilizador.Gru_Id]),
                //    (string)(Tabela.Rows[0][GeoRuinFramework.Classes.TabUtilizador.Login]), 
                //    "bruno",
                //    Tabela.Rows[0][GeoRuinFramework.Classes.TabUtilizador.PrimeiroNome],
                //    Tabela.Rows[0][GeoRuinFramework.Classes.TabUtilizador.UltimoNome],
                //    Tabela.Rows[0][GeoRuinFramework.Classes.TabUtilizador.PastaFicheiro],
                //    Tabela.Rows[0][GeoRuinFramework.Classes.TabUtilizador.NomeFicheiro],
                //    Tabela.Rows[0][GeoRuinFramework.Classes.TabUtilizador.Email],
                //    (bool)(Tabela.Rows[0][GeoRuinFramework.Classes.TabUtilizador.EmailConfirmado]),
                //    (bool)(Tabela.Rows[0][GeoRuinFramework.Classes.TabUtilizador.Activo]),
                //    (Int32)(Tabela.Rows[0][GeoRuinFramework.Classes.TabUtilizador.Id]));
                _VerificaSessao();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private void _VerificaSessao()
        {
            DataTable user = (DataTable)(Session["User"]);

            try
            {
                if (user != null)
                {
                    if (user.Rows.Count != 0) { Response.Redirect("/Inicio"); }                  
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}