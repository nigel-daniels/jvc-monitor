<%@page import="cloudvm.management.VirtualContainerInfoMXBean"%>
<%@page import="cloudvm.management.JavaContainerMXBean"%>
<%@page import="cloudvm.management.VirtualMachineMXBean"%>
<%@page import="cloudvm.management.ManagementFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<% VirtualMachineMXBean virtualMachineMXBean = ManagementFactory.getVirtualMachineMXBean(); %>
	<!-- start: Meta -->
	<meta charset="utf-8">
	<title>Waratek Admin</title>
	<meta name="description" content="Waratek JVM Administration">
	<meta name="author" content="Waratek">
	<meta name="keyword" content="Waratek, JVM, JVC, Admin">
	<!-- end: Meta -->
	
	<!-- start: Mobile Specific -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- end: Mobile Specific -->
	
	<!-- start: CSS -->
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/bootstrap-responsive.min.css" rel="stylesheet">
	<link href="css/style.min.css" rel="stylesheet">
	<link href="css/style-responsive.min.css" rel="stylesheet">
	<link href="css/retina.css" rel="stylesheet">
	<link href="css/waratek.css" rel="stylesheet">
	<!-- end: CSS -->

	<!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
	  	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<link id="ie-style" href="css/ie.css" rel="stylesheet">
	<![endif]-->
	
	<!--[if IE 9]>
		<link id="ie9style" href="css/ie9.css" rel="stylesheet">
	<![endif]-->
			
		
</head>

