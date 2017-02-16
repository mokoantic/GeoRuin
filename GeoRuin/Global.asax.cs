using GeoRuinFramework.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace GeoRuin
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            GeoRuinFramework.Classes.Connection.Metodo.SetConnection(Properties.Settings.Default.BaseDados);

            DataTable DTUser = new DataTable();
            DataColumn DCUser = new DataColumn();

            DCUser = new DataColumn();
            DCUser.ColumnName = TabUtilizador.Id;
            DCUser.Caption = TabUtilizador.Id;
            DCUser.DataType = System.Type.GetType("System.Int32");
            DTUser.Columns.Add(DCUser);

            DCUser = new DataColumn();
            DCUser.ColumnName = TabUtilizador.Gru_Id;
            DCUser.Caption = TabUtilizador.Gru_Id;
            DCUser.DataType = System.Type.GetType("System.Int32");
            DTUser.Columns.Add(DCUser);

            DCUser = new DataColumn();
            DCUser.ColumnName = TabUtilizador.Login;
            DCUser.Caption = TabUtilizador.Login;
            DCUser.DataType = System.Type.GetType("System.String");
            DTUser.Columns.Add(DCUser);

            DCUser = new DataColumn();
            DCUser.ColumnName = TabUtilizador.Password;
            DCUser.Caption = TabUtilizador.Password;
            DCUser.DataType = System.Type.GetType("System.String");
            DTUser.Columns.Add(DCUser);

            DCUser = new DataColumn();
            DCUser.ColumnName = TabUtilizador.PrimeiroNome;
            DCUser.Caption = TabUtilizador.UltimoNome;
            DCUser.DataType = System.Type.GetType("System.String");
            DTUser.Columns.Add(DCUser);

            DCUser = new DataColumn();
            DCUser.ColumnName = TabUtilizador.UltimoNome;
            DCUser.Caption = TabUtilizador.UltimoNome;
            DCUser.DataType = System.Type.GetType("System.String");
            DTUser.Columns.Add(DCUser);

            DCUser = new DataColumn();
            DCUser.ColumnName = TabUtilizador.PastaFicheiro;
            DCUser.Caption = TabUtilizador.PastaFicheiro;
            DCUser.DataType = System.Type.GetType("System.String");
            DTUser.Columns.Add(DCUser);

            DCUser = new DataColumn();
            DCUser.ColumnName = TabUtilizador.NomeFicheiro;
            DCUser.Caption = TabUtilizador.NomeFicheiro;
            DCUser.DataType = System.Type.GetType("System.String");
            DTUser.Columns.Add(DCUser);

            DCUser = new DataColumn();
            DCUser.ColumnName = TabUtilizador.Email;
            DCUser.Caption = TabUtilizador.Email;
            DCUser.DataType = System.Type.GetType("System.String");
            DTUser.Columns.Add(DCUser);

            Session["User"] = DTUser;

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}