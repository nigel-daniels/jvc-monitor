<%@page import="java.lang.management.MemoryUsage"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="java.lang.management.MemoryManagerMXBean"%>
<%@page import="cloudvm.management.VirtualMemoryMXBean"%>
<%@page import="cloudvm.management.VirtualContainerInfoMXBean"%>
<%@page import="cloudvm.management.JavaContainerMXBean"%>
<%@page import="cloudvm.management.VirtualMachineMXBean"%>
<%@page import="cloudvm.management.ManagementFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	
	<!-- start: Meta -->
	<meta charset="utf-8">
	<title>Waratek Admin</title>
	<meta name="description" content="ACME Dashboard Bootstrap Admin Template.">
	<meta name="author" content="Waratek">
	<meta name="keyword" content="ACME, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
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
				<a class="brand" href="index.html"><span>Home</span></a>
								
				<!-- start: Header Menu -->
				<!--  Commented out unused header items
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
						-->
						<!-- start: Notifications Dropdown -->
						<!-- Commented out unused header items
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
						-->
						<!-- end: Notifications Dropdown -->
						<!-- start: Message Dropdown -->
						<!--  Commented out unused header items
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
										    	Åukasz Holeczek
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
						-->
						<!-- end: Message Dropdown -->
						<!-- Commented out unused header items
						<li>
							<a class="btn" href="#">
								<i class="halflings-icon white wrench"></i>
							</a>
						</li>
						-->
						<!-- start: User Dropdown -->
						<!-- Commented out unused header items
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
						<!-- end: User Dropdown -->
						<!-- Commented out unused header items
					</ul>
				</div>
				-->
				<!-- end: Header Menu -->
				
			</div>
		</div>
	</div>
	<!-- start: Header -->
		<% String jvcID = request.getParameter("jvcID");
		VirtualMachineMXBean virtualMachineMXBean = ManagementFactory.getVirtualMachineMXBean();
		JavaContainerMXBean javaContainerMXBean = virtualMachineMXBean.getJavaContainer(jvcID);
		%>
		<div class="container-fluid">
		<div class="row-fluid">

				
			<!-- start: Main Menu -->
			<div id="sidebar-left" class="span1">
				<div class="nav-collapse sidebar-nav">
					<ul class="nav nav-tabs nav-stacked main-menu">
						<li class="active"><a href="jvclist.jsp"><i class="fa-icon-list"></i><span class="hidden-tablet"> JVC List</span></a>
							<ul style="display: block;">
								<li class="active"><i class="fa-icon-list"></i><span class="hidden-tablet"><%= javaContainerMXBean.getContainerName() %></span></li>
							</ul>
						</li>
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
			<!-- TRIED ATTRIBUTE, SESSION, REQUEST -->
			
			<h1><%= javaContainerMXBean.getContainerName() %></h1>

				<div class="row-fluid hideInIE8">
				
				<div class="span12">
					
					<div class="circleStats">
						<%
						// Reserved meory data
						VirtualMemoryMXBean virtualMemoryMXBean = javaContainerMXBean.getMemoryMXBean();
						MemoryUsage memoryUsage = virtualMemoryMXBean.getHeapMemoryUsage();
						
						// Heap memory data
						
						long maxHeapMemory = virtualMemoryMXBean.getMaximumHeapMemorySize();
						long maxHeapMemoryGB = (maxHeapMemory/1024)/1024;
						long heapMemoryUsed = virtualMemoryMXBean.getUsedHeapMemory();
						long heapMemoryUsedGB = (heapMemoryUsed/1024)/1024; 
						System.out.println("max Heap = " + maxHeapMemory + ", used Heap = " + heapMemoryUsed);
						%>
						<div class="span2" onTablet="span4" onDesktop="span2">
	                    	<div class="circleStatsItemBox">
								<div class="header">Reserved Mem Usage</div>
								<span class="percent">percent</span>
								<div class="circleStat">
	                        		<input type="text" value="100" class="whiteCircle" />
								</div>		
								<div class="footer">
									<span class="count">
										<span class="number">256</span>
										<span class="unit">MB</span>
									</span>
									<span class="sep"> / </span>
									<span class="value">
										<span class="number">256</span>
										<span class="unit">MB</span>
									</span>	
								</div>
	                    	</div>
						</div>

						<div class="span2" onTablet="span4" onDesktop="span2">
	                    	<div class="circleStatsItemBox">
								<div class="header">Elastic Mem Usage</div>
								<span class="percent">percent</span>
								<div class="circleStat">
	                        		<input type="text" value="15" class="whiteCircle" />
								</div>
								<div class="footer">
									<span class="count">
										<span class="number">512</span>
										<span class="unit">MB</span>
									</span>
									<span class="sep"> / </span>
									<span class="value">
										<span class="number">2048</span>
										<span class="unit">MB</span>
									</span>	
								</div>
	                    	</div>
						</div>

						<div class="span2" onTablet="span4" onDesktop="span2">
	                    	<div class="circleStatsItemBox">
								<div class="header">Heap Memory Usage</div>
								<span class="percent">percent</span>
	                        	<div class="circleStat">
	                        		<% long heapMemoryPerc = maxHeapMemory==0.0f?0:(heapMemoryUsed/maxHeapMemory)*100; %>
	                        		<input type="text" value="<%= heapMemoryPerc %>" class="whiteCircle" />
								</div>
								<div class="footer">
									<span class="count">
										<span class="number"><%= maxHeapMemory %></span>
										<span class="unit">b</span>
									</span>
									<span class="sep"> / </span>
									<span class="value">
										<span class="number"><%= heapMemoryUsed %></span>
										<span class="unit">b</span>
									</span>	
								</div>
	                    	</div>
						</div>

						<div class="span2 noMargin" onTablet="span4" onDesktop="span2">
	                    	<div class="circleStatsItemBox">
								<div class="header">CPU</div>
								<span class="percent">percent</span>
	                        	<div class="circleStat">
	                        		<input type="text" value="83" class="whiteCircle" />
								</div>
								<div class="footer">
									<span class="count">
										<span class="number">64</span>
										<span class="unit">GHz</span>
									</span>
									<span class="sep"> / </span>
									<span class="value">
										<span class="number">3.2</span>
										<span class="unit">GHz</span>
									</span>	
								</div>
	                    	</div>
						</div>

						<div class="span2" onTablet="span4" onDesktop="span2">
	                    	<div class="circleStatsItemBox">
								<div class="header">Memory</div>
								<span class="percent">percent</span>
	                        	<div class="circleStat">
	                        		<input type="text" value="100" class="whiteCircle" />
								</div>
								<div class="footer">
									<span class="count">
										<span class="number">64</span>
										<span class="unit">GB</span>
									</span>
									<span class="sep"> / </span>
									<span class="value">
										<span class="number">64</span>
										<span class="unit">GB</span>
									</span>	
								</div>
	                    	</div>
						</div>

						<div class="span2" onTablet="span4" onDesktop="span2">
	                    	<div class="circleStatsItemBox">
								<div class="header">Memory</div>
								<span class="percent">percent</span>
	                        	<div class="circleStat">
	                        		<input type="text" value="100" class="whiteCircle" />
								</div>
								<div class="footer">
									<span class="count">
										<span class="number">64</span>
										<span class="unit">GB</span>
									</span>
									<span class="sep"> / </span>
									<span class="value">
										<span class="number">64</span>
										<span class="unit">GB</span>
									</span>	
								</div>
	                    	</div>
						</div>

	                </div>
					
				</div>
				
				</div>		


			<div class="row-fluid">		
				<div class="box span6">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon info-sign"></i><span class="break"></span>vcinfo</h2>
						<div class="box-icon">
							<!-- <a href="#" class="btn-setting"><i class="halflings-icon wrench"></i></a> -->
							<a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="halflings-icon remove"></i></a>
						</div>
					</div>
					<div class="box-content">
						<table class="table table-striped table-bordered table-condensed">
						  <tbody>
						    <% VirtualContainerInfoMXBean virtualContainerInfoMXBean = javaContainerMXBean.getContainerInfoMXBean(); %>
							<tr><td>ID</td><td><%= javaContainerMXBean.getContainerId() %></td></tr>
							<tr><td>Name</td><td><%= javaContainerMXBean.getContainerName() %></td></tr>
							<tr><td>Type</td><td><%= javaContainerMXBean.getContainerType() %></td></tr>
							<tr><td>Command line</td><td><%= virtualContainerInfoMXBean.getCommandLine() %></td></tr>
							<tr><td>Console log file</td><td><%= javaContainerMXBean.getLogFilePath() %></td></tr>
							<%String status = javaContainerMXBean.getStatus(); %>
							<tr><td>Status</td><td><% if (status.equals("Running"))
															{ %><span class="label label-success">Running</span><% } 
													 else if (status.equals("Paused"))
													 	 	{%><span class="label label-warning">Paused</span><% }
													 else
														 	{%><span class="label label">Stopped</span><% } %></td></tr>
							<tr><td>Elastic group</td><td><%= virtualContainerInfoMXBean.getElasticGroup() %></td></tr>
							<tr><td>Uptime</td><td><%= javaContainerMXBean.getUpTime() %></td></tr>
							<tr><td>Cpu usage</td><td><%= virtualContainerInfoMXBean.getCpuUsage("0.##E0") %></td></tr>
							<tr><td>Classloader count</td><td><%= virtualContainerInfoMXBean.getClassLoaderCount() %></td></tr>
							<tr><td>Total classes loaded</td><td><%= virtualContainerInfoMXBean.getTotalClassesLoaded() %></td></tr>
							<tr><td>Native library loading is</td><td><% if (javaContainerMXBean.getClassLoadingMXBean().isNativeLibraryEnabled())
																			{%>Enabled<%}
																		 else 
																		 	{%>Disabled<%} %></td></tr>
						  </tbody>
					  </table>            
					</div>
				</div><!--/span-->
			


				<div class="box span6">
					<div data-original-title="" class="box-header">
						<h2><i class="halflings-icon edit"></i><span class="break"></span>CPU and Process Scheduling</h2>
						<div class="box-icon">
							<a href="#" class="btn-setting"><i class="halflings-icon wrench"></i></a>
							<a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="halflings-icon remove"></i></a>
						</div>
					</div>
					<div class="box-content">
						<form class="form-vertical">
							<fieldset>

							<div class="control-group">
								<label class="control-label" for="selectError">JVC Priority</label>
								<div class="controls">
								  <select id="selectError" data-rel="chosen">
									<option>Priority 10</option>
									<option>Priority 9</option>
									<option>Priority 8</option>
									<option>Priority 7</option>
									<option>Priority 6</option>
									<option>Priority 5</option>
									<option>Priority 4</option>
									<option>Priority 3</option>
									<option>Priority 2</option>
									<option>Priority 1</option>
								  </select>
								</div>
							  </div>


		
							  <div class="control-group">
							  	<label class="control-label" for="selectError">CPU Affinity</label>
								<div class="controls">
								  <label class="checkbox inline">
									<div class="checker" id="uniform-inlineCheckbox1"><span><input type="checkbox" value="option1" id="inlineCheckbox1"></span></div> CPU 1
								  </label>
								  <label class="checkbox inline">
									<div class="checker" id="uniform-inlineCheckbox2"><span><input type="checkbox" value="option2" id="inlineCheckbox2"></span></div> CPU 2
								  </label>
								</div>
								<div class="controls">
								  <label class="checkbox inline">
									<div class="checker" id="uniform-inlineCheckbox1"><span><input type="checkbox" value="option1" id="inlineCheckbox1"></span></div> CPU 3
								  </label>
								  <label class="checkbox inline">
									<div class="checker" id="uniform-inlineCheckbox2"><span><input type="checkbox" value="option2" id="inlineCheckbox2"></span></div> CPU 4
								  </label>
								</div>
								<div class="controls">
								  <label class="checkbox inline">
									<div class="checker" id="uniform-inlineCheckbox1"><span><input type="checkbox" value="option1" id="inlineCheckbox1"></span></div> CPU 5
								  </label>
								  <label class="checkbox inline">
									<div class="checker" id="uniform-inlineCheckbox2"><span><input type="checkbox" value="option2" id="inlineCheckbox2"></span></div> CPU 6
								  </label>
								</div>	
								<div class="controls">
								  <label class="checkbox inline">
									<div class="checker" id="uniform-inlineCheckbox1"><span><input type="checkbox" value="option1" id="inlineCheckbox1"></span></div> CPU 7
								  </label>
								  <label class="checkbox inline">
									<div class="checker" id="uniform-inlineCheckbox2"><span><input type="checkbox" value="option2" id="inlineCheckbox2"></span></div> CPU 8
								  </label>
								</div>	

							  </div>

							  <div class="form-actions">
								<button class="btn btn-primary" type="submit">Save changes</button>
								<button class="btn">Cancel</button>
							  </div>
							</fieldset>
						</form>
					</div>
				</div>








				<div class="box span6">
					<div data-original-title="" class="box-header">
						<h2><i class="halflings-icon edit"></i><span class="break"></span>Memory</h2>
						<div class="box-icon">
							<a href="#" class="btn-setting"><i class="halflings-icon wrench"></i></a>
							<a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="halflings-icon remove"></i></a>
						</div>
					</div>
					<div class="box-content">
									<div class="sliderOverlay">
										<div class="slider sliderMin sliderGreen"></div>
									</div>
									<div class="field_notice">Max Mem: <span class="must sliderMinLabel">180</span></div>

									<div class="sliderOverlay">
										<div class="slider sliderMin sliderBlue"></div>
									</div>
									<div class="field_notice">Elastic Mem: <span class="must sliderMinLabel">180</span></div>       
					</div>
				</div>



			</div><!--/row-->


			<div class="row-fluid">	

				<div class="box span6">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon list"></i><span class="break"></span>Threads</h2>
						<div class="box-icon">
							<a href="#" class="btn-setting"><i class="halflings-icon wrench"></i></a>
							<a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="halflings-icon remove"></i></a>
						</div>
					</div>
					<div class="box-content">
						<table class="table table-striped table-bordered table-condensed">
						  <tbody>
							<tr><td>Thread maximum limit</td><td>     	0 (unlimited)</td></tr>
							<tr><td>Alive thread count</td><td>       	1</td></tr>
							<tr><td>Alive daemon threads</td><td>     	0</td></tr>
							<tr><td>Peak thread count</td><td>        	1</td></tr>
							<tr><td>Total started threads</td><td>    	1</td></tr>
							<tr><td>Alive thread IDs</td><td>         	24</td></tr>
						  </tbody>
					  </table>            
					</div>
				</div><!--/span-->




				<div class="box span6">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon list"></i><span class="break"></span>I/O</h2>
						<div class="box-icon">
							<a href="#" class="btn-setting"><i class="halflings-icon wrench"></i></a>
							<a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="halflings-icon remove"></i></a>
						</div>
					</div>
					<div class="box-content">
						<table class="table table-striped table-bordered table-condensed">
						  <tbody>
							<tr><td>File descriptor limit</td><td>    	914(OS Limit)</td></tr>
							<tr><td>File descriptor count</td><td>    	0</td></tr>
							<tr><td>File bytes written</td><td>       	0</td></tr>
							<tr><td>File bytes read</td><td>          	0</td></tr>
							<tr><td>Socket maximum limit</td><td>    	914(OS Limit)</td></tr>
							<tr><td>Active socket count</td><td>      	0</td></tr>
							<tr><td>Network bytes written</td><td>    	0</td></tr>
							<tr><td>Network bytes read</td><td>       	0</td></tr>
							<tr><td>Virtual root directory</td><td>     	"/"</td></tr>
						  </tbody>
					  </table>            
					</div>
				</div><!--/span-->
			

			</div><!--/row-->



			<div class="row-fluid sortable">
				<div class="box span12">
					<div class="box-header">
						<h2><i class="halflings-icon list-alt"></i><span class="break"></span>Heap Utilization</h2>
						<div class="box-icon">
							<a href="#" class="btn-setting"><i class="halflings-icon wrench"></i></a>
							<a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="halflings-icon remove"></i></a>
						</div>
					</div>
					<div class="box-content">
						 <div id="realtimechart" style="height:190px;"></div>
						 <p>You can update a chart periodically to get a real-time effect by using a timer to insert the new data in the plot and redraw it.</p>
						 <p>Time between updates: <input id="updateInterval" type="text" value="" style="text-align: right; width:5em"> milliseconds</p>
					</div>
				</div>
			</div><!--/row-->




   
					
			</div>
			<!-- end: Content -->
			
			<!-- start: Widgets Area -->
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
						<span class="name">Åukasz Holeczek</span>
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
						<span class="name">Åukasz Holeczek</span>
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
<!-- end: Widgets Area -->

<a id="widgets-area-button" class="hidden-tablet hidden-phone open"><i class="fa-icon-reorder"></i></a>				
				</div><!--/fluid-row-->
				
		<div class="modal hide fade" id="myModal">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">Ã</button>
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