<body>
		<!-- start: Header -->
	<div class="navbar">
		<div class="navbar-inner">
			<div class="container-fluid">
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".top-nav.nav-collapse,.sidebar-nav.nav-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</a>
				<a class="brand" href="index.html"><span><%= virtualMachineMXBean.getHostname() %></span></a>
								
				<!-- start: Header Menu -->
				<!-- start: notifications list
				<div class="nav-no-collapse header-nav">
					<ul class="nav pull-right">
						<li class="dropdown hidden-phone">
							<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
								<i class="halflings-icon white warning-sign"></i>
							</a>
							<ul class="dropdown-menu notifications">
								<li>
									<span class="dropdown-menu-title">You have 11 notifications</span>
								</li>	
                            	<li>
                                    <a href="#">
										+ <i class="halflings-icon white user"></i> <span class="message">New user registration</span> <span class="time">1 min</span> 
                                    </a>
                                </li>
								<li>
                                    <a href="#">
										+ <i class="halflings-icon white comment"></i> <span class="message">New comment</span> <span class="time">7 min</span> 
                                    </a>
                                </li>
								<li>
                                    <a href="#">
										+ <i class="halflings-icon white comment"></i> <span class="message">New comment</span> <span class="time">8 min</span> 
                                    </a>
                                </li>
								<li>
                                    <a href="#">
										+ <i class="halflings-icon white comment"></i> <span class="message">New comment</span> <span class="time">16 min</span> 
                                    </a>
                                </li>
								<li>
                                    <a href="#">
										+ <i class="halflings-icon white user"></i> <span class="message">New user registration</span> <span class="time">36 min</span> 
                                    </a>
                                </li>
								<li>
                                    <a href="#">
										+ <i class="halflings-icon white cart"></i> <span class="message">2 items sold</span> <span class="time">1 hour</span> 
                                    </a>
                                </li>
								<li class="warning">
                                    <a href="#">
										- <i class="halflings-icon white user"></i> <span class="message">User deleted account</span> <span class="time">2 hour</span> 
                                    </a>
                                </li>
								<li class="warning">
                                    <a href="#">
										- <i class="halflings-icon white shopping-cart"></i> <span class="message">Transaction was canceled</span> <span class="time">6 hour</span> 
                                    </a>
                                </li>
								<li>
                                    <a href="#">
										+ <i class="halflings-icon white comment"></i> <span class="message">New comment</span> <span class="time">yesterday</span> 
                                    </a>
                                </li>
								<li>
                                    <a href="#">
										+ <i class="halflings-icon white user"></i> <span class="message">New user registration</span> <span class="time">yesterday</span> 
                                    </a>
                                </li>
                                <li>
                            		<a class="dropdown-menu-sub-footer">View all notifications</a>
								</li>	
							</ul>
						</li>
						end: Notifications list -->
						<!-- start: Tasks  Dropdown
						<li class="dropdown hidden-phone">
							<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
								<i class="halflings-icon white tasks"></i>
							</a>
							<ul class="dropdown-menu tasks">
								<li>
									<span class="dropdown-menu-title">You have 17 tasks in progress</span>
                            	</li>
								<li>
                                    <a href="#">
										<span class="header">
											<span class="title">iOS Development</span>
											<span class="percent"></span>
										</span>
                                        <div class="taskProgress progressSlim progressBlue">80</div> 
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
										<span class="header">
											<span class="title">Android Development</span>
											<span class="percent"></span>
										</span>
                                        <div class="taskProgress progressSlim progressBlue">47</div> 
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
										<span class="header">
											<span class="title">Django Project For Google</span>
											<span class="percent"></span>
										</span>
                                        <div class="taskProgress progressSlim progressBlue">32</div> 
                                    </a>
                                </li>
								<li>
                                    <a href="#">
										<span class="header">
											<span class="title">SEO for new sites</span>
											<span class="percent"></span>
										</span>
                                        <div class="taskProgress progressSlim progressBlue">63</div> 
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
										<span class="header">
											<span class="title">New blog posts</span>
											<span class="percent"></span>
										</span>
                                        <div class="taskProgress progressSlim progressBlue">80</div> 
                                    </a>
                                </li>
								<li>
                            		<a class="dropdown-menu-sub-footer">View all tasks</a>
								</li>	
							</ul>
						</li>
						 end: Notifications Dropdown -->
						<!-- start: Message Dropdown
						<li class="dropdown hidden-phone">
							<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
								<i class="halflings-icon white envelope"></i>
							</a>
							<ul class="dropdown-menu messages">
								<li>
									<span class="dropdown-menu-title">You have 9 messages</span>
								</li>	
                            	<li>
                                    <a href="#">
										<span class="avatar"><img src="img/avatar.jpg" alt="Avatar"></span>
										<span class="header">
											<span class="from">
										    	Łukasz Holeczek
										     </span>
											<span class="time">
										    	6 min
										    </span>
										</span>
                                        <span class="message">
                                            Lorem ipsum dolor sit amet consectetur adipiscing elit, et al commore
                                        </span>  
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
										<span class="avatar"><img src="img/avatar2.jpg" alt="Avatar"></span>
										<span class="header">
											<span class="from">
										    	Megan Abott
										     </span>
											<span class="time">
										    	56 min
										    </span>
										</span>
                                        <span class="message">
                                            Lorem ipsum dolor sit amet consectetur adipiscing elit, et al commore
                                        </span>  
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
										<span class="avatar"><img src="img/avatar3.jpg" alt="Avatar"></span>
										<span class="header">
											<span class="from">
										    	Kate Ross
										     </span>
											<span class="time">
										    	3 hours
										    </span>
										</span>
                                        <span class="message">
                                            Lorem ipsum dolor sit amet consectetur adipiscing elit, et al commore
                                        </span>  
                                    </a>
                                </li>
								<li>
                                    <a href="#">
										<span class="avatar"><img src="img/avatar4.jpg" alt="Avatar"></span>
										<span class="header">
											<span class="from">
										    	Julie Blank
										     </span>
											<span class="time">
										    	yesterday
										    </span>
										</span>
                                        <span class="message">
                                            Lorem ipsum dolor sit amet consectetur adipiscing elit, et al commore
                                        </span>  
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
										<span class="avatar"><img src="img/avatar5.jpg" alt="Avatar"></span>
										<span class="header">
											<span class="from">
										    	Jane Sanders
										     </span>
											<span class="time">
										    	Jul 25, 2012
										    </span>
										</span>
                                        <span class="message">
                                            Lorem ipsum dolor sit amet consectetur adipiscing elit, et al commore
                                        </span>  
                                    </a>
                                </li>
								<li>
                            		<a class="dropdown-menu-sub-footer">View all messages</a>
								</li>	
							</ul>
						</li>
						 end: Message Dropdown -->
						<!-- start: User Dropdown
						<li>
							<a class="btn" href="#">
								<i class="halflings-icon white wrench"></i>
							</a>
						</li> 
						<li class="dropdown">
							<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
								<i class="halflings-icon white user"></i> Administrator
								<span class="caret"></span>
							</a>
							<ul class="dropdown-menu">
								<li><a href="#"><i class="halflings-icon white user"></i> Profile</a></li>
								<li><a href="login.html"><i class="halflings-icon white off"></i> Logout</a></li>
							</ul>
						</li> 
					</ul>
				</div> 
				end: User Dropdown -->
				<!-- end: Header Menu -->
				
			</div>
		</div>
	</div>
	<!-- start: Header -->
	
		<div class="container-fluid">
		<div class="row-fluid">

				
			<!-- start: Main Menu -->
			<div id="sidebar-left" class="span1">
				<div class="nav-collapse sidebar-nav">
					<ul class="nav nav-tabs nav-stacked main-menu">
						<li class="active"><a href="jvclist.jsp"><i class="fa-icon-list"></i><span class="hidden-tablet">JVC List</span></a></li>
					</ul>
				</div>
			</div>
			<!-- <a id="main-menu-toggle" class="hidden-phone open"><i class="fa-icon-reorder"></i></a> -->
			<!-- end: Main Menu -->
			
			<noscript>
				<div class="alert alert-block span11">
					<h4 class="alert-heading">Warning!</h4>
					<p>You need to have <a href="http://en.wikipedia.org/wiki/JavaScript" target="_blank">JavaScript</a> enabled to use this site.</p>
				</div>
			</noscript>
			
			<!-- start: Content -->
			<div id="content" class="span11">
			<h1>Java Virtual Containers (JVCs)</h1>
			
			<div class="row-fluid">		
				<div class="box span12">
					<div class="box-content">
		
						<table class="table table-striped table-bordered table-condensed bootstrap-datatable datatable">
						  <thead>
							  <tr>
								  <th>JVC ID</th>
								  <th>Group</th>
								  <th>Name</th>
								  <th>Status</th>
								  <th>Heap Usage</th>
								  <th>Command</th>
								  <th>Actions</th>
							  </tr>
						  </thead>   
						  <tbody>
						  <%String containerNames[] =  virtualMachineMXBean.getContainerNames();
						   	int jvcCount = 0;
						  	for (; jvcCount < virtualMachineMXBean.getContainerCount(); jvcCount++)
						   		{
						  		JavaContainerMXBean javaContainerMXBean = virtualMachineMXBean.getJavaContainer(jvcCount + ""); 
						  		VirtualContainerInfoMXBean virtualContainerInfoMXBean = javaContainerMXBean.getContainerInfoMXBean(); %>
							<tr>
								<td><%= javaContainerMXBean.getContainerId() %></td>
								<td class="center"><%= virtualContainerInfoMXBean.getElasticGroup() %></td>
								<td class="center"><%= javaContainerMXBean.getContainerName() %></td>
								<td class="center">
									<span class="label label-success"><%= javaContainerMXBean.getStatus() %></span>
								</td>
								<td class="center"><span class="sparkLineStats3"></span></td>
								<td class="center"><%= virtualContainerInfoMXBean.getCommandLine() %></td>
								<td class="center">
									<!-- <form action="SUBMIT"> -->
										<a class="btn" href="jvcinfo.jsp?action=selectJVC&jvcID=<%= javaContainerMXBean.getContainerId() %>">
											<i class="halflings-icon info-sign"></i>  
										</a>
									<!-- </form> -->
									<a class="btn" href="#">
										<i class="halflings-icon play"></i>
									</a>
									<a class="btn" href="#">
										<i class="halflings-icon pause"></i>
									</a>
									<a class="btn" href="#">
										<i class="halflings-icon stop"></i>
									</a>
									<a class="btn btn-danger" href="#">
										<i class="halflings-icon trash"></i> 
									</a>
								</td>
							</tr>

						<% 	} %>


						  </tbody>
					  </table>            
					</div>
				</div><!--/span-->
			
			</div><!--/row-->

   
					
			</div>
			<!-- end: Content -->
			
			<!-- start: Widgets Area
