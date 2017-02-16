<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="GeoRuin._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="iso-8859-1" />
	<meta content="" name="description" />
	<meta content="width=device-width" name="viewport" />

    <title>Geo.Ruin: Vila Real</title>

    <link href="/Images/App/General/Favicon/favicon.ico" rel="shortcut icon" />
    
    <link href="/Content/css/custom/app.css" rel="stylesheet" />
    <link href="/Content/font-awesome.css" rel="stylesheet" />
    <link href="/Content/css/climacons/climacons-font.css" rel="stylesheet" />
    <link href="/Content/css/rickshaw/rickshaw.min.css" rel="stylesheet" />
    <link href="/Content/css/style.css" rel="stylesheet" />

</head>
<body>

    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

        <div class="app layout-fixed-header">
            <div class="main-panel">
                <header class="header navbar">
                    <div class="brand visible-xs">
                        <div class="brand-logo">
                            <img alt="" height="20" src="Images/App/General/Logo/GR_Grey.png">
                        </div>
                    </div>
                    <ul class="nav navbar-nav hidden-xs">
                        <li>
                            <img src="Images/App/General/Logo/GR_Black.png" class="logoimg" />
                        </li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right hidden-xs">
                        <li style="padding-right:40px;">
                            <a href="/Login">
                                <img alt="user" class="header-avatar img-circle ml10" src="/Images/Users/Profile/user-default.png" title="user">
                                <span class="pull-left">Login</span>
                            </a>                            
                        </li>
                    </ul>
                </header>
                <div class="main-content">



                </div>
            </div>
            <footer class="content-footer">
                <nav class="footer-right">
                    <ul class="nav">
                        <li>
                            <a href="#">Contacto</a>
                        </li>
                        <li>
                            <a class="scroll-up" href="#"><i class="fa fa-arrow-up"></i></a>
                        </li>
                    </ul>
                </nav>
                <nav class="footer-left">
                    <ul class="nav">
                        <li>
                            <a href="/Home">Home</a>
                        </li>
                        <li>
                            <a href="#">Sobre o GeoRuin</a>
                        </li>
                        <li>
                            <a href="#">Reportar um Edifício</a>
                        </li>
                    </ul>
                </nav>
            </footer>
        </div>

    </form>

    <script src="Scripts/app.js"></script>
    <script src="Scripts/d3.min.js"></script>
    <script src="Scripts/rickshaw.min.js"></script>
    <script src="Scripts/jquery.flot.js"></script>
    <script src="Scripts/jquery.flot.resize.js"></script>
    <script src="Scripts/jquery.flot.categories.js"></script>
    <script src="Scripts/jquery.flot.pie.js"></script>
    <script src="Scripts/costum.js"></script>

</body>
</html>
