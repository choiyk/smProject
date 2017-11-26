<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
						<li><i class="fh5co-tab-menu-icon ti-announcement"></i>공지사항</li>
						<li><i class="fh5co-tab-menu-icon ti-help-alt"></i> 질문게시판</li>
						<li><i class="fh5co-tab-menu-icon ti-layout-media-overlay"></i>
							컨퍼런스홍보</li>
						<li><i class="fh5co-tab-menu-icon ti-comments"></i> 댓글</li>
					</ul>
					<div class="resp-tabs-container hor_1">
						<!-- 
						///////////////////////////////////
						공지사항
						///////////////////////////////////
						-->

						<!-- 
						///////////////////////////////////
						질문게시판
						///////////////////////////////////
						-->
						
						<!-- 
								///////////////////////////////////
								컨퍼런스
								///////////////////////////////////
								-->
						<c:forEach var="postBoard" items="${ postBoards }">
							<div>
								<div class="row">
									<div class="col-md-12">
										<h2 class="h3">${ postBoard.b_name }</h2>
									</div>
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
								</div>
							</div>
						</c:forEach>
						
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
			<!-- header -->
			<div class="modal-header">
				<!-- 닫기(x) 버튼 -->
				<button type="button" class="close" data-dismiss="modal">×</button>
				<!-- header title -->
				<h4 class="modal-title">경고!</h4>
			</div>
			<!-- body -->
			<div class="modal-body">
				<p>정말로 삭제하시겠습니까?</p>
			</div>
			<!-- Footer -->
			<div class="modal-footer">
				<button onclick="location.href='${R}user/deleteMyReport?id"
					type="button" class="btn btn-primary" data-dismiss="modal">확인</button>
				<button type="button" class="btn btn-outline" data-dismiss="modal">닫기</button>
			</div>
		</div>
	</div>
</div>