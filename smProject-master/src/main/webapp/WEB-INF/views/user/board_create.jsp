<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
		<div id="fh5co-main">
	
			<div class="container">

				<!-- 
				///////////////////////////////////
				Forms 
				///////////////////////////////////
				-->

				<div class="row">
					<div class="col-md-12 animate-box">
						<h2 class="fh5co-uppercase-heading-sm text-center">새 글 등록</h2>
						<div class="fh5co-spacer fh5co-spacer-sm"></div>
					</div>
					<div class="col-md-12 animate-box">
						<form:form id="form" method="post" modelAttribute="article" enctype="multipart/form-data" onsubmit="return checkInput();">
							<div class="col-md-12">
								<div class="form-group">
									<label for="report_subject">글 제목</label>
									<form:input path="title" name="title" placeholder="글 제목" id="report_subject" type="text" class="form-control input-lg" />
								</div>	
							</div>
							
							<div class="col-md-12">
								<div class="form-group">
									<label for="report_content">글 내용</label>
									<form:textarea path="content" name="content" placeholder="글 내용" id="report_content" class="form-control input-lg" rows="10" />
								</div>	
							</div>
							
							<div class="col-md-2">
								<div class="form-group">
									<label>파일 첨부</label>
									<input name="file" type="file" class="btn btn-lg " value="파일첨부">
								</div>	
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<input type="submit" class="btn btn-primary btn-lg col-md-offset-11" value="등록">
								</div>	
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