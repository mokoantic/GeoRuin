using GeoRuinFramework.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GeoRuin.MasterPages
{
    public partial class PaginaBase : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                DataTable user = (DataTable)(Session["User"]);

                _VerificaSessao(user);
                _CarregaDados(user);
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

        private void _VerificaSessao(DataTable user)
        {
            try
            {
                if (user.Rows.Count == 0)
                {
                    Response.Redirect("/Login");
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private void _CarregaDados(DataTable user)
        {
            string nome = "";

            try
            {
                if (user.Rows[0][TabUtilizador.NomeFicheiro] != DBNull.Value)
                {
                    ImgProfile.Src = user.Rows[0][TabUtilizador.PastaFicheiro].ToString() + user.Rows[0][TabUtilizador.NomeFicheiro].ToString();
                }
                else
                {
                    ImgProfile.Src = "/Images/Users/Profile/user-default.png";
                }

                if (user.Rows[0][TabUtilizador.PrimeiroNome] != DBNull.Value)
                {
                    nome = user.Rows[0][TabUtilizador.PrimeiroNome].ToString();

                    if (user.Rows[0][TabUtilizador.UltimoNome] != DBNull.Value)
                    {
                        nome += " " + user.Rows[0][TabUtilizador.UltimoNome].ToString();
                    }
                }
                else
                {
                    nome = user.Rows[0][TabUtilizador.Login].ToString();
                }

                NomeUtilizador.InnerText = nome;

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

    }
}