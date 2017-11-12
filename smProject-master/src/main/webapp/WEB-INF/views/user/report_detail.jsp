<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:url var="R" value="/" />
<div id="fh5co-main">

	<div class="container">

		<!-- 
				///////////////////////////////////
				Forms 
				///////////////////////////////////
				-->

		<div class="row">
			<div class="col-md-12 animate-box">
				<h2 class="fh5co-uppercase-heading-sm text-center">보고서</h2>
				<div class="fh5co-spacer fh5co-spacer-sm"></div>
			</div>
			<div class="col-md-12 animate-box board">
				<form:form method="post" modelAttribute="report">
					<div class="col-md-12">
						<label>스터디 주제</label>
						<div class="panel panel-default">${ report.subject }</div>
					</div>
					<div class="col-md-3">
						<label>장소</label>
						<div class="panel panel-default">${ report.place }</div>
					</div>
					<div class="col-md-3">
						<label>모임요일</label>
						<div class="panel panel-default">${ report.day }</div>
					</div>
					<div class="col-md-3">
						<label>시작 시간</label>
						<div class="panel panel-default">${ report.start_time }</div>
					</div>
					<div class="col-md-3">
						<label>종료 시간</label>
						<div class="panel panel-default">${ report.end_time }</div>
					</div>

					<div class="col-md-12">
						<label>스터디 내용</label>
						<div class="panel panel-default">${ report.study_content }
						</div>
					</div>

					<div class="col-md-2">
						<a href="${R}${ photoFilePath }">첨부된 파일 <img
							src="${R}images\file.png" border="0"></a>
						<div class="fh5co-spacer fh5co-spacer-md"></div>
					</div>
					<div class="col-md-12">
						<a href="${R}manager/m_reportManage"
							class="btn btn-primary btn-lg col-md-offset-10">목록으로</a>
					</div>
				</form:form>
			</div>

		</div>
		<!-- END row -->

		<div class="fh5co-spacer fh5co-spacer-sm"></div>



	</div>
	<!-- END container -->


</div>
<!-- END fhtco-main -->