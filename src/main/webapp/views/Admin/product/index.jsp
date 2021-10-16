<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:useBean id="products" scope="request" type="java.util.List<entity.Products>"/>
<jsp:useBean id="categories" scope="request" type="java.util.List<entity.Categories>"/>

<mt:admin_template tittle="Product">
	<jsp:body>
		<section class="content-header">
			<div class="container-fluid">
				<div class="row mb-2">
					<div class="col-sm-6">
						<h1>Danh Mục</h1>
					</div>
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/admin">Home</a></li>
							<li class="breadcrumb-item active">Product</li>
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
								<button type="button" class="btn btn-outline-success float-right"
										data-toggle="modal"
										data-target="#formModal"
										data-id=""
										data-cactive="0">Thêm mới
								</button>
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
										<table id="dataTable" class="table table-striped projects">
											<thead>
												<tr>
													<th style="width: 5%">ID</th>
													<th style="width: 15%">Avatar</th>
													<th style="width: 50%">Tên sản phẩm</th>
													<th class="text-center" style="width: 10%">Số lượng</th>
													<th class="text-center" style="width: 10%">Status</th>
													<th class="text-center" style="width: 10%">Thao Tác</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="p" items="${products}">
													<tr>
														<td>${p.id}</td>
														<td>
															<div style="width: 250px; height: 250px">
																<img class="img img-thumbnail"
																	 style="width: auto; height: auto; max-width: 100%; max-height: 100%"
																	 src="<c:url value='/public/images/${p.proAvatar}'/>" alt="${p.proSlug}">
															</div>
														</td>
														<td>${p.proName}</td>
														<td class="text-center">${p.proNumber}</td>
														<td class="text-center">
																${p.proActive == 1 ? '<a style="font-size: 14px" class="badge badge-success" data-value="1"> Active </a>' : '<a style="font-size: 14px" class="badge badge-danger" data-value="1"> Nope </a>'}
														</td>
														<td class="text-center">
															<form action="<c:url value='/admin/product/delete?id=${p.id}'/>"
																  method="post" id="${p.id}-del" hidden>
															</form>
															<button class="btn btn-outline-success btnSelect"
																	data-toggle="modal"
																	data-target="#formModal"
																	data-id="${p.id}">
																<i class="fa fa-pen" aria-hidden="true"></i>
															</button>
															<button class="btn btn-outline-danger"
																	onclick="document.getElementById('${p.id}-del').submit();">
																<i class="fa fa-trash" aria-hidden="true"></i>
															</button>

														</td>
													</tr>
												</c:forEach>
											</tbody>
											<tfoot>
												<tr>
													<th style="width: 5%">ID</th>
													<th style="width: 15%">Avatar</th>
													<th style="width: 50%">Tên sản phẩm</th>
													<th class="text-center" style="width: 10%">Số lượng</th>
													<th class="text-center" style="width: 10%">Status</th>
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
			<div class="modal-dialog modal-xl rounded" role="document">
				<div class="modal-content">
					<form enctype="multipart/form-data" action="<c:url value='/admin/product/add'/>"
						  method="post">
						<div class="modal-header bg-gradient-primary">
							<h5 class="modal-title" id="formModalLabel">New Product</h5>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<div class="row">
								<!-- left column -->
								<div class="col-md-6">
									<div class="form-group">
										<label for="proName">Tên sản phẩm</label>
										<input type="text" class="form-control form-control-border modal-proName"
											   id="proName"
											   name="proName" placeholder="Tên sản phẩm">
									</div>
									<div class="form-group">
										<label for="proDescription">Mô tả ngắn gọn (Dưới 250 từ)</label>
										<textarea class="form-control form-control-border modal-proDescription"
												  id="proDescription"
												  name="proDescription" rows="2" placeholder="Enter ..."
												  style="margin-top: 0; margin-bottom: 0; height: 40px;"></textarea>
									</div>
									<div class="form-group">
										<label for="proCategoryId" class="form-label">Danh mục:</label>
										<select id="proCategoryId" name="proCategoryId"
												class="form-control form-control-border modal-proCategoryId">
											<option value="">--Chọn loại sản phẩm--</option>
											<c:forEach var="c" items="${categories}">
												<option value="${c.id}">${c.cName}</option>
											</c:forEach>
										</select>
									</div>
									<div class="form-group">
										<label for="proPrice" class="form-label">Đơn giá:</label>
										<input type="number" name="proPrice"
											   class="form-control form-control-border modal-proPrice"
											   placeholder="Đơn giá" id="proPrice" min="0"
											   value="0">
									</div>

									<div class="form-group">
										<label for="proSale" class="form-label">% Khuyến mãi:</label>
										<input type="number" name="proSale"
											   class="form-control form-control-border modal-proSale"
											   placeholder="% giảm giá" id="proSale" min="0"
											   value="0">
									</div>

									<div class="row">
										<div class="form-group col-md-6">
											<div class="custom-control custom-switch">
												<input type="checkbox" class="custom-control-input modal-proActive"
													   id="proActive"
													   value="1"
													   name="proActive" checked>
												<label class="custom-control-label" for="proActive">Active</label>
											</div>
										</div>
										<div class="form-group col-md-6">
											<div class="custom-control custom-switch">
												<input type="checkbox" class="custom-control-input modal-proHot"
													   id="proHot"
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
										<label for="proNumber" class="form-label">Số lượng sản phẩm:</label>
										<input type="number" id="proNumber" name="proNumber"
											   class="form-control form-control-border modal-proNumber"
											   placeholder="Số lượng" min="0"
											   value="0">
									</div>

									<div class="form-group text-center">
										<div class="kv-avatar">
											<div class="file-loading">
												<input id="proAvatar" name="proAvatar" type="file"
													   class="modal-proAvatar">
											</div>
										</div>
										<div class="kv-avatar-hint">
											<small>Select file < 5000 KB</small>
										</div>
									</div>
								</div>
								<!--/.col (right) -->
							</div>
							<!-- /.row -->
							<div class="form-group">
								<label for="proContent">Mô tả chi tiết</label>
								<textarea class="form-control form-control-border modal-proContent ckeditor"
										  id="proContent"
										  name="proContent" rows="3" placeholder="Enter ..."
										  style="margin-top: 0; margin-bottom: 0; height: 83px;"></textarea>
							</div>

						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
							<button type="submit" class="btn btn-primary">Submit</button>
						</div>
					</form>
				</div>
			</div>
		</div>

		<script>

            /*$('#dataTable').on('click', '.btnSelect', function () {
                // get the current row
                var currentRow = $(this).closest("tr");

                var id = currentRow.find("td:eq(0)").text(); // get current row 1st TD value
                var cName = currentRow.find("td:eq(1)").text(); // get current row 2nd TD
                var cHome = currentRow.find("td:eq(2)").find("a").data('value'); // get current row 3rd TD
                var cActive = currentRow.find("td:eq(3)").find("a").data('value'); // get current row 3rd TD
                var data = id + "\n" + cName + "\n" + cHome + "\n" + cActive;

                alert(data);

            });*/
            var btnCust = '<button type="button" class="btn btn-secondary" title="Add picture tags" ' +
                'onclick="alert(\'Call your custom code here.\')">' +
                '<i class="bi-tag"></i>' +
                '</button>';
            $("#proAvatar").fileinput({
                overwriteInitial: true,
                maxFileSize: 5000,
                showClose: false,
                showCaption: false,
                browseLabel: '',
                removeLabel: '',
                browseIcon: '<i class="bi-folder2-open"></i>',
                removeIcon: '<i class="bi-x-lg"></i>',
                removeTitle: 'Cancel or reset changes',
                elErrorContainer: '#kv-avatar-errors-1',
                msgErrorClass: 'alert alert-block alert-danger',
                defaultPreviewContent: '<img src="/samples/default-avatar-male.png" alt="Ảnh sản phẩm">',
                layoutTemplates: {main2: '{preview} ' + btnCust + ' {remove} {browse}'},
                allowedFileExtensions: ["jpg", "png", "gif"]
            });

            $('#formModal').on('show.bs.modal', function (event) {        // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
                var button = $(event.relatedTarget)
                var id = button.data('id');
                var url = "";
                var modal = $(this);
                var modalTittle = modal.find('.modal-title');
                var modalproName = modal.find(' .modal-body .modal-proName');
                var modalproDescription = modal.find(' .modal-body .modal-proDescription');
                var modalproContent = modal.find(' .modal-body .modal-proContent');
                var modalproCategoryId = modal.find(' .modal-body .modal-proCategoryId');
                var modalproPrice = modal.find(' .modal-body .modal-proPrice');
                var modalproSale = modal.find(' .modal-body .modal-proSale');
                var modalproNumber = modal.find(' .modal-body .modal-proNumber');
                var modalproAvatar = modal.find(' .modal-body .modal-proAvatar');
                var modalproHome = modal.find(' .modal-body .modal-proHot');
                var modalproActive = modal.find(' .modal-body .modal-proActive');
                var modalForm = modal.find('.modal-content form');
                if (id !== "") {
                    url = "${pageContext.request.contextPath}/admin/product/update?id=" + id;
                    $.get(url, function (pro) {          // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response JSON...
                        modalTittle.text('Edit Product ID: ' + id);
                        modalproName.val(pro.proName);
                        modalproDescription.val(pro.proDescription);
                        CKEDITOR.instances['proContent'].setData(pro.proContent);
                        modalproCategoryId.val(pro.proCategoryId);
                        modalproPrice.val(pro.proPrice);
                        modalproSale.val(pro.proSale);
                        modalproNumber.val(pro.proNumber);

                        if (pro.proHome !== 0) {
                            modalproHome.prop('checked', true);
                        } else modalproHome.prop('checked', false);
                        if (pro.proActive !== 0) {
                            modalproActive.prop('checked', true);
                        } else modalproActive.prop('checked', false);
                        modalForm.attr("action", url);
                        /*alert(pro.proContent);*/
                    });
                } else if (id === "") {
                    url = "${pageContext.request.contextPath}/admin/product/add";
                    modalTittle.text('Create Product');
                    modalproName.val("");
                    modalproDescription.val("");
                    CKEDITOR.instances['proContent'].setData("");
                    modalproHome.prop('checked', false);
                    modalproActive.prop('checked', false);
                    modalForm.attr("action", url);
                }

            });

		</script>
	</jsp:body>
</mt:admin_template>
