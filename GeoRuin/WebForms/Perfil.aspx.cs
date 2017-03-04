using GeoRuinFramework.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace GeoRuin.WebForms
{
    public partial class Perfil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            DataTable user = (DataTable)(Session["User"]);

            try
            {
                if (user != null)
                {
                    _CarregaPerfil(user);
                }               
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        private void _CarregaPerfil(DataTable user)
        {
            try
            {
                //Carrega imagem de utilizador
                if (user.Rows[0][TabUtilizador.PastaFicheiro] != DBNull.Value || user.Rows[0][TabUtilizador.NomeFicheiro] != DBNull.Value)
                {
                    ImgUtil.Src = user.Rows[0][TabUtilizador.PastaFicheiro].ToString() + user.Rows[0][TabUtilizador.NomeFicheiro].ToString();
                }
                else
                {
                    ImgUtil.Src = "/Images/Users/Profile/user-default.png";
                }

                //Carrega nome de login
                if (user.Rows[0][TabUtilizador.Login] != DBNull.Value)
                {
                    NomeUtil.InnerText = user.Rows[0][TabUtilizador.Login].ToString();
                }

                //Carrega Primeiro Nome
                if (user.Rows[0][TabUtilizador.PrimeiroNome] != DBNull.Value)
                {
                    TBPrimeiroNome.Text = user.Rows[0][TabUtilizador.PrimeiroNome].ToString();
                }

                //Carrega Ultimo Nome
                if (user.Rows[0][TabUtilizador.UltimoNome] != DBNull.Value)
                {
                    TBUltimoNome.Text = user.Rows[0][TabUtilizador.UltimoNome].ToString();
                }

                //Carrega Email
                if (user.Rows[0][TabUtilizador.Email] != DBNull.Value)
                {
                    TBEmail.Text = user.Rows[0][TabUtilizador.Email].ToString();
                }

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        protected void BTGuardar_Click(object sender, EventArgs e)
        {
            DataTable user = (DataTable)(Session["User"]);
            DataTable Tabela = null;

            object PNome = null;
            object UNome = null;
            object Email = null;
            object Imagem = null;
            object CaminhoImg = null;

            try
            {

                Tabela = TabUtilizador.Metodo.Select(TabUtilizador.Id + "=" + user.Rows[0][TabUtilizador.Id]);

                if (Tabela.Rows.Count > 0)
                {
                    if (TBPrimeiroNome.Text == "") {PNome = DBNull.Value;} else {PNome = TBPrimeiroNome.Text;}

                    if (TBUltimoNome.Text == ""){UNome = DBNull.Value;} else {UNome = TBUltimoNome.Text;}

                    if (TBEmail.Text == "") {Email = DBNull.Value;} else {Email = TBEmail.Text;}

                    if (UploadFile.HasFile)
                    {
                        string filename = Path.GetFileName(UploadFile.PostedFile.FileName);
                        UploadFile.PostedFile.SaveAs(Server.MapPath("~/Uploads/") + filename);

                        string TipoFich = filename.Split('.').Last();
                        string NovoNome = Tabela.Rows[0][TabUtilizador.Login].ToString() + "." + TipoFich;

                        if (File.Exists(Server.MapPath("~/Images/Users/Profile/") + NovoNome))
                        {
                            File.Delete(Server.MapPath("~/Images/Users/Profile/") + NovoNome);
                        }
                        File.Move(Server.MapPath("~/Uploads/") + filename, Server.MapPath("~/Images/Users/Profile/") + NovoNome);

                        Imagem = NovoNome;
                        CaminhoImg = "/Images/Users/Profile/";
                    }
                    else
                    {
                        Imagem = DBNull.Value;
                        CaminhoImg = DBNull.Value;
                    }

                    TabUtilizador.Metodo.Update((Int32)(Tabela.Rows[0][TabUtilizador.Gru_Id]),
                                                (string)(Tabela.Rows[0][TabUtilizador.Login]),
                                                (string)(Tabela.Rows[0][TabUtilizador.Password]),
                                                PNome,
                                                UNome,
                                                CaminhoImg,
                                                Imagem,
                                                Email,
                                                (bool)(Tabela.Rows[0][TabUtilizador.EmailConfirmado]),
                                                (bool)(Tabela.Rows[0][TabUtilizador.Activo]),
                                                (Int32)(Tabela.Rows[0][TabUtilizador.Id]));

                    Response.Redirect(Request.RawUrl);
                }

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }    
}