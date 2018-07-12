<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link
	href="${pageContext.request.contextPath}/resources/css/vendManage.css"
	rel="stylesheet">
<script
	src="${pageContext.request.contextPath}/resources/js/vendManage.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<style>
</style>
</head>
<body>

	<div class="container-main">
		<div class="div-header-path">
                <!--section starts-->
                <h2>�ŷ�ó ���</h2>
                <ol class="breadcrumb">
                    <li>
                        <a href="index.html">
                            <i class="fa fa-fw fa-home"></i> Dashboard
                        </a>
                    </li>
                    <li>
                        <a href="#">Users</a>
                    </li>
                    <li>
                        <a href="admin_userlist.html">Users List</a>
                    </li>
                </ol>
		</div>
		<div class="wrapper wrapper-content animated fadeInRight">
				<div class="row">
					<div class="col-lg-12">
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<h5>�ŷ�ó ��� <small>You can register new customer information here.</small></h5>
								<div class="ibox-tools">
									<a class="dropdown-toggle" data-toggle="dropdown" href="#" style="font-size:15px;">
										<i class="fa fa-question-circle"></i>
									</a>
									<div class="dropdown-menu dropdown-user" style="width:300px;">
										<span style="background-color:#ffaf23; color:#fff; border-radius:0.25em; display:inline-block;margin:5px; padding:5px 10px; text-align:center; vertical-align:baseline; font-size:12px; line-height:1; white-space:nowrap;">Tip. �ŷ�ó ���</span>
										<p style="margin:5px 10px 10px;">�ŷ�ó ������ �Է��� �� �ֽ��ϴ�. </p>
									</div>
								</div>
							</div>

							<div class="ibox-content">
								<form action="http://demo.happyaca.com/student/process" method="post" class="form-horizontal">
									<div class="row">
										<div class="col-sm-6 b-r"><h3 class="m-t-none m-b">�ŷ�ó ����</h3>
											<p>���ο� �ŷ�ó ������ �Է��� �ֽʽÿ�.</p>
											<br>
											<div class="form-group">
												<label class="col-sm-3 control-label">���� *</label>
												<div class="col-sm-3 i-checks">
													<label> <div class="iradio_square-green checked" style="position: relative;"><input type="radio" checked="" value="����" id="gender" name="stu_gender" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div> &nbsp;���� </label>
												</div>
												<div class="col-sm-3 i-checks">
													<label> <div class="iradio_square-green" style="position: relative;"><input type="radio" value="����" id="gender" name="stu_gender" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div> &nbsp;���� </label>
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-3 control-label">��ü�� *</label>
												<div class="col-sm-8">
													<input id="stu_name" name="stu_name" type="text" class="form-control" placeholder="��ü���� �Է��� �ֽʽÿ�.">
												</div>
											</div>
											


											<div class="form-group">
												<label class="col-sm-3 control-label">��ǥ�� *</label>
												<div class="col-sm-8">
													<input id="stu_name" name="stu_name" type="text" class="form-control" placeholder="��ǥ�ڸ� �Է��� �ֽʽÿ�.">
												</div>												
											</div>
											<div class="form-group">
												<label class="col-sm-3 control-label">����ڹ�ȣ</label>
												<div class="col-sm-8">
													<input id="stu_name" name="stu_name" type="text" class="form-control" placeholder="����ڹ�ȣ�� �Է��� �ֽʽÿ�.">
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-3 control-label">����</label>
												<div class="col-sm-8">
													<input id="stu_name" name="stu_name" type="text" class="form-control" placeholder="���¸� �Է��� �ֽʽÿ�.">
												</div>
											</div>
										</div>

										<div class="col-sm-6">
											<br>
											<div class="form-group">
												<label class="col-sm-3 control-label">����</label>
												<div class="col-sm-8">
													<input id="stu_name" name="stu_name" type="text" class="form-control" placeholder="���� �Է��� �ֽʽÿ�.">
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-3 control-label">�ּ�</label>
												<div class="col-sm-8">
													<input id="stu_name" name="stu_name" type="text" class="form-control" placeholder="�ּҸ� �Է��� �ֽʽÿ�.">
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-3 control-label">��ȭ��ȣ</label>
												<div class="col-sm-8">
													<input id="stu_name" name="stu_name" type="text" class="form-control" placeholder="��ȭ��ȣ�� �Է��� �ֽʽÿ�.">
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-3 control-label">�ѽ���ȣ</label>
												<div class="col-sm-8">
													<input id="stu_name" name="stu_name" type="text" class="form-control" placeholder="�ѽ���ȣ�� �Է��� �ֽʽÿ�.">
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-3 control-label">�̸����ּ�</label>
												<div class="col-sm-8">
													<input id="stu_name" name="stu_name" type="text" class="form-control" placeholder="�̸����ּҸ� �Է��� �ֽʽÿ�.">
												</div>
											</div>
										</div>									
									</div>
									<div class="hr-line-dashed"></div>
									<div class="row">
										<div class="col-sm-offset-10 col-sm-2 text-right">
											<button id="add-submit" type="submit" class="btn btn-primary pull-right m-t-n-xs btn-submit"><i class="fa fa-pencil"></i> ����ϱ�</button>
										</div>
									</div>
								</form>
							</div> <!-- End of ibox-content -->

						</div>
					</div>
				</div> <!-- End of row -->
			</div>
			
	</div>
	<script>
		$(document).ready(function() {
			$('#example').DataTable({
				select: {
		            style: 'multi'
		        }
			});
			
			
			/* $('#example tbody').on( 'click', 'tr', function () {
		        $(this).toggleClass('selected');
		    } ); */
		});
	</script>
</body>
</html>