<div id="widgets-area" class="span2 hidden-tablet hidden-phone">
	
	<ul class="nav tab-menu nav-tabs" id="myTab">
		<li class="active"><a href="#charts"><i class="fa-icon-bar-chart"></i></a></li>
		<li><a href="#users"><i class="fa-icon-group"></i></a></li>
		<li><a href="#messages"><i class="fa-icon-envelope"></i></a></li>
		<li><a id="close-widgets-area" href="#"><i class="fa-icon-signin"></i></a></li>
	</ul>
	 
	<div id="myTabContent" class="tab-content">
		<div class="tab-pane active" id="charts">
			
			<div class="bar-stat">
				<span class="title">Account balance</span>
				<span class="value">$19 999,99</span>
				<span class="chart green">7,3,2,6,6,3,9,0,1,4</span>
			</div>

			<hr>

			<div class="bar-stat">
				<span class="title">Clients</span>
				<span class="value">1278</span>
				<span class="chart yellow">8,2,5,4,7,4,7,2,5,9</span>
			</div>

			<hr>

			<div class="bar-stat">
				<span class="title">Orders</span>
				<span class="value">5876</span>
				<span class="chart blue">2,4,6,8,3,5,9,3,2,2</span>
			</div>

			<hr>

			<div class="bar-stat">
				<span class="title">Messages</span>
				<span class="value">673</span>
				<span class="chart red">0,3,3,8,3,3,2,7,8,4</span>
			</div>
			
			<hr>
			
			<div id="cpu-usage"></div>
			
			<ul class="progress-bars">
				
				<li>
					<span class="title">Free Memory</span>
					<span class="percent"></span>
					<div class="taskProgress progressSlim progressGreen">80</div>
				</li>
				
				<li>
					<span class="title">Free HDD Drive</span>
					<span class="percent"></span>
					<div class="taskProgress progressSlim progressYellow">20</div>
				</li>
				
				<li>
					<span class="title">Free SSD Drive</span>
					<span class="percent"></span>
					<div class="taskProgress progressSlim progressBlue">57</div>
				</li>
				
				<li>
					<span class="title">Transfer</span>
					<span class="percent"></span>
					<div class="taskProgress progressSlim progressRed">45</div>
				</li>	
				
			</ul>	

		</div>
		<div class="tab-pane" id="users">
			
			<ul class="users-list">
            	<li>
                    <a href="#">
						<span class="status active"></span>
						<span class="avatar"><img class="img-circle" src="img/avatar.jpg" alt="Avatar"></span>
						<span class="name">Łukasz Holeczek</span>
                    </a>
                </li>
                <li>
                    <a href="#">
						<span class="status busy"></span>
						<span class="avatar"><img class="img-circle" src="img/avatar2.jpg" alt="Avatar"></span>
						<span class="name">Megan Abott</span>
                    </a>
                </li>
                <li>
                    <a href="#">
						<span class="status disable"></span>
						<span class="avatar"><img class="img-circle" src="img/avatar3.jpg" alt="Avatar"></span>
						<span class="name">Kate Ross</span>
                    </a>
                </li>
				<li>
                    <a href="#">
						<span class="status active"></span>
						<span class="avatar"><img class="img-circle" src="img/avatar4.jpg" alt="Avatar"></span>
						<span class="name">Julie Blank</span>
                    </a>
                </li>
                <li>
                    <a href="#">
						<span class="status"></span>
						<span class="avatar"><img class="img-circle" src="img/avatar5.jpg" alt="Avatar"></span>
						<span class="name">Jane Sanders</span>
                    </a>
                </li>
				<li>
            		<a href="#">View all users</a>
				</li>	
			</ul>

		</div>
		<div class="tab-pane" id="messages">
			
			<ul class="messages-list">
            	<li>
                    <a href="#">
						<div class="avatar"><img class="img-circle" src="img/avatar.jpg" alt="Avatar"></div>
						<span class="name">Łukasz Holeczek</span>
						<span class="date">25/6/2013</span>
						<span class="title">Custom Bootstrap design for new client</span>
                    </a>
                </li>
                <li>
                    <a href="#">
						<div class="avatar"><img class="img-circle" src="img/avatar2.jpg" alt="Avatar"></div>
						<span class="name">Megan Abott</span>
						<span class="date">25/6/2013</span>
						<span class="title">Custom Bootstrap design for new client</span>
                    </a>
                </li>
                <li>
                    <a href="#">
						<div class="avatar"><img class="img-circle" src="img/avatar3.jpg" alt="Avatar"></div>
						<span class="name">Kate Ross</span>
						<span class="date">25/6/2013</span>
						<span class="title">Custom Bootstrap design for new client</span>
                    </a>
                </li>
				<li>
                    <a href="#">
						<div class="avatar"><img class="img-circle" src="img/avatar4.jpg" alt="Avatar"></div>
						<span class="name">Julie Blank</span>
						<span class="date">25/6/2013</span>
						<span class="title">Custom Bootstrap design for new client</span>
                    </a>
                </li>
                <li>
                    <a href="#">
						<div class="avatar"><img class="img-circle" src="img/avatar5.jpg" alt="Avatar"></div>
						<span class="name">Jane Sanders</span>
						<span class="date">25/6/2013</span>
						<span class="title">Custom Bootstrap design for new client</span>
                    </a>
                </li>
				<li>
            		<a href="#">View all messages</a>
				</li>	
			</ul>

		</div>
	</div>
			
