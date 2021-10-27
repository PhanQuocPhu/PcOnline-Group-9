<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="transactions" scope="request" type="java.util.List<entity.Transactions>"/>

<mt:admin_template tittle="Transaction">
	<jsp:body>
		<section class="content-header">
			<div class="container-fluid">
				<div class="row mb-2">
					<div class="col-sm-6">
					</div>
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/admin">Home</a></li>
							<li class="breadcrumb-item active">Transactions</li>
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
								<h2 class="card-title" style="font-size: 2.0rem"></h2>
								<button type="button" class="btn btn-outline-success float-right"
										data-toggle="modal"
										data-target="#formModal"
										data-id=""
										data-cname=""
										data-chome="0"
										data-cactive="0">Thêm mới
								</button>
							</div>
							<!-- /.card-header -->
							<c:choose>
								<c:when test="${transactions.size() == 0}">
									<div class="card-body">
										<p class="card-text">Không có dữ liệu.</p>
									</div>
								</c:when>
								<c:otherwise>
									<div class="card-body">
										<table id="dataTable" class="table table-striped projects">
											<thead>
												<tr>
													<th style="width: 5%">ID</th>
													<th style="width: 30%">Thông tin đơn hàng</th>
													<th class="text-center" style="width: 10%">Tổng giá trị</th>
													<th class="text-center" style="width: 10%">Trạng thái</th>
													<th class="text-center" style="width: 10%">Thanh toán</th>
													<th class="text-center" style="width: 10%">Thao Tác</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="tr" items="${transactions}">
													<tr>
														<td>${tr.id}</td>
														<td>
															<dl>
																<dt>Tên khách hàng: ${tr.usersByTruserid.name}</dt>
																<dd>
																	<ul>

																		<li><strong>Địa chỉ:</strong> ${tr.traddress}</li>
																		<li><strong>Số điện thoại:</strong> ${tr.trphone}</li>
																		<li><strong>Ngày đặt hàng:</strong> ${tr.createdat}</li>
																	</ul>
																</dd>
															</dl>
														</td>
														<td class="text-center">
															<fmt:formatNumber value = "${tr.trtotal}" type = "currency"/>
														</td>
														<td class="text-center">
															<c:choose>
																<c:when test="${tr.trstatus == 0}">
																	<a style="font-size: 14px" class="badge badge-secondary" data-value="0"> Đang chờ duyệt </a>
																</c:when>
																<c:when test="${tr.trstatus == 1}">
																	<a style="font-size: 14px" class="badge badge-warning" data-value="1"> Đang giao hàng </a>
																</c:when>
																<c:when test="${tr.trstatus == 2}">
																	<a style="font-size: 14px" class="badge badge-success" data-value="2"> Finish </a>
																</c:when>
															</c:choose>
														</td>
														<td class="text-center">
															<c:choose>
																<c:when test="${tr.trstatus == 0}">
																	<a style="font-size: 14px" class="badge badge-secondary" data-value="0"> COD </a>
																</c:when>
																<c:when test="${tr.trstatus == 1}">
																	<a style="font-size: 14px" class="badge badge-success" data-value="1"> COD </a>
																</c:when>
																<c:when test="${tr.trstatus == 2}">
																	<a style="font-size: 14px" class="badge badge-success" data-value="2"> VNPAY </a>
																</c:when>
															</c:choose>
														</td>
														<td class="text-center">
															<form action="${pageContext.request.contextPath}/admin/transaction/delete?id=${tr.id}"
																  method="post" id="${tr.id}-del" hidden>
															</form>
															<button class="btn btn-outline-success btnSelect"
																	data-toggle="modal"
																	data-target="#formModal"
																	data-id="${tr.id}">
																<i class="fa fa-pen" aria-hidden="true"></i>
															</button>
															<button class="btn btn-outline-danger"
																	onclick="document.getElementById('${tr.id}-del').submit();">
																<i class="fa fa-trash" aria-hidden="true"></i>
															</button>

														</td>
													</tr>
												</c:forEach>
											</tbody>
											<tfoot>
												<tr>
													<th style="width: 5%">ID</th>
													<th style="width: 30%">Thông tin đơn hàng</th>
													<th class="text-center" style="width: 10%">Tổng giá trị</th>
													<th class="text-center" style="width: 10%">Trạng thái</th>
													<th class="text-center" style="width: 10%">Thanh toán</th>
													<th class="text-center" style="width: 10%">Thao Tác</th>
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

		<%--Form Model--%>
		<div class="modal fade" id="formModal" tabindex="-1" role="dialog" aria-labelledby="formModalLabel"
			 aria-hidden="true">
			<div class="modal-dialog modal-lg" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="formModalLabel">New Category</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div id="formData">
						<%@include file="/views/Admin/category/form.jsp" %>
					</div>
				</div>
			</div>
		</div>

		<script>
            $('#formModal').on('show.bs.modal', function (event) {        // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
                var button = $(event.relatedTarget)
                var id = button.data('id');
                var url = "";
                var modal = $(this);
                var modalTittle = modal.find('.modal-title');
                var modalForm = modal.find('.modal-content form');
                if (id !== "") {
                    url = "${pageContext.request.contextPath}/admin/category/update?id=" + id;
                    $.get(url, function (responseXml) {          // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response JSON...
                        $('#formData').html(responseXml);
                        modalTittle.text('Edit Category ID: ' + id);
                    });
                } else if (id === "") {
                    url = "${pageContext.request.contextPath}/admin/category/add";
                    $.get(url, function (responseXml) {          // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response JSON...
                        $('#formData').html(responseXml);
                        modalTittle.text('New Category');
                        $('#imgPreview').attr("src", "${pageContext.request.contextPath}/public/images/noimg.jpg");
                    });
                }

            });
		</script>
	</jsp:body>
</mt:admin_template>
