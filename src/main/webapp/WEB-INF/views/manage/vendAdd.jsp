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
                <h2>거래처 등록</h2>
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
								<h5>거래처 등록 <small>You can register new customer information here.</small></h5>
								<div class="ibox-tools">
									<a class="dropdown-toggle" data-toggle="dropdown" href="#" style="font-size:15px;">
										<i class="fa fa-question-circle"></i>
									</a>
									<div class="dropdown-menu dropdown-user" style="width:300px;">
										<span style="background-color:#ffaf23; color:#fff; border-radius:0.25em; display:inline-block;margin:5px; padding:5px 10px; text-align:center; vertical-align:baseline; font-size:12px; line-height:1; white-space:nowrap;">Tip. 거래처 등록</span>
										<p style="margin:5px 10px 10px;">거래처 정보를 입력할 수 있습니다. </p>
									</div>
								</div>
							</div>

							<div class="ibox-content">
								<form action="http://demo.happyaca.com/student/process" method="post" class="form-horizontal">
									<div class="row">
										<div class="col-sm-6 b-r"><h3 class="m-t-none m-b">거래처 정보</h3>
											<p>새로운 거래처 정보를 입력해 주십시오.</p>
											<div class="form-group">
												<label class="col-sm-2 control-label">구분 *</label>
												<div class="col-sm-3 i-checks">
													<label> <div class="iradio_square-green checked" style="position: relative;"><input type="radio" checked="" value="male" id="gender" name="stu_gender" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div> &nbsp;매입 </label>
												</div>
												<div class="col-sm-3 i-checks">
													<label> <div class="iradio_square-green" style="position: relative;"><input type="radio" value="female" id="gender" name="stu_gender" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div> &nbsp;매출 </label>
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-2 control-label">성명 *</label>
												<div class="col-sm-8">
													<input id="stu_name" name="stu_name" type="text" class="form-control" placeholder="안희연">
												</div>
											</div>
											


											<div class="form-group">
												<label class="col-sm-2 control-label">PIN *</label>
												<div class="col-sm-8">
													<div class="input-group">
														<input id="stu_pin" name="stu_pin" type="text" class="form-control" data-mask="999999" placeholder="6자리 PIN번호를 입력해 주십시오.">
														<span class="input-group-btn">
															<button type="button" id="check-pin" class="btn btn-primary">중복확인</button> 
														</span>
													</div>
													<div id="check-caption"></div>
												</div>												
											</div>
											<div class="form-group">
												<label class="col-sm-2 control-label">휴대폰</label>
												<div class="col-sm-8">
													<input id="stu_phone" name="stu_phone" type="text" class="form-control" data-mask="(999) 9999-9999" placeholder="휴대폰번호를 입력해 주십시오.">
												</div>
											</div>
											<div class="form-group" id="data_1">
												<label class="col-sm-2 control-label">생년월일</label>
												<div class="col-sm-8">
													<input id="stu_birth" name="stu_birth" type="text" class="form-control" data-mask="9999/99/99" placeholder="2002/07/15">
													<span class="help-block"> yyyy/mm/dd</span>
													<!--div class="input-group date">
														<span class="input-group-addon"><i class="fa fa-calendar"></i></span><input id="stu_birth" name="stu_birth" type="text" class="form-control">
													</div-->
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-2 control-label">결제일</label>
												<div class="col-sm-8">
													<input name="stu_payday" type="text" class="form-control" data-mask="99" placeholder="수강료 결제일을 입력해 주십시오. 예) 01~31">
												</div>
											</div>
										</div>

										<div class="col-sm-6"><h3 class="m-t-none m-b">학부모정보</h3>
											<p>학생의 학부모 정보를 입력해 주십시오.</p>
											<div class="form-group">
												<label class="col-sm-2 control-label">성명 *</label>
												<div class="col-sm-8">
													<input id="par_name" name="par_name" type="text" class="form-control" placeholder="안희연어머니">
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-2 control-label">성별 *</label>
												<div class="col-sm-3 i-checks">
													<label> <div class="iradio_square-green" style="position: relative;"><input type="radio" value="male" id="par_gender" name="par_gender" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div> &nbsp;남성 </label>
												</div>
												<div class="col-sm-3 i-checks">
													<label> <div class="iradio_square-green checked" style="position: relative;"><input type="radio" value="female" id="par_gender" name="par_gender" checked="" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div> &nbsp;여성 </label>
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-2 control-label">휴대폰 *</label>
												<div class="col-sm-8">
													<div class="input-group">
														<input id="par_phone" name="par_phone" type="text" class="form-control" data-mask="(999) 9999-9999" placeholder="휴대폰번호를 입력해 주십시오.">
														<span class="input-group-btn">
															<button type="button" id="check-par-phone" class="btn btn-primary">중복확인</button> 
														</span>
													</div>
													<div id="check-par-phone-caption"></div>
												</div>
											</div>
											<div class="form-group" id="data_1">
												<label class="col-sm-2 control-label">생년월일</label>
												<div class="col-sm-8">
													<input id="par_birth" name="par_birth" type="text" class="form-control" data-mask="9999/99/99" placeholder="1977/07/31">
													<span class="help-block"> yyyy/mm/dd</span>
													<!--div class="input-group date">
														<span class="input-group-addon"><i class="fa fa-calendar"></i></span><input id="par_birth" name="par_birth" type="text" class="form-control">
													</div-->
												</div>
											</div>
										</div>									
									</div>
									<div class="hr-line-dashed"></div>
									<div class="row">
										<div class="col-sm-offset-10 col-sm-2 text-right">
											<button id="add-submit" type="submit" class="btn btn-primary pull-right m-t-n-xs btn-submit"><i class="fa fa-pencil"></i> 등록하기</button>
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