</div>

        <a id="widgets-area-button" class="hidden-tablet hidden-phone open"><i class="fa-icon-reorder"></i></a>				
				</div>
end: Widgets Area -->
				<!--/fluid-row-->
				
		<div class="modal hide fade" id="myModal">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">×</button>
				<h3>Settings</h3>
			</div>
			<div class="modal-body">
				<p>Here settings can be configured...</p>
			</div>
			<div class="modal-footer">
				<a href="#" class="btn" data-dismiss="modal">Close</a>
				<a href="#" class="btn btn-primary">Save changes</a>
			</div>
		</div>
		
		<div class="clearfix"></div>
		
		<footer>
			<p>
				<span style="text-align:left;float:left">&copy; 2013 <a href="http://www.waratek.com/" alt="Waratek">Waratek</a></span>
				<span class="hidden-phone" style="text-align:right;float:right">Powered by: <a href="http://admintemplates.co" alt="Bootstrap Admin Templates">ACME Dashboard</a></span>
			</p>
		</footer>
				
	</div><!--/.fluid-container-->

	<!-- start: JavaScript-->

		<script src="js/jquery-1.9.1.min.js"></script>
	<script src="js/jquery-migrate-1.0.0.min.js"></script>
	
		<script src="js/jquery-ui-1.10.0.custom.min.js"></script>
	
		<script src="js/jquery.ui.touch-punch.js"></script>
	
		<script src="js/modernizr.js"></script>
	
		<script src="js/bootstrap.min.js"></script>
	
		<script src="js/jquery.cookie.js"></script>
	
		<script src='js/fullcalendar.min.js'></script>
	
		<script src='js/jquery.dataTables.min.js'></script>

		<script src="js/excanvas.js"></script>
	<script src="js/jquery.flot.js"></script>
	<script src="js/jquery.flot.pie.js"></script>
	<script src="js/jquery.flot.stack.js"></script>
	<script src="js/jquery.flot.resize.min.js"></script>
		
		<script src="js/gauge.min.js"></script>

		<script src="js/jquery.chosen.min.js"></script>
	
		<script src="js/jquery.uniform.min.js"></script>
		
		<script src="js/jquery.cleditor.min.js"></script>
	
		<script src="js/jquery.noty.js"></script>
	
		<script src="js/jquery.elfinder.min.js"></script>
	
		<script src="js/jquery.raty.min.js"></script>
	
		<script src="js/jquery.iphone.toggle.js"></script>
	
		<script src="js/jquery.uploadify-3.1.min.js"></script>
	
		<script src="js/jquery.gritter.min.js"></script>
	
		<script src="js/jquery.imagesloaded.js"></script>
	
		<script src="js/jquery.masonry.min.js"></script>
	
		<script src="js/jquery.knob.modified.js"></script>
	
		<script src="js/jquery.sparkline.min.js"></script>
	
		<script src="js/counter.js"></script>
	
		<script src="js/raphael.2.1.0.min.js"></script>
	<script src="js/justgage.1.0.1.min.js"></script>
	
		<script src="js/retina.js"></script>

		<script src="js/core.min.js"></script>
	
		<script src="js/charts.js"></script>
	
		<script src="js/custom.js"></script>
	<!-- end: JavaScript-->
	
</body>
</html>