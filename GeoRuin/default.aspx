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
    <link href="/Content/css/bootstrapcss/datepicker.css" rel="stylesheet" />
    <link href="/Content/css/bootstrapcss/daterangepicker.css" rel="stylesheet" />
    <link href="/Content/css/style.css" rel="stylesheet" />

</head>
<body onload="initialize()">

    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

        <div class="app layout-fixed-header" style="min-height: 99.5vh;">
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
                    <div class="panel mb25" style="min-height: 78vh; margin-bottom: 0;">
                        <div class="row">

                            <div class="col-lg-4 col-md-4 col-sm-5 col-xs-12">
                                <div class="panel mb25">
                                    <div class="panel-heading border">Encontre Edifícios</div>
                                    <div class="panel-body">
                                        <div class="row no-margin">
                                            <div class="col-lg-12">

                                                <div class="form-group">
                                                    <label class="control-label"><b>Estado:</b></label>
                                                    <div class="col-sm-12">
                                                        <label class="radio-inline">
                                                            <input type="radio" name="estado" />Qualquer
                                                        </label>
                                                        <label class="radio-inline">
                                                            <input type="radio" name="estado" />Devoluto
                                                        </label>
                                                        <label class="radio-inline">
                                                            <input type="radio" name="estado" />Parcialmente Devoluto
                                                        </label>
                                                    </div>
                                                </div>

                                                <div class="form-group" style="padding-top:30px;">
                                                    <label class="control-label"><b>Actividade:</b></label>
                                                    <div class="col-sm-12">
                                                        <label class="radio-inline">
                                                            <input type="radio" name="actividade" />Qualquer
                                                        </label>
                                                        <label class="radio-inline">
                                                            <input type="radio" name="actividade" />Edificio Activo
                                                        </label>
                                                        <label class="radio-inline">
                                                            <input type="radio" name="actividade" />Edificio Inactivo
                                                        </label>
                                                    </div>
                                                </div>

                                                <div class="form-group" style="padding-top:30px;">
                                                    <label class="control-label"><b>Data de reporte:</b></label>
                                                    <div class="row">
                                                    <div class="col-sm-6">
                                                        <div class="input-prepend input-group input-group-lg">
                                                            <span class="add-on input-group-addon"><i class="fa fa-calendar"></i></span>
                                                            <input class="form-control mb25" data-provide="datepicker" placeholder="De" />
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <div class="input-prepend input-group input-group-lg">
                                                            <span class="add-on input-group-addon"><i class="fa fa-calendar"></i></span>
                                                            <input class="form-control mb25" data-provide="datepicker" placeholder="Até" />
                                                        </div>
                                                    </div>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
                                <div id="map"></div>
                            </div>

                        </div>
                    </div>
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

    

    <script>       
        function initMap() {

            var myOptions = {
                center: new google.maps.LatLng(41.3004883, -7.7440287),
                zoom: 11,
                mapTypeId: google.maps.MapTypeId.hybrid
            };

            var map = new google.maps.Map(document.getElementById("map"), myOptions);

            setMarkers(map)
        }      
    </script>

    <script>
        var locations = [
            ['/Images/Buildings/casa1.png', 'R. Dr. Otilio Figueiredo 1', 41.296670, -7.736328, '23/12/2016', 'Devoluto', 'Não', '/Images/Markers/devoluto24.png'],
            ['Imagem', 'Edificio tal e coiso', 41.2004883, -7.7440287, '22/12/2016', 'Parcialmente Devoluto', 'Sim', '/Images/Markers/parcialmente24.png']
        ];

        function setMarkers(map) {

            var marker, i
            var infowindow = new google.maps.InfoWindow()

            for (i = 0; i < locations.length; i++) {

                var imagem = locations[i][0]
                var morada = locations[i][1]
                var lat = locations[i][2]
                var long = locations[i][3]
                var data = locations[i][4]
                var estado = locations[i][5]
                var habitado = locations[i][6]
                var marker = locations[i][7]

                var posicao = new google.maps.LatLng(lat, long);

                var marker = new google.maps.Marker({
                    map: map,
                    title: morada,
                    position: posicao,
                    icon: marker
                });
                //map.setCenter(marker.getPosition())

                var content = '<div style="width:300px;height:350px;">' +
                    '<div style="height:150px; width:100%; margin-bottom:20px; background: url(\'' + imagem + '\'); background-size:cover;"></div>' +
                    '<p><b>Morada</b>: ' + morada + '</p>' +
                    '<p><b>Latitude</b>: ' + lat + '</p>' +
                    '<p><b>Longitude</b>: ' + long + '</p>' +
                    '<p><b>Data</b>:' + data + '</p>' +
                    '<p><b>Estado</b>: ' + estado + '</p>' +
                    '<p><b>Habitado</b>: ' + habitado + '</p>' +
                    '</div>'

                google.maps.event.addListener(marker, 'click', (function (marker, content, infowindow) {
                    return function () {
                        map.setZoom(17);
                        map.panTo(marker.getPosition());
                        infowindow.setContent(content);
                        infowindow.open(map, marker);
                    };
                })(marker, content, infowindow));

                google.maps.event.addListener(infowindow, 'closeclick', function () {                 
                    map.setZoom(11);
                });
            }
        }
    </script>


    <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAReUbNUSClubE6x2jLxi9qIlWQ_o1yEFU&callback=initMap">
    </script>
    
    <script src="Scripts/app.js"></script>
    <script src="Scripts/d3.min.js"></script>
    <script src="Scripts/rickshaw.min.js"></script>
    <script src="Scripts/jquery.flot.js"></script>
    <script src="Scripts/jquery.flot.resize.js"></script>
    <script src="Scripts/jquery.flot.categories.js"></script>
    <script src="Scripts/jquery.flot.pie.js"></script>
    <script src="Scripts/datepicker.js"></script>
    <script src="Scripts/costum.js"></script>

</body>
</html>
