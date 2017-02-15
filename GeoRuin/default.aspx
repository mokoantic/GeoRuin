<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="GeoRuin._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="iso-8859-1" />
	<meta content="" name="description" />
	<meta content="width=device-width" name="viewport" />

    <title>Geo.Ruin: Vila Real</title>

    <link href="/Images/Favicon/favicon.ico" rel="shortcut icon" />
    
    <link href="Content/css/custom/app.css" rel="stylesheet" />
    <link href="Content/font-awesome.css" rel="stylesheet" />
    <link href="Content/css/climacons/climacons-font.css" rel="stylesheet" />
    <link href="Content/css/rickshaw/rickshaw.min.css" rel="stylesheet" />
    <link href="Content/css/style.css" rel="stylesheet" />

</head>
<body>

    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

	<div class="app layout-fixed-header">
		<div class="main-panel">
			<header class="header navbar">
				<div class="brand visible-xs">
					<div class="brand-logo"><img alt="" height="20" src="Images/Logo/GR_Grey.png"></div>
					<div class="toggle-chat">
						<a class="hamburger-icon v2 visible-xs" data-toggle="layout-chat-open" href="javascript:;"><span></span> <span></span> <span></span></a>
					</div>
				</div>
				<ul class="nav navbar-nav hidden-xs">
					<li>
                        <img src="Images/Logo/GR_Black.png"  class="logoimg"/>
					</li>
				</ul>
				<ul class="nav navbar-nav navbar-right hidden-xs">
					<li>
						<a data-toggle="dropdown" href="#"><i class="fa fa-bell-o"></i>
						<div class="status bg-danger border-danger animated bounce"></div></a>
						<ul class="dropdown-menu notifications">
							<li class="notifications-header">
								<p class="text-muted small">You have 3 new messages</p>
							</li>
							<li>
								<ul class="notifications-list">
									<li>
										<a href="javascript:;"><span class="pull-left mt2 mr15"><img alt="" class="avatar avatar-xs img-circle" src="images/avatar.21d1cc35.jpg"></span>
										<div class="overflow-hidden">
											<span>Sean launched a new application</span> <span class="time">2 seconds ago</span>
										</div></a>
									</li>
									<li>
										<a href="javascript:;">
										<div class="pull-left mt2 mr15">
											<div class="circle-icon bg-danger">
												<i class="fa fa-chain-broken"></i>
											</div>
										</div>
										<div class="overflow-hidden">
											<span>Removed chrome from app list</span> <span class="time">4 Hours ago</span>
										</div></a>
									</li>
									<li>
										<a href="javascript:;"><span class="pull-left mt2 mr15"><img alt="" class="avatar avatar-xs img-circle" src="images/face3.0306ffff.jpg"></span>
										<div class="overflow-hidden">
											<span class="text-muted">Jack Hunt has registered</span> <span class="time">9 hours ago</span>
										</div></a>
									</li>
								</ul>
							</li>
							<li class="notifications-footer">
								<a href="javascript:;">See all messages</a>
							</li>
						</ul>
					</li>
					<li>
						<a data-toggle="dropdown" href="javascript:;"><img alt="user" class="header-avatar img-circle ml10" src="images/avatar.21d1cc35.jpg" title="user"> <span class="pull-left">Samuel Perkins</span></a>
						<ul class="dropdown-menu">
							<li>
								<a href="javascript:;">Settings</a>
							</li>
							<li>
								<a href="javascript:;">Upgrade</a>
							</li>
							<li>
								<a href="javascript:;"><span class="label bg-danger pull-right">34</span> <span>Notifications</span></a>
							</li>
							<li>
								<a href="javascript:;">Help</a>
							</li>
							<li>
								<a href="signin.html">Logout</a>
							</li>
						</ul>
					</li>
					<li>
						<a class="hamburger-icon v2" data-toggle="layout-chat-open" href="javascript:;"><span></span> <span></span> <span></span></a>
					</li>
				</ul>
			</header>
			<div class="main-content">
				<div class="row">
					<div class="col-md-3">
						<div>
							<div class="widget bg-white">
								<div class="widget-icon bg-blue pull-left fa fa-microphone"></div>
								<div class="overflow-hidden">
									<span class="widget-title">8,372K</span> <span class="widget-subtitle">Registered users</span>
								</div>
							</div>
							<div class="widget bg-white">
								<div class="widget-icon bg-danger pull-left fa fa-tint"></div>
								<div class="overflow-hidden">
									<span class="widget-title percent">86</span> <span class="widget-subtitle">Revenue increase</span>
								</div>
							</div>
							<div class="widget bg-white">
								<div class="widget-icon bg-success pull-left fa fa-paper-plane"></div>
								<div class="overflow-hidden">
									<span class="widget-title">7,355K</span> <span class="widget-subtitle">Pending orders</span>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-5">
						<div class="widget-chart bg-white no-padding">
							<div class="row absolute tp lt rt p15">
								<div class="col-xs-12">
									<div class="pull-right">
										<i class="fa fa-square text-primary mr5"></i> Mail Server
									</div><small class="text-uppercase">Transfer speeds</small>
									<h4 class="text-primary bold no-margin">43.02mbps</h4>
								</div>
							</div>
							<div class="rickshaw_graph">
								<div id="dashboard-rickshaw" style="height:250px"></div>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="widget-chart bg-white">
							<div class="row">
								<div class="col-xs-12">
									<small class="text-uppercase">Weekly distribution</small>
									<h4 class="no-margin bold text-success">3,490K</h4>
								</div>
							</div>
							<div class="canvas-holder mt5 mb5">
								<div class="flot-pie chart-sm" style="height:171px"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-5 col-sm-6 col-xs-12">
						<div class="widget widget-weather bg-white">
							<div class="widget-weather-icon climacon wind cloud sun"></div>
							<div class="mb15">
								<strong>San Francisco, CA</strong>
							</div>
							<div class="widget-weather-footer">
								<div>
									<div class="small">
										MON
									</div>
									<div class="climacon drizzle sun text-warning"></div>
									<div class="degree-value">
										45&#176;
									</div>
								</div>
								<div>
									<div class="small">
										TUE
									</div>
									<div class="climacon snow sun text-danger"></div>
									<div class="degree-value">
										42&#176;
									</div>
								</div>
								<div>
									<div class="small">
										WED
									</div>
									<div class="climacon haze sun text-info"></div>
									<div class="degree-value">
										37&#176;
									</div>
								</div>
								<div>
									<div class="small">
										THU
									</div>
									<div class="climacon hail text-primary"></div>
									<div class="degree-value">
										23&#176;
									</div>
								</div>
								<div>
									<div class="small">
										FRI
									</div>
									<div class="climacon fog moon"></div>
									<div class="degree-value">
										34&#176;
									</div>
								</div>
								<div>
									<div class="small">
										SAT
									</div>
									<div class="climacon tornado text-success"></div>
									<div class="degree-value">
										12&#176;
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 col-xs-12">
						<div class="widget bg-white">
							<h3 class="text-info mt0 mb0 bold">56780</h3>
							<div class="small text-uppercase">
								Recent Activities
							</div><small class="pt5">Donec ullamcorper nulla non metus auctor.</small>
						</div>
						<div class="widget-chart bg-white no-padding">
							<div class="absolute tp lt rt p15">
								<h3 class="mb0 mt0 bold">7,623K</h3>
								<div class="small text-uppercase">
									Daily income
								</div>
							</div>
							<div class="absolute tp rt pt15 pr15">
								<div class="text-success">
									<i class="fa fa-caret-up"></i> <span>6%</span>
								</div>
								<div class="small">
									+897
								</div>
							</div>
							<div class="rickshaw_graph">
								<div id="dashboard-rickshaw2" style="height:133px"></div>
							</div>
						</div>
					</div>
					<div class="col-md-3 col-sm-12 col-xs-12">
						<div class="widget bg-white">
							<div class="text-center">
								<h6 class="text-uppercase">Page Views</h6>
								<div class="mt15">
									<h1 class="text-primary">512k+</h1>
									<div class="flot-line chart-sm" style="height:123px"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6">
						<div class="widget bg-white">
							<div class="widget-details widget-list">
								<div class="mb20">
									<h4 class="no-margin text-uppercase">Sales</h4><small class="text-uppercase">Weekly projections</small>
								</div><a class="widget-list-item" href="javascript:;"><span class="label label-info pull-right">32</span> United States</a> <a class="widget-list-item" href="javascript:;"><span class="label label-danger pull-right">54</span> China</a> <a class="widget-list-item" href="javascript:;"><span class="label label-warning pull-right">45</span> Great Britain</a>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="widget bg-primary">
							<div class="widget-bg-icon">
								<i class="fa fa-bookmark-o"></i>
							</div>
							<div class="widget-details">
								<h4 class="no-margin">4,894K</h4><span>Parks and recreation</span>
							</div>
						</div>
						<div class="widget bg-white">
							<div class="row">
								<div class="col-xs-4">
									<h6>Distance travelled</h6>
									<h1 class="mt0 mb0 bold">4389km</h1><small class="mb0">Avg 56km/Sec</small>
								</div>
								<div class="col-xs-8">
									<div class="canvas-holder">
										<div class="flot-bars chart" style="height:90px"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4">
						<section class="widget bg-lightblue">
							<div class="widget-details">
								<a class="pull-left relative" href="javascript:;"><img alt="" class="avatar avatar-sm img-circle bordered" src="images/avatar.21d1cc35.jpg"></a>
							</div>
							<div class="widget-details">
								<span class="h5 bold">Samuel Perkins</span> <small class="block">San Francisco, CA</small> <small class="block">Interactive UX Developer</small>
							</div>
						</section>
					</div>
					<div class="col-md-4">
						<section class="widget bg-brown text-center">
							<div class="widget-details">
								<h2 class="no-margin bold">14&#176;C</h2><small class="text-uppercase">San Francisco, CA</small>
							</div>
							<div class="widget-details">
								<div class="climacon hail sun fa-4x"></div>
							</div>
						</section>
					</div>
					<div class="col-md-4">
						<section class="widget bg-success text-center">
							<div class="widget-details col-xs-4">
								<h2 class="no-margin">132</h2><small class="text-uppercase">Pending</small>
							</div>
							<div class="widget-details col-xs-4">
								<h2 class="no-margin">43</h2><small class="text-uppercase">Completed</small>
							</div>
							<div class="widget-details col-xs-4">
								<h2 class="no-margin">28</h2><small class="text-uppercase">Failed</small>
							</div>
						</section>
					</div>
				</div>
			</div>
		</div>
		<footer class="content-footer">
			<nav class="footer-right">
				<ul class="nav">
					<li>
						<a href="javascript:;">Feedback</a>
					</li>
					<li>
						<a class="scroll-up" href="javascript:;"><i class="fa fa-angle-up"></i></a>
					</li>
				</ul>
			</nav>
			<nav class="footer-left">
				<ul class="nav">
					<li>
						<a href="javascript:;">Copyright <i class="fa fa-copyright"></i> <span>Urban</span> 2015. All rights reserved</a>
					</li>
					<li>
						<a href="javascript:;">Careers</a>
					</li>
					<li>
						<a href="javascript:;">Privacy Policy</a>
					</li>
				</ul>
			</nav>
		</footer>
		<div class="chat-panel">
			<div class="chat-inner">
				<div class="chat-users">
					<div class="nav-justified-xs">
						<ul class="nav nav-tabs nav-justified">
							<li class="active">
								<a data-toggle="tab" href="#chat-list">Chat</a>
							</li>
							<li>
								<a data-toggle="tab" href="#market">Favourites</a>
							</li>
							<li>
								<a data-toggle="tab" href="#activity">Activity</a>
							</li>
						</ul>
					</div>
					<div class="tab-content">
						<div class="tab-pane active" id="chat-list">
							<div class="chat-group">
								<div class="chat-group-header">
									Favourites
								</div><a href="javascript:;"><span class="status-online"></span> <span>Catherine Moreno</span></a> <a href="javascript:;"><span class="status-online"></span> <span>Denise Peterson</span></a> <a href="javascript:;"><span class="status-away"></span> <span>Charles Wilson</span></a> <a href="javascript:;"><span class="status-away"></span> <span>Melissa Welch</span></a> <a href="javascript:;"><span class="status-no-disturb"></span> <span>Vincent Peterson</span></a> <a href="javascript:;"><span class="status-offline"></span> <span>Pamela Wood</span></a>
							</div>
							<div class="chat-group">
								<div class="chat-group-header">
									Online Friends
								</div><a href="javascript:;"><span class="status-online"></span> <span>Tammy Carpenter</span></a> <a href="javascript:;"><span class="status-away"></span> <span>Emma Sullivan</span></a> <a href="javascript:;"><span class="status-no-disturb"></span> <span>Andrea Brewer</span></a> <a href="javascript:;"><span class="status-online"></span> <span>Sean Carpenter</span></a>
							</div>
							<div class="chat-group">
								<div class="chat-group-header">
									Offline
								</div><a href="javascript:;"><span class="status-offline"></span> <span>Denise Peterson</span></a> <a href="javascript:;"><span class="status-offline"></span> <span>Jose Rivera</span></a> <a href="javascript:;"><span class="status-offline"></span> <span>Diana Robertson</span></a> <a href="javascript:;"><span class="status-offline"></span> <span>William Fields</span></a> <a href="javascript:;"><span class="status-offline"></span> <span>Emily Stanley</span></a> <a href="javascript:;"><span class="status-offline"></span> <span>Jack Hunt</span></a> <a href="javascript:;"><span class="status-offline"></span> <span>Sharon Rice</span></a> <a href="javascript:;"><span class="status-offline"></span> <span>Mary Holland</span></a> <a href="javascript:;"><span class="status-offline"></span> <span>Diane Hughes</span></a> <a href="javascript:;"><span class="status-offline"></span> <span>Steven Smith</span></a> <a href="javascript:;"><span class="status-offline"></span> <span>Emily Henderson</span></a> <a href="javascript:;"><span class="status-offline"></span> <span>Wayne Kelly</span></a> <a href="javascript:;"><span class="status-offline"></span> <span>Jane Garcia</span></a> <a href="javascript:;"><span class="status-offline"></span> <span>Jose Jimenez</span></a> <a href="javascript:;"><span class="status-offline"></span> <span>Rachel Burton</span></a> <a href="javascript:;"><span class="status-offline"></span> <span>Samantha Ruiz</span></a>
							</div>
						</div>
						<div class="tab-pane" id="market">
							<div class="favourite-list">
								<a href="#">
								<div class="media-left relative">
									<img alt="avatar" class="img-circle avatar avatar-xs" src="images/avatar.21d1cc35.jpg">
									<div class="status bg-success border-white mr10"></div>
								</div>
								<div class="media-body">
									<span class="block">Catherine Moreno</span> <span class="text-muted">Online</span>
								</div></a> <a href="#">
								<div class="media-left relative">
									<img alt="avatar" class="img-circle avatar avatar-xs" src="images/face1.75317f48.jpg">
									<div class="status bg-success border-white mr10"></div>
								</div>
								<div class="media-body">
									<span class="block">Denise Peterson</span> <span class="text-muted">Online</span>
								</div></a> <a href="#">
								<div class="media-left relative">
									<img alt="avatar" class="img-circle avatar avatar-xs" src="images/face3.0306ffff.jpg">
									<div class="status bg-default border-white mr10"></div>
								</div>
								<div class="media-body">
									<span class="block">Charles Wilson</span> <span class="text-muted">Busy</span>
								</div></a> <a href="#">
								<div class="media-left relative">
									<img alt="avatar" class="img-circle avatar avatar-xs" src="images/face4.cea90747.jpg">
									<div class="status bg-danger border-white mr10"></div>
								</div>
								<div class="media-body">
									<span class="block">Melissa Welch</span> <span class="text-muted">Offline</span>
								</div></a> <a href="#">
								<div class="media-left relative">
									<img alt="avatar" class="img-circle avatar avatar-xs" src="images/face5.535c103a.jpg">
									<div class="status bg-danger border-white mr10"></div>
								</div>
								<div class="media-body">
									<span class="block">Vincent Peterson</span> <span class="text-muted">Offline</span>
								</div></a> <a href="#">
								<div class="media-left relative">
									<img alt="avatar" class="img-circle avatar avatar-xs" src="images/avatar.21d1cc35.jpg">
									<div class="status bg-danger border-white mr10"></div>
								</div>
								<div class="media-body">
									<span class="block">Pamela Wood</span> <span class="text-muted">Offline</span>
								</div></a>
							</div>
						</div>
						<div class="tab-pane" id="activity">
							<ol class="activity-feed">
								<li class="feed-item"><span>Launched a new application</span> <time datetime="2015-01-30 00:00">2 seconds ago</time></li>
								<li class="feed-item inactive"><span>Removed chrome from app list</span> <time datetime="2015-01-20 00:00">Jan 20</time></li>
								<li class="feed-item"><span>Approved new user "Jack hunt"</span> <time datetime="2015-01-02 00:00">Jan 02</time></li>
								<li class="feed-item active"><span>Executed new cron jobs on server with id 67gyu789</span> <time datetime="2014-12-12 00:00">Dec 12</time></li>
								<li class="feed-item"><span class="text">Added paypal to list payment options</span> <time datetime="2014-12-01 00:00">Dec 01</time></li>
								<li class="feed-item"><span>Added 6 new calendar events</span> <time datetime="2014-08-30 00:00">Aug 30</time></li>
							</ol>
						</div>
					</div>
				</div>
				<div class="chat-conversation">
					<div class="chat-header">
						<a class="chat-back" href="javascript:;"><i class="fa fa-angle-left"></i></a>
						<div class="chat-header-title">
							Charles Wilson
						</div><a class="chat-right" href="javascript:;"><i class="fa fa-circle-thin"></i></a>
					</div>
					<div class="chat-conversation-content">
						<p class="text-center text-muted small text-uppercase bold pb15">Yesterday</p>
						<div class="chat-conversation-user them">
							<div class="chat-conversation-message">
								<p>Hey.</p>
							</div>
						</div>
						<div class="chat-conversation-user them">
							<div class="chat-conversation-message">
								<p>How are the wife and kids, Taylor?</p>
							</div>
						</div>
						<div class="chat-conversation-user me">
							<div class="chat-conversation-message">
								<p>Pretty good, Samuel.</p>
							</div>
						</div>
						<p class="text-center text-muted small text-uppercase bold pb15">Today</p>
						<div class="chat-conversation-user them">
							<div class="chat-conversation-message">
								<p>Curabitur blandit tempus porttitor.</p>
							</div>
						</div>
						<div class="chat-conversation-user me">
							<div class="chat-conversation-message">
								<p>Goodnight!</p>
							</div>
						</div>
						<div class="chat-conversation-user them">
							<div class="chat-conversation-message">
								<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>
							</div>
						</div>
					</div>
					<div class="chat-conversation-footer">
						<button class="chat-input-tool"><i class="fa fa-camera"></i></button>
						<div class="chat-input" contenteditable=""></div><button class="chat-send"><i class="fa fa-paper-plane"></i></button>
					</div>
				</div>
			</div>
		</div>
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
