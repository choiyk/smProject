<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*"%>
<c:url var="R" value="/" />
<div id="fh5co-main">
	<div class="container">
		<div class="row">
			<div class="col-md-12 animate-box">
				<h2 class="fh5co-uppercase-heading-sm text-center">내가 쓴 글</h2>
				<div class="fh5co-spacer fh5co-spacer-sm"></div>
			</div>
			<div class="col-md-12 animate-box">
				<div id="fh5co-tab-feature-vertical" class="fh5co-tab">
					<ul class="resp-tabs-list hor_1">
						<li><i class="fh5co-tab-menu-icon ti-user"></i>멘토/멘티 신청</li>
						<li><i class="fh5co-tab-menu-icon ti-pencil-alt"></i> 학습자료</li>
						<li><i class="fh5co-tab-menu-icon ti-help-alt"></i> 질문게시판</li>
						<li><i class="fh5co-tab-menu-icon ti-layout-media-overlay"></i>
							컨퍼런스</li>
						<c:if test="${ userType ==  3}">
							<li><i class="fh5co-tab-menu-icon ti-clipboard"></i> 보고서</li>
						</c:if>
						<li><i class="fh5co-tab-menu-icon ti-comments"></i> 댓글</li>
					</ul>

					<div class="resp-tabs-container hor_1">
						<!-- 
						///////////////////////////////////
						멘토/멘티 신청, 작성자-남하영
						///////////////////////////////////
						-->
						<div>
							<div class="row">
								<div class="col-md-12">
									<h2 class="h3">멘토/멘티 신청내역</h2>
								</div>
								<c:if test="${ mentor != null }">
									<div class="col-md-12">
										<div
											class="col-md-6 animate-box text-center fh5co-work-item work-box"
											style="border: 1px ridge; padding: 7px;">
											<figure>
												<c:if test="${ mentor.type != 4 }">
													<a href="${R}user/mentorapply_detail?id=${ mentor.id }">
														<img class="img-responsive"
														src="${R}user/getImage?id=${ mentor.apply_f_intro_fk }"
														alt=""
														style="width: 275px; height: 183px; margin-left: auto; margin-right: auto;">
													</a>
												</c:if>
												<c:if test="${ mentor.type == 4 }">
													<a href="${R}user/menteeapply_detail?id=${ mentor.id }">
														<img class="img-responsive"
														src="${R}user/getImage?id=${ mentor.apply_f_intro_fk }"
														alt=""
														style="width: 275px; height: 183px; margin-left: auto; margin-right: auto;">
													</a>
												</c:if>
											</figure>
											<h3>팀명:&nbsp;${ mentor.group_name }</h3>
											<p>주제:&nbsp;${ mentor.subject }</p>
											<p>${ mentor.user_id }&nbsp;${ mentor.name }</p>
											<c:if test="${ mentor.type != 4 }">
												<a href="mentorapply_edit.do?id=${ mentor.id }"
													class="btn btn-primary btn-sm " style="margin: auto;">수정</a>
												<a href="mentorapply_delete.do?id=${ mentor.id }"
													id="m_delete" class="btn btn-primary btn-sm "
													style="margin: auto;" onclick="return delapply();">삭제</a>
											</c:if>
											<c:if test="${ mentor.type == 4 }">
												<a href="mentee_update_mypost.do?id=${ mentor.id }"
													class="btn btn-cancel btm-md mt_submit">신청취소</a>
											</c:if>
										</div>
									</div>
								</c:if>
								<c:if test="${ mentor == null }">
									<div class="fh5co-spacer fh5co-spacer-sm"></div>
									<div class="col-md-12 text-center">
										<p>신청내역이 없습니다.</p>
									</div>
								</c:if>
							</div>
						</div>

						<!-- 
						///////////////////////////////////
						윤경
						///////////////////////////////////
						-->
						<c:forEach var="postBoard" items="${ postBoards }">
							<div>
								<div class="row">
									<div class="col-md-12">
										<h2 class="h3">${ postBoard.b_name }</h2>
									</div>
									<c:if test="${!empty postBoard.articles }">
										<div class="col-md-12" style="padding: 0px;">
											<div class="col-md-12 animate-box">
												<div class="panel panel-default ">
													<table class="table board" style="table-layout: fixed">
														<thead>
															<tr>
																<th class="w_7">번호</th>
																<th class="w_31">제목</th>
																<th class="w_10">작성자</th>
																<th class="w_15">작성일</th>
																<th class="w_7">파일</th>
																<th class="w_10"></th>
																<th class="w_10"></th>
															</tr>
														</thead>
														<tbody>
															<c:forEach var="article" items="${ postBoard.articles }"
																varStatus="status">
																<tr>
																	<td>${ status.count }</td>
																	<td class="ellip">${ article.title }</td>
																	<td>${ article.userName }</td>
																	<td>${ article.post_date }</td>
																	<td><c:if test="${ article.art_f_id != 0 }">
																			<a
																				href="${R}user/file/download?id=${ article.art_f_id }"><img
																				src="${R}images\file.png" border="0"></a>
																		</c:if></td>
																	<td><a
																		href="${R}user/board_edit?id=${article.id}&bd=${postBoard.id}"
																		class="btn btn-primary btn-sm " style="margin: auto;">수정</a></td>
																	<td><a
																		href="${R}user/board_delete?id=${article.id}&bd=${postBoard.id}"
																		class="btn btn-primary btn-sm " style="margin: auto;">삭제</a></td>
																</tr>
															</c:forEach>
														</tbody>
													</table>
												</div>
											</div>
										</div>
									</c:if>
									<c:if test="${empty postBoard.articles }">
										<div class="fh5co-spacer fh5co-spacer-sm"></div>
										<div class="col-md-12 text-center">
											<p>작성한 글이 없습니다.</p>
										</div>
									</c:if>
								</div>
							</div>
						</c:forEach>
						<!-- 
                        ///////////////////////////////////
                        보고서
                        ///////////////////////////////////
                        -->
						<c:if test="${ userType ==  3}">
							<div>
								<div class="row">
									<div class="col-md-12">
										<h2 class="h3">보고서</h2>
									</div>
									<c:if test="${!empty postReports}">

										<div class="col-md-12" style="padding: 0px;">
											<div class="col-md-12 animate-box">
												<div class="panel panel-default ">
													<table class="table board" style="table-layout: fixed">
														<thead>
															<tr>
																<th class="w_5">번호</th>
																<th class="w_22">스터디 진도</th>
																<th class="w_10">작성일</th>
																<th class="w_6">인증샷</th>
																<th class="w_5">파일</th>
																<th class="w_8"></th>
																<th class="w_8"></th>
															</tr>
														</thead>
														<tbody>

															<c:forEach var="postReports" items="${ postReports }"
																varStatus="status">
																<tr>
																	<td>${ status.index+1 }</td>
																	<td class="ellip"
																		data-url="report_detail?id=${ postReports.id }">${ postReports.subject }</td>
																	<td>${ postReports.create_date }</td>
																	<td><a
																		href="${R}user/file/download?id=${ postReports.rep_f_photo_id }"
																		style="margin-left: 17px;"><img
																			src="${R}images\camera.gif" border="0"></a></td>
																	<td><a
																		href="${R}user/file/download?id=${ postReports.rep_f_study_id }"
																		style="margin-left: 10px;"><img
																			src="${R}images\file.png" border="0"></a></td>
																	<td><a
																		href="modifyMyReport?id=${ postReports.id }"
																		class="btn btn-primary btn-sm " style="margin: auto;">수정</a></td>

																	<td><a
																		href="deleteMyReport?id=${ postReports.id }"
																		class="btn btn-primary btn-sm " style="margin: auto;"
																		onclick="return deleteReport();">삭제</a></td>
																</tr>
															</c:forEach>
														</tbody>
													</table>
												</div>
											</div>
										</div>
									</c:if>
									<c:if test="${empty postReports}">
										<div class="fh5co-spacer fh5co-spacer-sm"></div>
										<div class="col-md-12 text-center">
											<p>작성한 보고서가 없습니다.</p>
										</div>
									</c:if>
								</div>
							</div>
						</c:if>
						<!-- 
								///////////////////////////////////
								보고서
								///////////////////////////////////
								-->
						<c:if test="${ userType ==  3}">
							<div>
								<div class="row">
									<div class="col-md-12">
										<h2 class="h3">보고서</h2>
									</div>
									<c:if test="${!empty postReports}">

										<div class="col-md-12" style="padding: 0px;">
											<div class="col-md-12 animate-box">
												<div class="panel panel-default ">
													<table class="table board" style="table-layout: fixed">
														<thead>
															<tr>
																<th class="w_5">번호</th>
																<th class="w_22">스터디 진도</th>
																<th class="w_10">작성일</th>
																<th class="w_6">인증샷</th>
																<th class="w_5">파일</th>
																<th class="w_8"></th>
																<th class="w_8"></th>
															</tr>
														</thead>
														<tbody>

															<c:forEach var="postReports" items="${ postReports }"
																varStatus="status">
																<tr>
																	<td>${ status.index+1 }</td>
																	<td class="ellip"
																		data-url="report_detail?id=${ postReports.id }">${ postReports.subject }</td>
																	<td>${ postReports.create_date }</td>
																	<td><a
																		href="${R}user/file/download?id=${ postReports.rep_f_photo_id }"
																		style="margin-left: 17px;"><img
																			src="${R}images\camera.gif" border="0"></a></td>
																	<td><a
																		href="${R}user/file/download?id=${ postReports.rep_f_study_id }"
																		style="margin-left: 10px;"><img
																			src="${R}images\file.png" border="0"></a></td>
																	<td><a
																		href="modifyMyReport?id=${ postReports.id }"
																		class="btn btn-primary btn-sm " style="margin: auto;">수정</a></td>

																	<td><a
																		href="deleteMyReport?id=${ postReports.id }"
																		class="btn btn-primary btn-sm " style="margin: auto;"
																		onclick="return deleteReport();">삭제</a></td>
																</tr>
															</c:forEach>
														</tbody>
													</table>
												</div>
											</div>
										</div>
									</c:if>
									<c:if test="${empty postReports}">
										<div class="fh5co-spacer fh5co-spacer-sm"></div>
										<div class="col-md-12 text-center">
											<p>작성한 보고서가 없습니다.</p>
										</div>
									</c:if>
								</div>
							</div>
						</c:if>
						<!-- 
								///////////////////////////////////
								댓글
								///////////////////////////////////
								-->
						<div>
							<div class="row">
								<div class="col-md-12">
									<h2 class="h3">댓글</h2>
								</div>
								<div class="col-md-12" style="padding: 0px;">
									<div class="col-md-12 animate-box">
										<div class="panel panel-default ">
											<table class="table board" style="table-layout: fixed">
												<thead>
													<tr>
														<th class="w_7">번호</th>
														<th class="w_45">내용</th>
														<th class="w_12">작성일</th>
														<th class="w_12">원문보기</th>
														<th class="w_10"></th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>1</td>
														<td class="ellip">가나나다라마바사가나나다라마바사가나나다라마바사가나나다라마바사</td>
														<td>17-09-17</td>
														<td><a href="#">원문보기</a></td>
														<td><a href="#" class="btn btn-primary btn-sm "
															style="margin: auto;">삭제</a></td>
													</tr>
													<tr>
														<td>2</td>
														<td class="ellip">가나나다라마바사</td>
														<td>17-09-17</td>
														<td><a href="#">원문보기</a></td>
														<td><a href="#" class="btn btn-primary btn-sm "
															style="margin: auto;">삭제</a></td>
													</tr>
													<tr>
														<td>3</td>
														<td class="ellip">가나나다라마바사</td>
														<td>17-09-17</td>
														<td><a href="#">원문보기</a></td>
														<td><a href="#" class="btn btn-primary btn-sm "
															style="margin: auto;">삭제</a></td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- 탭 페이지 끝 -->
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="deleteReport">
	<div class="modal-dialog">
		<div class="modal-content">
			<!-- header  -->
			<div class="modal-header">
				<!-- 닫기(x) 버튼  -->
				<button type="button" class="close" data-dismiss="modal">×</button>
				<!-- header title  -->
				<h4 class="modal-title">완료</h4>
			</div>
			<!-- body  -->
			<div class="modal-body">
				<p>보고서가 삭제되었습니다.</p>
			</div>
			<!-- Footer  -->
			<div class="modal-footer">
				<button type="button" class="btn btn-outline" data-dismiss="modal">닫기</button>
			</div>
		</div>
	</div>
</div>