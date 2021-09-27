<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:useBean id="categories" scope="request" type="java.util.List<entity.CategoriesEntity>"/>

<mt:admin_template tittle="Category">
	<jsp:body>
		<section class="content-header">
			<div class="container-fluid">
				<div class="row mb-2">
					<div class="col-sm-6">
						<h1>Danh Mục</h1>
					</div>
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item"><a href="#">Home</a></li>
							<li class="breadcrumb-item active">Category</li>
						</ol>
					</div>
				</div>
			</div><!-- /.container-fluid -->
		</section>
		<section class="content">
			<div class="container-fluid">
				<div class="row">
					<div class="col-12">
						<!-- /.card -->
						<div class="card">
							<div class="card-header">
								<h2 class="card-title"></h2>
								<a href="${pageContext.request.contextPath}/admin/category/add" class="btn btn-outline-success float-right"> Thêm mới </a>
							</div>
							<!-- /.card-header -->

							<c:choose>
								<c:when test="${categories.size() == 0}">
									<div class="card-body">
										<p class="card-text">Không có dữ liệu.</p>
									</div>
								</c:when>
								<c:otherwise>
									<div class="card-body">
										<table id="example1" class="table table-bordered table-striped">
											<thead>
												<tr>
													<th>ID</th>
													<th>Tên Danh Mục</th>
													<th>Icon</th>
													<th>HomePage</th>
													<th>Status</th>
													<th>Thao Tác</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="c" items="${categories}">
													<tr>
														<td>${c.id}</td>
														<td>${c.cName}</td>
														<td>${c.cIcon}</td>
														<td>
																${c.cHome == 1 ? '<a class="badge badge-success"> Yes </a>' : '<a class="badge badge-danger"> Nope </a>'}
														</td>
														<td>
																${c.cActive == 1 ? '<a class="badge badge-success"> Active </a>' : '<a class="badge badge-danger"> Nope </a>'}
														</td>
														<td class="text-center">
															<a class="btn btn-outline-primary"
															   href="<%--${pageContext.request.contextPath}/admin/category/edit?id=${c.id}--%>"
															   role="button">
																<i class="fa fa-pen" aria-hidden="true"></i>
															</a>
															<a class="btn btn-outline-danger"
															   href="<%--${pageContext.request.contextPath}/admin/category/?id=${c.id}--%>"
															   role="button">
																<i class="fa fa-trash" aria-hidden="true"></i>
															</a>
														</td>
													</tr>
												</c:forEach>
											</tbody>
											<tfoot>
												<tr>
													<th>ID</th>
													<th>Tên Danh Mục</th>
													<th>Icon</th>
													<th>HomePage</th>
													<th>Status</th>
													<th>Thao Tác</th>
												</tr>
											</tfoot>
										</table>
									</div>
								</c:otherwise>
							</c:choose>
							<!-- /.card-body -->
						</div>
						<!-- /.card -->
					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /.container-fluid -->
		</section>
	</jsp:body>
</mt:admin_template>
