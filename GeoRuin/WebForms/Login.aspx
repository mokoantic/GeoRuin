<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GeoRuin.WebForms.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="iso-8859-1" />
	<meta content="" name="description" />
	<meta content="width=device-width" name="viewport" />

    <title>Geo.Ruin: Vila Real</title>

    <link href="/Images/App/General/Favicon/favicon.ico" rel="shortcut icon" />
    
    <link href="/Content/css/custom/app.css" rel="stylesheet" />
    <link href="/Content/css/style.css" rel="stylesheet" />

</head>
<body>
    <div class="app layout-fixed-header bg-white usersession">
        <div class="full-height">
            <div class="center-wrapper">
                <div class="center-content">
                    <div class="row no-margin">
                        <div class="col-xs-10 col-xs-offset-1 col-sm-6 col-sm-offset-3 col-md-4 col-md-offset-4">
                            <form id="form1" runat="server" class="form-layout" role="form">
                                <div class="text-center mb15">
                                    <img src="../Images/App/General/Logo/GR_Black.png" style="height: 50px;">
                                </div>
                                <p class="text-center mb30">Bem vindo ao GeoRuin. Introduza os seus dados para aceder à sua conta.</p>
                                <div class="form-inputs">
                                    <asp:TextBox ID="TBUser" runat="server" class="form-control input-lg" placeholder="Nome de utilizador"></asp:TextBox>
                                    <asp:TextBox ID="TBPassword" runat="server" class="form-control input-lg" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                                <asp:LinkButton ID="BTLogin" runat="server" CssClass="btn btn-success btn-block btn-lg mb15" OnClick="BTLogin_Click"><span>Sign in</span></asp:LinkButton>
                                <p><a href="/Home">Voltar à página Home</a> · <a href="#">Esqueceu-se da password?</a></p>
                            </form>
                            <div id="DivErro" runat="server"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="Scripts/app.js"></script>
    <script src="Scripts/costum.js"></script>

</body>
</html>
