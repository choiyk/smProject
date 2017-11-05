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
						<h2 class="fh5co-uppercase-heading-sm text-center">멘토 모집</h2>
						<div class="fh5co-spacer fh5co-spacer-sm"></div>
					</div>
					<div class="col-md-12 animate-box">
						<form:form method="post" modelAttribute="mentor">
							<div class="col-md-12">
								<div class="form-group">
									<label for="group_name">그룹 이름</label>
									<form:input path="group_name" placeholder="그룹 이름" id="group_name" type="text" class="form-control input-lg"/>
								</div>	
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<label for="subject">주제</label>
									<form:input path="subject" placeholder="주제" id="subject" type="text" class="form-control input-lg"/>
								</div>	
							</div>
							<div class="col-md-4">
								<div class="form-group">
									<label for="year">학년</label>
									<form:input path="year" placeholder="학년" id="year" type="text" class="form-control input-lg"/>
								</div>	
							</div>
							<div class="col-md-4">
								<div class="form-group">
									<label for="grade">해당 과목 성적</label>
									<form:input path="grade" placeholder="해당 과목 성적" id="grade" type="text" class="form-control input-lg"/>
								</div>	
							</div>
							<div class="col-md-4">
								<div class="form-group">
									<label for="mentee_num">희망 멘티 인원</label>
									<form:input path="mentee_num" placeholder="희망 멘티 인원" id="num" type="text" class="form-control input-lg"/>
								</div>	
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<label for="study_purpose">스터디 목적</label>
									<form:textarea path="study_purpose" placeholder="스터디 목적" id="study_purpose" class="form-control input-lg" rows="3"></form:textarea>
								</div>	
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<label for="study_content">스터디 내용</label>
									<form:textarea path="study_content" placeholder="스터디 내용" id="study_content" class="form-control input-lg" rows="3"></form:textarea>
								</div>	
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<label for="study_method">스터디 방법</label>
									<form:textarea path="study_method" placeholder="스터디 방법" id="study_method" class="form-control input-lg" rows="3"></form:textarea>
								</div>	
							</div>
							<div class="col-md-2">
								<div class="form-group">
									<p>시간표</p>
									<input type="file" accept="image/*" class="btn btn-lg " value="파일첨부" style="margin-top:-15px;">
									<p style="margin-top: 10px;">홍보 이미지</p>
									<input type="file" accept="image/*" class="btn btn-lg" value="파일첨부" style="margin-top:-15px;">
									<p style="margin-top: 10px;">증빙서류</p>
									<input type="file" accept="image/*" class="btn btn-lg " value="파일첨부" style="margin-top:-15px;">
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