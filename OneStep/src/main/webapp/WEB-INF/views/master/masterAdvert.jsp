<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!-- 광고 관리 -->
<div class="widget-heading">
	<h2 align="center">광고 관리</h2> 
</div>
<div class="card-box col-11" style="margin: 0 auto; margin-top: 3%">
	<div class="w-100">
		<ul class="nav nav-tabs  mb-3" id="lineTab" role="tablist">
			<li class="nav-item"><a class="nav-link active"
				id="underline-about-tab" data-toggle="tab" href="#underline-about"
				role="tab" aria-controls="underline-about" aria-selected="true">활성화
					광고 목록</a></li>
			<li class="nav-item"><a class="nav-link"
				id="underline-project-tab" data-toggle="tab"
				href="#underline-project" role="tab"
				aria-controls="underline-project" aria-selected="false">광고 신청 목록</a></li>
		</ul>
		<div class="tab-content" id="lineTabContent-3">
			<!-- 받은 알림 -->
			<div class="tab-pane fade show active" id="underline-about"
				role="tabpanel" aria-labelledby="underline-about-tab">
				<div class="d-flex flex-wrap">

					<!-- 내용 -->
					<div
						class="col-xl-12 col-lg-12 col-md-12 col-sm-12 layout-spacing text-center"
						style="margin: 0 auto;">
						<div class="widget dashboard-table">
							<div >
								<div class="table-responsive">
									<table class="table">
										<thead>
											<tr>
												<th><div class="th-content">광고자리</div></th>
												<th><div class="th-content">광고내용</div></th>
												<th><div class="th-content">사용회사</div></th>
												<th><div class="th-content">시작날짜</div></th>
												<th><div class="th-content">종료날짜</div></th>
												<th><div class="th-content">상태</div></th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${advertList }" var="advert">
												<c:if test="${advert.advertId != 1 }">
													<tr>
														<td>${advert.advertName }</td>
														<td>${advert.advertContent }</td>
														<td>${advert.companyId }</td>
														<td><fmt:formatDate value="${advert.advertStart }"
																pattern="yyyy-MM-dd" /></td>
														<td><fmt:formatDate value="${advert.advertEnd }"
																pattern="yyyy-MM-dd" /></td>
														<td><c:choose>
																<c:when test="${advert.advertStatus == 1 }">
																	<span class="btn btn-sm btn-primary">활성화</span>
																</c:when>
																<c:otherwise>
																	<span class="btn btn-sm btn-danger">비활성화</span>
																</c:otherwise>
															</c:choose></td>
													</tr>
												</c:if>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- 보낸 알림 -->
			<div class="tab-pane fade" id="underline-project" role="tabpanel"
				aria-labelledby="underline-project-tab">
				<div class="row w-100 m-0">

					<!-- 					내용 -->
					<div
						class="col-xl-12 col-lg-12 col-md-12 col-sm-12 layout-spacing text-center"
						style="margin: 0 auto;">
						<div class="widget dashboard-table">
							<div class="widget-content">
								<div class="table-responsive">
									<!-- 									<div style="float: right;"> -->
									<!-- 										<select id="advert" class="form-control" style="width:150px; " name="advert"> -->
									<!-- 							        		<option value="">전체</option> -->
									<%-- 							        		<c:forEach items="${advertList }" var="advert"> --%>
									<%-- 							        		<option value="${advert.advertName }">${advert.advertName }</option> --%>
									<%-- 							        		</c:forEach> --%>
									<!-- 						        		</select> -->
									<!-- 									</div> -->
									<table class="table">
										<thead>
											<tr>
												<th><div class="th-content">NO</div></th>
												<th><div class="th-content">광고자리</div></th>
												<th><div class="th-content">광고내용</div></th>
												<th><div class="th-content">회사</div></th>
												<th><div class="th-content">시작날짜</div></th>
												<th><div class="th-content">종료날짜</div></th>
												<th><div class="th-content">사진</div></th>
												<th><div class="th-content">사용</div></th>
											</tr>
										</thead>
										<tbody id="tbody">
											<c:set value="${pagingVO.dataList }" var="prodList" />
											<c:choose>
												<c:when test="${empty prodList }">
													<tr>
														<td colspan="1" class="d-flex">조회하신 게시글이 존재하지 않습니다.</td>
													</tr>
												</c:when>
												<c:otherwise>
													<c:forEach items="${prodList }" var="prod">
														<tr>
															<td>${prod.prodId }</td>
															<td>${prod.advertName }</td>
															<td>${prod.prodContent }</td>
															<td>${prod.companyName }</td>
															<td><fmt:formatDate value="${prod.prodStart }"
																	pattern="yyyy-MM-dd" /></td>
															<td><fmt:formatDate value="${prod.prodEnd }"
																	pattern="yyyy-MM-dd" /></td>
															<td><button type="button" class="btn btn-primary"
																	data-toggle="modal"
																	data-target="#exampleModalCenter${prod.prodId }">사진보기</button></td>
															<td><input type="hidden" name="prodId" id="prodId"
																value="${prod.prodId }">
																<button type="button" id="prod" name="prod"
																	class="btn btn-soft-primary btn-rounded">사용하기</button></td>
														</tr>
														<div class="modal fade"
															id="exampleModalCenter${prod.prodId }" tabindex="-1"
															role="dialog" aria-labelledby="exampleModalCenterTitle"
															aria-hidden="true">
															<div class="modal-dialog modal-dialog-centered modal-lg"
																role="document">
																<div class="modal-content">
																	<div class="modal-header"></div>
																	<div class="modal-body">
																		<img src="/upload/${prod.prodAtt }" alt="">
																	</div>
																	<div class="modal-footer">
																		<button class="btn" data-dismiss="modal">
																			<i class="flaticon-cancel-12"></i> 닫기
																		</button>

																	</div>
																</div>
															</div>
														</div>
													</c:forEach>
												</c:otherwise>
											</c:choose>
										</tbody>
									</table>
								</div>
							</div>
							<div class="pagination p13 text-center mt-4">
								<ul class="mx-auto">
									<nav aria-label="Page navigation example" id="pagingArea">${pagingVO.pagingHTML }</nav>
								</ul>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
	$(function() {
		var pagingArea = $("#pagingArea");

		pagingArea.on("click", "a", function(e) {
			e.preventDefault();
			var pageNo = $(this).data("page");
			searchForm.find("#page").val(pageNo);
			searchForm.submit();
		});

		$("#tbody").on("click", "#prod", function() {
			var prodId = $(this).prev("#prodId").val();

			$.ajax({
				url : "/master/advertUpdate",
				type : 'post',
				data : {
					"prodId" : prodId
				},
				success : function(data) {
					location.reload();
				}
			});
		});
	});
</script>