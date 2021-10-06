<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<mt:admin_template tittle="Create Category">
	<jsp:body>
		<!-- Content Header (Page header) -->
		<section class="content-header">
			<div class="container-fluid">
				<div class="row mb-2">
					<div class="col-sm-6">
						<h1>Category</h1>
					</div>
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item"><a href="#">Home</a></li>
							<li class="breadcrumb-item"><a href="#">Category</a></li>
							<li class="breadcrumb-item active">Create</li>
						</ol>
					</div>
				</div>
			</div><!-- /.container-fluid -->
		</section>

		<!-- Main content -->
		<section class="content">
			<div class="container-fluid">
				<!-- general form elements -->
				<div class="card card-primary">
					<div class="card-header">
						<h3 class="card-title">Category Information</h3>
					</div>
					<!-- /.card-header -->
					<!-- form start -->
					<form enctype="multipart/form-data" action="${pageContext.request.contextPath}/admin/category/add"
						  method="post">
						<div class="card-body">
							<div class="row">
								<!-- left column -->
								<div class="col-md-6">
									<div class="form-group">
										<label for="cName">Tên danh mục</label>
										<input type="text" class="form-control form-control-border" id="cName"
											   name="cName" placeholder="Tên danh mục">
									</div>

									<div class="row">
										<div class="form-group col-md-6">
											<div class="custom-control custom-switch">
												<input type="checkbox" class="custom-control-input" id="cHome" value="1"
													   name="cHome" checked>
												<label class="custom-control-label" for="cHome">Home</label>
											</div>
										</div>
										<div class="form-group col-md-6">
											<div class="custom-control custom-switch">
												<input type="checkbox" class="custom-control-input" id="cActive"
													   value="1" name="cActive" checked>
												<label class="custom-control-label" for="cActive">Active</label>
											</div>
										</div>
									</div>
								</div>
								<!--/.col (left) -->
								<!-- right column -->
								<div class="col-md-6">
									<div class="form-group">
										<label for="cIcon">Icon</label>
										<div class="input-group">
											<div class="custom-file">
												<input type="file" class="custom-file-input" id="cIcon" name="cIcon">
												<label class="custom-file-label" for="cIcon">Choose file</label>
											</div>
											<div class="input-group-append">
												<span class="input-group-text">Upload</span>
											</div>
										</div>
									</div>
								</div>
								<!--/.col (right) -->
							</div>
							<!-- /.row -->

						</div>
						<div class="card-footer">
							<button type="submit" class="btn btn-primary">Submit</button>
						</div>
					</form>
				</div>
				<!-- /.card -->

			</div><!-- /.container-fluid -->
		</section>
	</jsp:body>
</mt:admin_template>
