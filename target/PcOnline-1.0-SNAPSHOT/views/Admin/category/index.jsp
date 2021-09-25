<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<mt:admin_template tittle="Admin">
    <jsp:attribute name="content">
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
						        <h2 class="card-title">Danh mục hiện có</h2>
						        <a class="btn btn-outline-success float-right"> Thêm mới </a>
					        </div>
					        <!-- /.card-header -->
					        <div class="card-body">
						        <table id="example1" class="table table-bordered table-striped">
							        <thead>
								        <tr>
									        <th>Rendering engine</th>
									        <th>Browser</th>
									        <th>Platform(s)</th>
									        <th>Engine version</th>
									        <th>CSS grade</th>
								        </tr>
							        </thead>
							        <tbody>
								        <tr>
									        <td>Webkit</td>
									        <td>Safari 1.2</td>
									        <td>OSX.3</td>
									        <td>125.5</td>
									        <td>A</td>
								        </tr>
								        <tr>
									        <td>Webkit</td>
									        <td>Safari 1.3</td>
									        <td>OSX.3</td>
									        <td>312.8</td>
									        <td>A</td>
								        </tr>
								        <tr>
									        <td>Webkit</td>
									        <td>Safari 2.0</td>
									        <td>OSX.4+</td>
									        <td>419.3</td>
									        <td>A</td>
								        </tr>
								        <tr>
									        <td>Webkit</td>
									        <td>Safari 3.0</td>
									        <td>OSX.4+</td>
									        <td>522.1</td>
									        <td>A</td>
								        </tr>
								        <tr>
									        <td>Webkit</td>
									        <td>OmniWeb 5.5</td>
									        <td>OSX.4+</td>
									        <td>420</td>
									        <td>A</td>
								        </tr>
								        <tr>
									        <td>Webkit</td>
									        <td>iPod Touch / iPhone</td>
									        <td>iPod</td>
									        <td>420.1</td>
									        <td>A</td>
								        </tr>
								        <tr>
									        <td>Webkit</td>
									        <td>S60</td>
									        <td>S60</td>
									        <td>413</td>
									        <td>A</td>
								        </tr>
								        <tr>
									        <td>Presto</td>
									        <td>Opera 7.0</td>
									        <td>Win 95+ / OSX.1+</td>
									        <td>-</td>
									        <td>A</td>
								        </tr>
								        <tr>
									        <td>Presto</td>
									        <td>Opera 7.5</td>
									        <td>Win 95+ / OSX.2+</td>
									        <td>-</td>
									        <td>A</td>
								        </tr>
								        <tr>
									        <td>Presto</td>
									        <td>Opera 8.0</td>
									        <td>Win 95+ / OSX.2+</td>
									        <td>-</td>
									        <td>A</td>
								        </tr>
								        <tr>
									        <td>Misc</td>
									        <td>PSP browser</td>
									        <td>PSP</td>
									        <td>-</td>
									        <td>C</td>
								        </tr>
								        <tr>
									        <td>Other browsers</td>
									        <td>All others</td>
									        <td>-</td>
									        <td>-</td>
									        <td>U</td>
								        </tr>
							        </tbody>
							        <tfoot>
								        <tr>
									        <th>Rendering engine</th>
									        <th>Browser</th>
									        <th>Platform(s)</th>
									        <th>Engine version</th>
									        <th>CSS grade</th>
								        </tr>
							        </tfoot>
						        </table>
					        </div>
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
    </jsp:attribute>
</mt:admin_template>
