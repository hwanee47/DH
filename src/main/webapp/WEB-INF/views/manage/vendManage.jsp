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
                <h2>거래처목록</h2>
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
		
			<div class="col-lg-12">
				<div class="panel panel-danger">
					<div class="panel-heading">
						<h4 class="panel-title">
							<i class="fa fa-fw fa-file-text-o"></i> 거래처 관리
						</h4>
						<span class="span-pull-right"> <i
							class="glyphicon glyphicon-chevron-up showhide clickable"
							title="Hide Panel content"></i> <i
							class="glyphicon glyphicon-remove removepanel"></i>
						</span>
					</div>
					
					<div class="panel-body table-responsive">
						<div class="div-buttonGroup">
							<button type="button" class="btn btn-success btn-lg"><i class="glyphicon glyphicon-search"></i></button>
						</div>
						<table id="example" class="table table-striped table-bordered" style="width:100%">
					        <thead>
					            <tr>
					                <th>구분</th>
					                <th>업체명</th>
					                <th>대표자</th>
					                <th>사업자번호</th>
					                <th>업태</th>
					                <th>종목</th>
					                <th>주소</th>
					                <th>전화번호</th>
					                <th>팩스번호</th>
					                <th>메일주소</th>
					            </tr>
					        </thead>
					        <tbody>
					            <tr>
					                <td>매입</td>
					                <td>(주) 정원텍</td>
					                <td>유재현</td>
					                <td>606-81-75569</td>
					                <td>도,소매</td>
					                <td>기계공구</td>
					                <td>부산시 사상구 괘감로 55-19</td>
					                <td></td>
					                <td></td>
					                <td></td>
					            </tr>
					            <tr>
					                <td>매입</td>
					                <td>(주)대경열처리 진주지점</td>
					                <td>김봉수</td>
					                <td>613-85-22807</td>
					                <td></td>
					                <td></td>
					                <td>경남 진주시 사봉면 사곡리 1802-10</td>
					                <td>055)752-1746</td>
					                <td>155)752-1749</td>
					                <td></td>
					            </tr>
					            
					    </table>
					</div>
				</div>
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