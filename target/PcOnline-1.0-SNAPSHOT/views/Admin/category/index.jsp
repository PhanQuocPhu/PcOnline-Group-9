<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:useBean id="categories" scope="request" type="java.util.List<entity.Categories>"/>

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
							<li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/admin">Home</a></li>
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
													<th style="width: 50%">Tên Danh Mục</th>
													<th class="text-center" style="width: 10%">HomePage</th>
													<th class="text-center" style="width: 10%">Status</th>
													<th class="text-center" style="width: 10%">Thao Tác</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="c" items="${categories}">
													<tr>
														<td>${c.id}</td>
														<td>${c.cName}</td>
														<td class="text-center">
																${c.cHome == 1 ? '<a style="font-size: 14px" class="badge badge-success" data-value="1"> Yes </a>' : '<a style="font-size: 14px" class="badge badge-danger"data-value="0" data-value="1"> Nope </a>'}
														</td>
														<td class="text-center">
																${c.cActive == 1 ? '<a style="font-size: 14px" class="badge badge-success" data-value="1"> Active </a>' : '<a style="font-size: 14px" class="badge badge-danger" data-value="1"> Nope </a>'}
														</td>
														<td class="text-center">
															<form action="${pageContext.request.contextPath}/admin/category/delete?id=${c.id}"
																  method="post" id="${c.id}-del" hidden>
															</form>
															<button class="btn btn-outline-success btnSelect"
																	data-toggle="modal"
																	data-target="#formModal"
																	data-id="${c.id}"
																	data-cname="${c.cName}"
																	data-chome="${c.cHome }"
																	data-cactive="${c.cActive}">
																<i class="fa fa-pen" aria-hidden="true"></i>
															</button>
															<button class="btn btn-outline-danger"
																	onclick="document.getElementById('${c.id}-del').submit();">
																<i class="fa fa-trash" aria-hidden="true"></i>
															</button>

														</td>
													</tr>
												</c:forEach>
											</tbody>
											<tfoot>
												<tr>
													<th>ID</th>
													<th>Tên Danh Mục</th>
													<th class="text-center">HomePage</th>
													<th class="text-center">Status</th>
													<th class="text-center">Thao Tác</th>
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
					<form enctype="multipart/form-data" action="${pageContext.request.contextPath}/admin/category/add"
						  method="post">
						<div class="modal-header">
							<h5 class="modal-title" id="formModalLabel">New Category</h5>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<div class="row">
								<!-- left column -->
								<div class="col-md-6">
									<div class="form-group">
										<label for="cName">Tên danh mục</label>
										<input type="text" class="form-control form-control-border modal-cName" id="cName"
											   name="cName" placeholder="Tên danh mục" required>
									</div>

									<div class="row">
										<div class="form-group col-md-6">
											<div class="custom-control custom-switch">
												<input type="checkbox" class="custom-control-input modal-cHome" id="cHome" value="1"
													   name="cHome">
												<label class="custom-control-label" for="cHome">Home</label>
											</div>
										</div>
										<div class="form-group col-md-6">
											<div class="custom-control custom-switch">
												<input type="checkbox" class="custom-control-input modal-cActive" id="cActive"
													   value="1" name="cActive">
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
            $('#formModal').on('show.bs.modal', function (event) {
                var button = $(event.relatedTarget) 	// Button that triggered the modal
                var id = button.data('id'); 			// Extract info from data-* attributes
                var cName = button.data('cname'); 		// Extract info from data-* attributes
                var cHome = button.data('chome'); 		// Extract info from data-* attributes
                var cActive = button.data('cactive'); 	// Extract info from data-* attributes

                var data = id + "\n" + cName + "\n" + cHome + "\n" + cActive;

                //alert(data);

                // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
                // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
                var modal = $(this)
                var action = "";
                //alert(action);
				if(id!=="")
				{
                    modal.find('.modal-title').text(id===""?'Create Category':'Edit Category ID: '+id);
                    modal.find(' .modal-body .modal-cName').val(cName);
                    if (cHome !== 0)
                    {
                        modal.find(' .modal-body .modal-cHome').prop('checked', true);
                    } else modal.find(' .modal-body .modal-cHome').prop('checked', false);
                    if (cActive !== 0)
                    {
                        modal.find(' .modal-body .modal-cActive').prop('checked', true);
                    } else modal.find(' .modal-body .modal-cActive').prop('checked', false);
                    action = "${pageContext.request.contextPath}/admin/category/update?id=" + id;
                    modal.find('.modal-content form').attr("action", action);
                    /*alert( modal.find('.modal-content form').attr("action"));*/
				}

                /*modal.find('.modal-body input').val(recipient)*/
            })
		</script>
	</jsp:body>
</mt:admin_template>
