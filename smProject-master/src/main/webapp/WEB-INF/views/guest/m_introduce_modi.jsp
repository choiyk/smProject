<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<div id="fh5co-main">
	
			<div class="container">

                <!-- 
				///////////////////////////////////
				introduce
				///////////////////////////////////
				-->

				<div class="row">
				    <div class="col-md-12 animate-box">
						<h2 class="fh5co-uppercase-heading-sm text-center">사업소개</h2>
						<div class="fh5co-spacer fh5co-spacer-sm"></div>
					</div>
				
				    <div class="col-md-12 animate-box">
						<div id="fh5co-tab-feature-center" class="fh5co-tab text-center">
							<ul id="intro_modi_list" class="resp-tabs-list hor_1">
							    <li id="add_intro_modi">+새 항목</li>
								<li>사업소개<a href="#" class="btn2 btn-primary btn-sm">x</a></li>
								<li>장학금 안내<a href="#" class="btn2 btn-primary btn-sm">x</a></li>
								<li>활동방법<a href="#" class="btn2 btn-primary btn-sm">x</a></li>
								<li>사업일정<a href="#" class="btn2 btn-primary btn-sm">x</a></li>
							</ul>
								
							<div id="intro_modi_box" class="resp-tabs-container hor_1">
							   
								<div>
									<div class="row">
										<div class="col-md-12">
										
										
										<form:form method="post" modelAttribute="introduce">
										<div class="form-group">
											<label for="tab">항목</label>
											<form:input placeholder="항목" id="tab" type="text" class="form-control input-lg" path="title" />
										</div>
										<div class="form-group">
											<label for="introduce_content">내용</label>
											<form:textarea placeholder="내용" id="introduce_content" class="form-control input-lg" rows="10" path="content"/>	
										</div>
										<div class="form-group">
											<label>학과</label>
											<form:select path="departmentId" class="form-control w200"
												itemValue="id" itemLabel="departmentName" items="${ departments }" />
										</div>
										<div class="form-group">
											<label>학년:</label>
											<form:input path="year" class="form-control w200" />
										</div>
										<hr />
										<div>
											<button type="submit" class="btn btn-primary">
												<span class="glyphicon glyphicon-ok"></span> 저장
											</button>
											<c:if test="${ student.id > 0 }">
												<a href="delete.do?id=${ student.id }" class="btn btn-danger"
													data-confirm-delete> <i class="glyphicon glyphicon-remove"></i>
													삭제
												</a>
											</c:if>
											<a href="list.do" class="btn btn-info">목록으로</a>
										</div>
									</form:form>
										






								<div>
									<div class="row">
										<div class="col-md-12">
										<div class="form-group">
											<label for="introduce_content">내용2</label>
											<textarea placeholder="내용" id="introduce_content" class="form-control input-lg" rows="10"></textarea>
										</div>	
									</div>
								</div>
								</div>
								<div>
									<div class="row">
										<div class="col-md-12">
										<div class="form-group">
											<label for="introduce_content">내용3</label>
											<textarea placeholder="내용" id="introduce_content" class="form-control input-lg" rows="10"></textarea>
										</div>	
									</div>
									</div>
								</div>
								<div>
									<div class="row">
											<div class="col-md-12">
										<div class="form-group">
											<label for="introduce_content">내용4</label>
											<textarea placeholder="내용" id="introduce_content" class="form-control input-lg" rows="10"></textarea>
										</div>	
										
									</div>
						
								</div>
							
							</div>
								 	<div>
									<div class="row">
											<div class="col-md-12">
										<div class="form-group">
											<label for="introduce_content">내용5</label>
											<textarea placeholder="내용" id="introduce_content" class="form-control input-lg" rows="10"></textarea>
										</div>	
										
									</div>
						
								</div>
							
							</div>
							
						
				
					</div>
					<div class="fh5co-spacer fh5co-spacer-sm"></div>
							
				</div>
			
			</div>
					<div class="col-md-12">
								<div class="form-group col-r">
									<input type="submit" class="btn btn-primary btn-lg" value="저장">
								</div>	
							</div>
			<!-- END container -->
		
		</div>
		</div>
		</div>
		<!-- END fhtco-main -->