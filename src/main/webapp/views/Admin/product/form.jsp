<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<mt:admin_template tittle="Create Product">
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
						<h3 class="card-title">Product Information</h3>
					</div>
					<!-- /.card-header -->
					<!-- form start -->
					<form enctype="multipart/form-data" action="<c:url value='/admin/product/add'/>"
						  method="post">
						<div class="card-body">
							<div class="row">
								<!-- left column -->
								<div class="col-md-6">
									<div class="form-group">
										<label for="proName">Tên sản phẩm</label>
										<input type="text" class="form-control form-control-border" id="proName"
											   name="proName" placeholder="Tên sản phẩm">
									</div>
									<div class="form-group">
										<label for="proDescription">Mô tả ngắn gọn (Dưới 250 từ)</label>
										<textarea class="form-control form-control-border" id="proDescription"
												  name="proDescription" rows="3" placeholder="Enter ..."
												  style="margin-top: 0px; margin-bottom: 0px; height: 83px;"></textarea>
									</div>
									<div class="form-group">
										<label for="proDescription">Mô tả chi tiết</label>
										<textarea class="form-control form-control-border ckeditor" id="proContent"
												  name="proContent" rows="3" placeholder="Enter ..."
												  style="margin-top: 0px; margin-bottom: 0px; height: 83px;"></textarea>
									</div>

									<div class="row">
										<div class="form-group col-md-6">
											<div class="custom-control custom-switch">
												<input type="checkbox" class="custom-control-input" id="proActive" value="1"
													   name="proActive" checked>
												<label class="custom-control-label" for="proActive">Active</label>
											</div>
										</div>
										<div class="form-group col-md-6">
											<div class="custom-control custom-switch">
												<input type="checkbox" class="custom-control-input" id="proHot"
													   value="1" name="proHot" checked>
												<label class="custom-control-label" for="proHot">Hot Product</label>
											</div>
										</div>
									</div>
								</div>
								<!--/.col (left) -->
								<!-- right column -->
								<div class="col-md-6">
									<div class="form-group">
										<label for="proCategoryId" class="form-label">Danh mục:</label>
										<input type="number" id="proCategoryId" name="proCategoryId" class="form-control form-control-border"
											   placeholder="Danh mục" min="0"
											   value="10">
									</div>
									<div class="form-group">
										<label for="proPrice" class="form-label">Đơn giá:</label>
										<input type="number" name="proPrice" class="form-control form-control-border"
											   placeholder="Đơn giá" id="proPrice" min="0"
											   value="0">
									</div>

									<div class="form-group">
										<label for="proSale" class="form-label">% Khuyến mãi:</label>
										<input type="number" name="proSale" class="form-control form-control-border"
											   placeholder="% giảm giá" id="proSale" min="0"
											   value="0">
									</div>

									<div class="form-group">
										<label for="proNumber" class="form-label">Số lượng sản phẩm:</label>
										<input type="number" id="proNumber" name="proNumber" class="form-control form-control-border"
											   placeholder="Số lượng" min="0"
											   value="0">
									</div>

									<div class="form-group">
										<label for="proAvatar">Ảnh sản phẩm</label>
										<div class="input-group">
											<div class="custom-file">
												<input type="file" class="custom-file-input" id="proAvatar" name="proAvatar">
												<label class="custom-file-label" for="proAvatar">Choose file</label>
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
