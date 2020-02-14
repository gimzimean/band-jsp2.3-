<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>AdminLTE 3 | jsGrid</title>
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Font Awesome -->
<link rel="stylesheet"
	href="plugins/fontawesome-free/css/all.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- jsGrid -->
<link rel="stylesheet" href="plugins/jsgrid/jsgrid.min.css">
<link rel="stylesheet" href="plugins/jsgrid/jsgrid-theme.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="dist/css/adminlte.min.css">
<!-- Google Font: Source Sans Pro -->
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700"
	rel="stylesheet">
</head>
<body class="hold-transition sidebar-mini">
	<div class="wrapper">
		<!-- Navbar -->
		<%@include file="/include/nav.jsp"%>
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1>My Band List</h1>
						</div>
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item active">My Band List</li>
							</ol>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</section>

			<!-- Main content -->
			<section class="content">
				<div class="card">
					<div class="card-header">
						<h3 class="card-title">My Band List</h3>
					</div>
					<!-- /.card-header -->
					<div class="card-body">

						<div class="row">
							<div class="col-12">
								<div class="card">
									<div class="card-header">

										<div class="card-tools">
											<div class="input-group input-group-sm" style="width: 150px;">
												<input type="text" name="table_search"
													class="form-control float-right" placeholder="Search">

												<div class="input-group-append">
													<button type="submit" class="btn btn-default">
														<i class="fas fa-search"></i>
													</button>
												</div>
											</div>
										</div>
									</div>
									<!-- /.card-header -->

									<div class="card-body table-responsive p-0">
										<table class="table table-hover text-nowrap">
											<thead>
												<tr>
													<th>ID</th>
													<th class="text-center">name</th>
													<th> </th>
													
													<th class="text-center">Info</th>
													<th> </th>
													<th class="text-center">Status</th>

												</tr>
											</thead>
											<tbody>
												<c:forEach var="band" items="${bands }" varStatus="status">
													<tr>
														<td >${band.id }</td>
														<td class="text-center">${band.bandName}</td>
														<td> </td>
														<td class="text-center">${band.bandInfo }</td>
														<td> </td>
														<td class="project-actions text-center">
														 <a class="btn btn-info btn-sm" href="*.band?cmd=bandPage&id=${band.id }">
														  <i
																class="fas fa-pencil-alt"> </i> Edit
														</a> <a class="btn btn-danger btn-sm" href="*.user?cmd=delete&id=${band.id }&userId=${band.userId}">
														 <i
																class="fas fa-trash"> </i> Delete
														</a></td>
													</tr>
												</c:forEach>

											</tbody>
										</table>

									</div>
									<div class="card-footer">
										<nav aria-label="Contacts Page Navigation">
											<ul class="pagination justify-content-center m-0">
												<li class="page-item active"><a class="page-link"
													href="#">1</a></li>
												<li class="page-item"><a class="page-link" href="#">2</a></li>
												<li class="page-item"><a class="page-link" href="#">3</a></li>
												<li class="page-item"><a class="page-link" href="#">4</a></li>
												<li class="page-item"><a class="page-link" href="#">5</a></li>
												<li class="page-item"><a class="page-link" href="#">6</a></li>
												<li class="page-item"><a class="page-link" href="#">7</a></li>
												<li class="page-item"><a class="page-link" href="#">8</a></li>
											</ul>
										</nav>
									</div>


									<!-- /.card-body -->
								</div>
								<!-- /.card -->
							</div>
						</div>
					</div>
				</div>
				<!-- /.card-body -->
		</div>
		<!-- /.card -->
		</section>
		<!-- /.content -->
	</div>
	<!-- /.content-wrapper -->
	<footer class="main-footer">
		<div class="float-right d-none d-sm-block">
			<b>Version</b> 3.0.2
		</div>
		<strong>Copyright &copy; 2014-2019 <a
			href="http://adminlte.io">AdminLTE.io</a>.
		</strong> All rights reserved.
	</footer>

	<!-- Control Sidebar -->
	<aside class="control-sidebar control-sidebar-dark">
		<!-- Control sidebar content goes here -->
	</aside>
	<!-- /.control-sidebar -->
	</div>
	<!-- ./wrapper -->

	<!-- jQuery -->
	<script src="../../plugins/jquery/jquery.min.js"></script>
	<!-- Bootstrap 4 -->
	<script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- jsGrid -->
	<script src="../../plugins/jsgrid/demos/db.js"></script>
	<script src="../../plugins/jsgrid/jsgrid.min.js"></script>
	<!-- AdminLTE App -->
	<script src="../../dist/js/adminlte.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="../../dist/js/demo.js"></script>
	<!-- page script -->
	<script>
		$(function() {
			$("#jsGrid1").jsGrid({
				height : "100%",
				width : "100%",

				sorting : true,
				paging : true,

				data : db.clients,

				fields : [ {
					name : "Name",
					type : "text",
					width : 150
				}, {
					name : "Age",
					type : "number",
					width : 50
				}, {
					name : "Address",
					type : "text",
					width : 200
				}, {
					name : "Country",
					type : "select",
					items : db.countries,
					valueField : "Id",
					textField : "Name"
				}, {
					name : "Married",
					type : "checkbox",
					title : "Is Married"
				}

				]
			});
		});
	</script>
</body>
</html>
