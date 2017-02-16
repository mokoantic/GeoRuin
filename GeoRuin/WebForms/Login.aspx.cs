using GeoRuinFramework.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GeoRuin.WebForms
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        protected void BTLogin_Click(object sender, EventArgs e)
        {
            DataTable Tabela = null;
            DataTable dt = (DataTable)(Session["User"]);

            string ErroVazio = "<div class=\"alert alert-danger\" role=\"alert\"><strong>Erro:</strong> Preencha os campos de Nome de Utilizador e Password. </div>";
            string ErroLogin = "<div class=\"alert alert-danger\" role=\"alert\"><strong>Erro:</strong> O nome de utilizador e/ou password estão errados.</div>";

            try
            {
                if (TBUser.Text == "" || TBPassword.Text == "")
                {
                    DivErro.InnerHtml = ErroVazio;
                }
                else
                {
                    Tabela = TabUtilizador.Metodo.Select(TabUtilizador.Login + "='" + TBUser.Text + "'");

                    if (Tabela.Rows.Count == 0)
                    {
                        DivErro.InnerHtml = ErroLogin;
                    }
                    else
                    {
                        if (TabUtilizador.Metodo.EncriptaPassword(TBPassword.Text).ToString() != Tabela.Rows[0][TabUtilizador.Password].ToString())
                        {
                            DivErro.InnerHtml = ErroLogin;
                        }
                        else
                        {
                            dt.Clear();

                            dt.Rows.Add(Tabela.Rows[0][TabUtilizador.Id],
                                Tabela.Rows[0][TabUtilizador.Gru_Id],
                                Tabela.Rows[0][TabUtilizador.Login],
                                Tabela.Rows[0][TabUtilizador.Password],
                                Tabela.Rows[0][TabUtilizador.PrimeiroNome],
                                Tabela.Rows[0][TabUtilizador.UltimoNome],
                                Tabela.Rows[0][TabUtilizador.PastaFicheiro],
                                Tabela.Rows[0][TabUtilizador.NomeFicheiro],
                                Tabela.Rows[0][TabUtilizador.Email]);

                            Response.Redirect("/Inicio");
                        }
                    }
                }

            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
    }
}