<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<div class="layout-px-spacing">
                <div class="row layout-spacing pt-4">
                    <div class="col-xl-3 col-lg-4 col-md-4 mb-4">
                        <div class="profile-left">
                            <div class="image-area">
                                <img class="user-image" src='${pageContext.request.contextPath }/resources/assets/img/99.png' >
                                <label for="file-upload" class="custom-file-upload mb-0">
                                    <a title="Attach a file" class="mr-2 pointer text-primary">
                                        <i class="las la-paperclip font-20"></i>
                                    </a>
                                </label>
<!--                                 <input  type="file" class="form-control" id="inputFile" accept="image/*" style="display:none;" onchange="handleFileChange()"/> -->
                                <input id="file-upload" class="inputFile" name='upload_cont_img'  type="file" accept="image/*" style="display:none;" onchange="handleFileChange()">
                                
                                <a href="/member/lock" class="follow-area">
                                    <i class="las la-pen"></i>
                                </a>
                            </div>
                            <div class="info-area">
                                <h6><c:out value="${memberVO.memName }"/></h6>
<!--                                 <p>Data Analyst</p> -->
<!--                                 <button>Follow</button> -->
                            </div>
                            <div class="profile-numbers">
                                <div class="single-number">
                                    <a>
                                        <span class="number">${cntResume }</span>
                                        <span class="number-detail">이력서</span>
                                    </a>
                                </div>
                                <div class="single-number">
                                    <a>
                                        <span class="number">${cntPropo }</span>
                                        <span class="number-detail">제안</span>
                                    </a>
                                </div>
                                <div class="single-number">
                                    <a>
                                        <span class="number">${cntApply }</span>
                                        <span class="number-detail">지원 현황</span>
                                    </a>
                                </div>
                            </div>
                            <div class="profile-tabs">
                                <div class="nav flex-column nav-pills mb-sm-0 mb-3 mx-auto" id="v-border-pills-tab" role="tablist" aria-orientation="vertical">
                                    <a class="nav-link active" id="v-border-pills-home-tab" data-toggle="pill" href="#v-border-pills-home" role="tab" aria-controls="v-border-pills-home" aria-selected="true">Home</a>
                                    <a class="nav-link" id="v-border-pills-team-tab" data-toggle="pill" href="#v-border-pills-team" role="tab" aria-controls="v-border-pills-team" aria-selected="false">게시글</a>
                                    <a class="nav-link" id="v-border-pills-work-tab" data-toggle="pill" href="#v-border-pills-work" role="tab" aria-controls="v-border-pills-work" aria-selected="false">이력서</a>
<!--                                     <a class="nav-link" id="v-border-pills-products-tab" data-toggle="pill" href="#v-border-pills-products" role="tab" aria-controls="v-border-pills-products" aria-selected="false">지원현황</a> -->
                                    <a class="nav-link" id="v-border-pills-orders-tab" data-toggle="pill" href="#v-border-pills-orders" role="tab" aria-controls="v-border-pills-orders" aria-selected="false">지원내역</a>
<!--                                     <a class="nav-link" id="v-border-pills-settings-tab" data-toggle="pill" href="#v-border-pills-settings" role="tab" aria-controls="v-border-pills-settings" aria-selected="false">Settings</a> -->
                                </div>
                            </div>
                            <c:forEach items="${advertList }" var="advertList">
								<c:if test="${advertList.advertId == 9 }">
		                            <div class="" style="margin-top: 10px">
		                                <img src="/upload/${advertList.advertAtt }" onerror="this.src='${pageContext.request.contextPath }/resources/assets/img/0001.png'" width="300px" height="90px" />
		                            </div>
                            	</c:if>
                            	<c:if test="${advertList.advertId == 10 }">
		                            <div class="" style="margin-top: 10px">
		                                <img src="/upload/${advertList.advertAtt }" onerror="this.src='${pageContext.request.contextPath }/resources/assets/img/0002.png'" width="300px" height="90px" />
		                            </div>
	                            </c:if>
                            </c:forEach>
                        </div>
                    </div>
    <div class="col-xl-9 col-lg-8 col-md-8">
        <div class="cover-image-area">
           <div id="card" class="row w-100 m-0">
			<c:forEach var="annoSupList" items="${annoSupList}">
				<div class="col-xl-3 col-lg-3 col-md-3 mb-3">
				<div id="slidesOnly" class="carousel slide" data-ride="carousel">
				<div class="carousel-inner">
					<div class="card single-seller" style="border-radius: 3%; z-index: 33;  box-shadow: 4px 4px 4px -4px #4165a7; border: 4px solid;">
						<div style="position: relative;">
					<!-- 하트가 나오는 부분인데 안먹는 -->
<%-- 							<p id="comId" hidden="true">${annoSupList.AnnoVO.comId}</p> --%>
<%-- 							<c:choose> --%>
<%-- 								<c:when test="${fn:contains(supList, annoList.AnnoVO.comId)}"> --%>
<%-- 									<c:set var="likeFlag" --%>
<%-- 										value="<i id='like' class='fa-solid fa-heart fa-lg' style='color: rgb(245, 66, 66);'></i>" /> --%>
<%-- 								</c:when> --%>
<%-- 								<c:otherwise> --%>
<%-- 									<c:set var="likeFlag" --%>
<%-- 										value="<i id='unlike' class='fa-regular fa-heart fa-lg'></i>" /> --%>
<%-- 								</c:otherwise> --%>
<%-- 							</c:choose> --%>

							<img height="100px;"
								src="/upload/${annoSupList.companyVO.companyLogo}"
								class="card-img-top" alt="widget-card-2"> <a
								style="position: absolute; top: 5px; right: 12px; cursor: pointer;">${likeFlag}</a>
						</div>
						<div class="card-body">
							<h5 class="card-title mt-3">
								<a href="/member/detailAnno/${annoSupList.annoId} ">${annoSupList.annoTitle}</a>
							</h5>
							<h5 class="card-title mt-3">
								<a href="/member/detail/${annoSupList.comId}">${annoSupList.companyVO.companyName}</a>
								<i class="fa-solid fa-star" style="color: #f5d400;"></i>${annoSupList.reviewVO.reviewScore}
							</h5>
							<p class="card-text">지원조건 :${annoSupList.annoJo}</p>
							<p class="card-text">우대사항 :${annoSupList.annoUd}</p>
							<p class="card-text">모집분야 :${annoSupList.annoMb}</p>
							<p class="card-text">담당업무 :${annoSupList.annoDm1} ${annoSupList.annoDm2}</p>
							<p class="card-text">
								복지 및 급여 : <i class="fa-solid fa-star" style="color: #6bf80d;"></i>${annoSupList.reviewVO.reviewWelfare}</p>
							<p class="card-text">
								업무와 삶의 균형 : <i class="fa-solid fa-star" style="color: #6bf80d;"></i>${annoSupList.reviewVO.reviewBalance}</p>
							<p class="card-text">
								승진 및 가능성 : <i class="fa-solid fa-star" style="color: #6bf80d;"></i>${annoSupList.reviewVO.reviewVision}</p>
							<div class="team"></div>
							<div class="meta-info">
								<div class="meta-action">
									<div class="meta-bottom-info">
										<span class="strong" style="color: #db1414;">마감일</span>
										<fmt:formatDate value="${annoSupList.annoEndDate}" pattern="yyyy-MM-dd" var="endDate"/>
										<span
											class="strong" style="color: #db1414;">${endDate}</span>
									</div>
								</div>
							</div>
						</div>
						</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
		
		
		
                        </div>
                        <div class="row tab-area-content">
                            <div class="col-xl-7 col-lg-12 col-md-12 mb-4">
                                <div class="tab-content" id="v-border-pills-tabContent">
                                    <div class="tab-pane fade show active" id="v-border-pills-home" role="tabpanel" aria-labelledby="v-border-pills-home-tab">
                                        <div class="profile-shadow">
                                            <h6 class="font-15 mb-3">Collections</h6>
                                            <div class="numbers">
			                                    <div class="row">
			                                        <div class="col-sm-6 mb-4">
			                                            <a class="single-number" href="/myPage/coverletter/list">
<!-- 			                                                <div class="value text-primary">자기소개서</div> -->
<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pen" viewBox="0 0 16 16">
  <path d="m13.498.795.149-.149a1.207 1.207 0 1 1 1.707 1.708l-.149.148a1.5 1.5 0 0 1-.059 2.059L4.854 14.854a.5.5 0 0 1-.233.131l-4 1a.5.5 0 0 1-.606-.606l1-4a.5.5 0 0 1 .131-.232l9.642-9.642a.5.5 0 0 0-.642.056L6.854 4.854a.5.5 0 1 1-.708-.708L9.44.854A1.5 1.5 0 0 1 11.5.796a1.5 1.5 0 0 1 1.998-.001zm-.644.766a.5.5 0 0 0-.707 0L1.95 11.756l-.764 3.057 3.057-.764L14.44 3.854a.5.5 0 0 0 0-.708l-1.585-1.585z"/>
</svg>
			                                                <div class="value text-primary">자기소개서</div>
<!-- 			                                                <div class="label text-primary">자기소개서</div> -->
			                                                <div class="trending trending-up-basic">
<!-- 			                                                    <span>12%</span> -->
			                                                    <i class="las la-caret-up"></i>
			                                                </div>
			                                            </a>
			                                        </div>
			                                        <div class="col-sm-6 mb-4">
			                                            <a class="single-number" href="/myPage/resume/list">
<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-file-text" viewBox="0 0 16 16">
  <path d="M5 4a.5.5 0 0 0 0 1h6a.5.5 0 0 0 0-1H5zm-.5 2.5A.5.5 0 0 1 5 6h6a.5.5 0 0 1 0 1H5a.5.5 0 0 1-.5-.5zM5 8a.5.5 0 0 0 0 1h6a.5.5 0 0 0 0-1H5zm0 2a.5.5 0 0 0 0 1h3a.5.5 0 0 0 0-1H5z"/>
  <path d="M2 2a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V2zm10-1H4a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h8a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1z"/>
</svg>
			                                                <div class="value text-success-teal">이력서</div>
<!-- 			                                                <div class="label text-success-teal">Closed Today</div> -->
			                                                <div class="trending trending-down-basic">
<!-- 			                                                    <span>21%</span> -->
			                                                    <i class="las la-caret-down"></i>
			                                                </div>
			                                            </a>
			                                        </div>
			                                    </div>
			                                    <div class="row">
			                                        <div class="col-sm-6 mb-4">
			                                            <a class="single-number" href="/myPage/proposal">
<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-postcard-heart" viewBox="0 0 16 16">
<path d="M8 4.5a.5.5 0 0 0-1 0v7a.5.5 0 0 0 1 0v-7Zm3.5.878c1.482-1.42 4.795 1.392 0 4.622-4.795-3.23-1.482-6.043 0-4.622ZM2.5 5a.5.5 0 0 0 0 1h3a.5.5 0 0 0 0-1h-3Zm0 2a.5.5 0 0 0 0 1h3a.5.5 0 0 0 0-1h-3Zm0 2a.5.5 0 0 0 0 1h3a.5.5 0 0 0 0-1h-3Z"/>
<path fill-rule="evenodd" d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4Zm2-1a1 1 0 0 0-1 1v8a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1H2Z"/>
</svg>
			                                                <div class="value text-info">받은제안</div>
<!-- 			                                                <div class="label text-info">Queries Marked</div> -->
			                                                <div class="trending trending-down-basic">
<!-- 			                                                    <span>7%</span> -->
			                                                    <i class="las la-caret-down"></i>
			                                                </div>
			                                            </a>
			                                        </div>
			                                        <div class="col-sm-6 mb-4">
			                                            <a class="single-number" href="/myPage/myApply">
<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-check-circle" viewBox="0 0 16 16">
<path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
<path d="M10.97 4.97a.235.235 0 0 0-.02.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-1.071-1.05z"/>
</svg>
			                                                <div class="value text-danger">지원내역</div>
<!-- 			                                                <div class="label text-danger">Rejected</div> -->
			                                                <div class="trending trending-up-basic">
<!-- 			                                                    <span>21%</span> -->
			                                                    <i class="las la-caret-up"></i>
			                                                </div>
			                                            </a>
			                                        </div>
			                                    </div>
			                                </div>
                                        </div>
                                    </div>


                                    <div class="tab-pane fade" id="v-border-pills-team" role="tabpanel" aria-labelledby="v-border-pills-team-tab">
                                      <div class="media">
                                            <div class="profile-shadow w-100">
                                                <h6 class="font-15 mb-3"><a href="/board/total">내가 쓴 글</a></h6>
                                                <div class="single-team">
                                                    <div class="d-flex">
                                                    <table class="table"  style="table-layout:fixed">
									                    <thead>
									                        <tr>
									                            <th><div class="th-content">No</div></th>
									                            <th style="width:40%"><div class="th-content" align="left">제목</div></th>
									                            <th><div class="th-content">작성일</div></th>
									                            <th><div class="th-content">조회수</div></th>
									                        </tr>
									                    </thead>
									                    <tbody>
															<c:choose>
																<c:when test="${empty boardList }">
																	<tr>
																		<td>내가 작성한 게시글이 존재하지 않습니다.</td>
																	</tr>
																</c:when>
																<c:otherwise>
																	<c:forEach items="${boardList }" var="board">
																		<tr>
																			<td>${board.boardId }</td>
																			<td style="overflow:hidden;white-space:nowrap;text-overflow:ellipsis;" align="left">
																				<a href="/board/read?boardId=${board.boardId }">${board.boardTitle }
																					<c:if test="${board.recnt>0 }">
																						<span style="color:red;">(${board.recnt })</span>
																					</c:if>
																				</a>
																			</td>
																			<td><fmt:formatDate value="${board.boardStart }" pattern="yyyy-MM-dd"/></td>
																			<td>${board.boardHit }</td>
																		</tr>
																	</c:forEach>
																</c:otherwise>
															</c:choose>
									                    </tbody>
									                </table>
                                                    
                                                    
                                                    </div>
                                                </div>
                                            </div>
                                      </div>
                                    </div>
                                    <div class="tab-pane fade" id="v-border-pills-work" role="tabpanel" aria-labelledby="v-border-pills-work-tab">
                                        <div class="media">
                                            <div class="profile-shadow w-100">
                                                <h6 class="font-15 mb-3"><a href="/myPage/resume/list">이력서</a></h6>
                                                <div class="progress-list">
                                                    <table class="table">
									                    <thead>
									                        <tr>
									                            <th><div class="th-content">제목</div></th>
									                            <th><div class="th-content">공개여부</div></th>
									                            <th><div class="th-content">대표이력서 여부</div></th>
									                            <th><div class="th-content">작성일</div></th>
									                        </tr>
									                    </thead>
									                    <tbody>
															<c:choose>
																<c:when test="${empty resumeList }">
																	<tr>
																		<td>이력서가 존재하지 않습니다.</td>
																	</tr>
																</c:when>
																<c:otherwise>
																	<c:forEach items="${resumeList }" var="resume">
																		<tr>
																			<td><a href="/myPage/resume/detail?resumeId=${resume.resumeId}">${resume.resumeTitle}</a></td>
																			<td>${resume.resumeStatus}</td>
																			<td>${resume.resumeRepresentative }</td>
																			<td>${resume.resumeInsertDate }</td>
																		</tr>
																	</c:forEach>
																</c:otherwise>
															</c:choose>
									                    </tbody>
									                </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="v-border-pills-products"  aria-labelledby="v-border-pills-products-tab">
                                        <div class="searchable-items card-box grid">
                                        <c:forEach items="${applyList }" var = "apply">
	                                            <div class="items" style="width:auto;">
	                                                <div style="border:2px solid #ffc200;" >
	                                                    <div class="product-info">
	                                                        <img src="assets/img/product-5.jpg" alt="avatar">
	                                                        <div class="user-meta-info">
	                                                            <p class="product-name"><a href="/member/detail/${apply.companyVO.companyName}">${apply.companyVO.companyName }</a></p>
	                                                            <p class="product-category">Category One</p>
	                                                        </div>
	                                                    </div>
	                                                    <div class="product-price">
	                                                        <p class="product-category-addr"><span>급여: </span>${apply.companyVO.companyPerson }</p>
	                                                    </div>
	                                                    <div class="product-price">
	                                                        <p class="product-category-addr"><span>공고마감일 
	                                                        	<a class="d-flex align-center">
			                                                        <fmt:formatDate value="${apply.annoEndDate }"/>
	                                                        	</a>
	                                                        </span></p>
	                                                    </div>
	                                                    <div class="product-rating">
	                                                        <p class="product-rating-inner"><span>결과 발표일 
	                                                            <a class="d-flex align-center">
<%-- 	                                                            ${apply.applyResultDate} --%>
	                                                               <fmt:formatDate value="${apply.applyVO.applyResultDate}"/>   
<%-- 	                                                               <fmt:formatDate value="${apply.applyResultDate}"/>    --%>
	                                                            </a>
	                                                         </span> </p>
	                                                    </div>
	                                                </div>
	                                            </div>
                                            </c:forEach>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="v-border-pills-orders" role="tabpanel" aria-labelledby="v-border-pills-orders-tab">
                                        <div class="media">
                                            <div class="profile-shadow w-100">
                                                <h6 class="font-15 mb-3">지원현황</h6>
                                                <div class="table-responsive">
                                                    <table class="table table-hover" style="table-layout:fixed">
                                                        <thead>
                                                            <tr>
                                                                <th><div class="th-content">공고 명</div></th>
                                                                <th><div class="th-content">모집분야</div></th>
                                                                <th><div class="th-content">지원상태</div></th>
                                                                <th><div class="th-content">결과발표</div></th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                           <c:forEach items="${apply}" var="applyList" >
															<tr>
																<td style="overflow:hidden;white-space:nowrap;text-overflow:ellipsis;" align="left">${applyList.annoVO[0].annoTitle}</td>
																<td>${applyList.annoVO[0].annoMb} </td>
																<td>
																	<c:if test="${applyList.applyStatus==1}">
																		<h6 style="color: #4165a7;">지원완료 </h6> 
																	</c:if>
																		<c:if test="${applyList.applyStatus==2}">
																			<h6 style="color: #8dbf42;">기업평가 진행중 </h6> 
																		</c:if>
																		<c:if test="${applyList.applyStatus==3}">
																			<c:if test="${applyList.applyResult=='합격'}">
																				<h6  style="color: #10c700;"><a>${applyList.applyResult}</a></h6> 
																			</c:if>
																		<c:if test="${applyList.applyResult=='불합격'}">
																				<h6 id="nopass" style="color: #c70000; "><a>${applyList.applyResult}</a></h6> 
																		</c:if>
																	</c:if>
																</td>
<!-- 																<td> -->
<%-- 																	<c:if test="${applyList.applyStatus==1}"> --%>
<!-- 																	<h6 style="color: #4165a7;">지원완료 </h6>  -->
<%-- 																	</c:if> --%>
<%-- 																	<c:if test="${applyList.applyStatus==2}"> --%>
<!-- 																	<h6 style="color: #8dbf42;">기업평가 진행중 </h6>  -->
<%-- 																	</c:if> --%>
<%-- 																	<c:if test="${applyList.applyStatus==3}"> --%>
<%-- 																		<c:if test="${applyList.applyResult=='합격'}"> --%>
<%-- 																			<h6  style="color: #10c700;"><a>${applyList.applyResult}</a></h6>  --%>
<%-- 																		</c:if> --%>
<%-- 																		<c:if test="${applyList.applyResult=='불합격'}"> --%>
<%-- 																			<h6 id="nopass" style="color: #c70000; "><a>${applyList.applyResult}</a></h6>  --%>
<%-- 																		</c:if> --%>
<%-- 																	</c:if> --%>
<!-- 																</td> -->
																<td> 
																	<c:if test="${applyList.applyStatus==3}">
																	<fmt:formatDate value="${applyList.applyResultDate}" pattern="yyyy-MM-dd"/>
																	</c:if>
																</td>
<!-- 																<td> -->
<%-- 																<c:if test="${applyList.applyStatus==3}"> --%>
<%-- 																<c:if test="${applyList.applyResult=='합격'}"> --%>
<%-- 																	<button id="pass" type="button" data-toggle="modal" data-target="#exampleModalCenter1${applyList.applyId}" class="btn btn-info btn-rounded">상세보기</button> --%>
<%-- 																</c:if> --%>
<%-- 																<c:if test="${applyList.applyResult=='불합격'}"> --%>
<%-- 																	<button id="nopass" type="button" data-toggle="modal" data-target="#exampleModalCenter2${applyList.applyId}" class="btn btn-info btn-rounded">상세보기</button> --%>
<%-- 																</c:if> --%>
<%-- 																</c:if> --%>
<!-- 																	</td> -->
																</tr>
														</c:forEach>
                                                        </tbody>
                                                    </table>
<!--                                                     <p class="font-13 text-center mt-4 mb-1 text-muted"> -->
<!--                                                         <a class="text-primary" href="javascript:void(0);">Click here</a> to see the full product list -->
<!--                                                     </p> -->
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="v-border-pills-settings" role="tabpanel" aria-labelledby="v-border-pills-settings-tab">
                                        <div class="media">
                                            <div class="profile-shadow w-100">
                                                <h6 class="font-15 mb-3">Settings</h6>
                                                <div class="tab-pane rightbar-tab active" id="settings-tab" role="tabpanel">
                                                    <h6 class="right-bar-heading p-2 px-3 mt-2 text-uppercase">Account Setting </h6>
                                                    <div class="px-2">
                                                        <div class="switch-container mb-3 pl-2">
                                                            <label class="switch">
                                                                <input type="checkbox" checked="">
                                                                <span class="slider round primary-switch"></span>
                                                            </label>
                                                            <p class="ml-3 text-dark">Sync Contacts</p>
                                                        </div>
                                                        <div class="switch-container mb-3 pl-2">
                                                            <label class="switch">
                                                                <input type="checkbox">
                                                                <span class="slider round primary-switch"></span>
                                                            </label>
                                                            <p class="ml-3 text-dark">Auto Update</p>
                                                        </div>
                                                        <div class="switch-container mb-3 pl-2">
                                                            <label class="switch">
                                                                <input type="checkbox">
                                                                <span class="slider round primary-switch"></span>
                                                            </label>
                                                            <p class="ml-3 text-dark">Recieve Notifications</p>
                                                        </div>
                                                    </div>
                                                    <h6 class="right-bar-heading p-2 px-3 mt-2 text-uppercase">Mail Setting </h6>
                                                    <div class="px-2">
                                                        <div class="switch-container mb-3 pl-2">
                                                            <label class="switch">
                                                                <input type="checkbox" checked="">
                                                                <span class="slider round primary-switch"></span>
                                                            </label>
                                                            <p class="ml-3 text-dark">Mail Auto Responder</p>
                                                        </div>
                                                        <div class="switch-container mb-3 pl-2">
                                                            <label class="switch">
                                                                <input type="checkbox" checked="">
                                                                <span class="slider round primary-switch"></span>
                                                            </label>
                                                            <p class="ml-3 text-dark">Auto Trash Delete</p>
                                                        </div>
                                                        <div class="switch-container mb-3 pl-2">
                                                            <label class="switch">
                                                                <input type="checkbox">
                                                                <span class="slider round primary-switch"></span>
                                                            </label>
                                                            <p class="ml-3 text-dark">Custom Signature</p>
                                                        </div>
                                                    </div>
                                                    <h6 class="right-bar-heading p-2 px-3 mt-2 text-uppercase">Chat Setting </h6>
                                                    <div class="px-2">
                                                        <div class="switch-container mb-3 pl-2">
                                                            <label class="switch">
                                                                <input type="checkbox" checked="">
                                                                <span class="slider round primary-switch"></span>
                                                            </label>
                                                            <p class="ml-3 text-dark">Show Online</p>
                                                        </div>
                                                        <div class="switch-container mb-3 pl-2">
                                                            <label class="switch">
                                                                <input type="checkbox" checked="">
                                                                <span class="slider round primary-switch"></span>
                                                            </label>
                                                            <p class="ml-3 text-dark">Chat Notifications</p>
                                                        </div>
                                                    </div>
                                                    <div class="px-2 text-center pt-4">
                                                        <a href="javascript:void(0);" class="btn btn-sm btn-danger">
                                                            Set Default
                                                        </a>
                                                        <button class="ripple-button ripple-button-primary btn-sm" type="button">
                                                            <div class="ripple-ripple js-ripple">
                                                            <span class="ripple-ripple__circle"></span>
                                                            </div>
                                                            Ripple Effect
                                                        </button> 
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                  </div>
                            </div>
                            <div class="col-xl-5 col-lg-12 col-md-12">
                                <div class="profile-info">
                                    <h5>개인 정보</h5>
                                    <div class="single-profile-info">
                                        <h6>생년월일  &nbsp; <fmt:formatDate value="${memberVO.memBirth }" pattern="yyyy-MM-dd" /></h6> 
                                        <p></p>
                                    </div>
                                    <div class="single-profile-info">
                                        <h6>성별   &nbsp; ${memberVO.memGender }</h6><p></p>
                                    </div>
                                    <div class="single-profile-info">
                                        <h6>Email  &nbsp; ${memberVO.memEmail }</h6><p></p>
                                    </div>
                                    <div class="single-profile-info">
                                        <h6>전화번호  &nbsp; ${memberVO.memTel }</h6><p></p>
                                    </div>
                                    <div class="single-profile-info">
                                        <h6>Skills  &nbsp;
                                        <span class="badge badge-primary"> UI/UX </span>
                                        <span class="badge badge-info"> Photoshop </span>
                                        <span class="badge badge-secondary"> Angular </span>
                                        <span class="badge outline-badge-danger"> Java </span>
                                        </h6>
                                    </div>
                                    <div class="single-profile-info social">
                                        <h6>Social</h6>
                                        <a href="https://www.facebook.com" target="_blank"><i class="lab la-facebook text-primary"></i></a>
                                        <a href="https://www.twitter.com" target="_blank"><i class="lab la-twitter text-info"></i></a>
                                        <a href="https://www.linkedin.com" target="_blank"><i class="lab la-linkedin text-primary"></i></a>
                                        <a href="https://www.instagram.com" target="_blank"><i class="lab la-instagram text-danger"></i></a>
                                        <a href="https://www.github.com" target="_blank"><i class="lab la-github text-black"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            
<script type="text/javascript">

var inputFile = $(".inputFile");

inputFile.on("change", function (event) {
   var files = event.target.files;
   var file = files[0];
   var str = "";

   var formData = new FormData();
   // key : value 형태로 값이 추가된다.
   formData.append("file", file);

   $.ajax({
      type: "post",
      url: "/member/uploadAjax",
      data: formData,
      dataType: "text",
      processData: false,
      contentType: false,
      success: function (data) {
   alert(
         '수정 완료',
         '프로필이 변경되었습니다!',
         'success'
   )
         if (checkImageType(data)) { // 이미지이면 이미지 태그를 이용한 출력형태
//             str += "<img id ='user-image' style='width:200px; height:200px; object-fit:contain;' src = '/user/displayFile?fileName=" + data + "'/>";
            str += "<img class ='user-image' src = '/member/displayFile?fileName=" + data + "'/>";
         }
         $(".image-area").replaceWith(str);
         if (!checkImageType(data)) {
//             swal("이미지 파일만 업로드 가능합니다.", "warning");
            alert(
            '업로드 오류',
            '이미지 파일만 업로드가 가능합니다.',
            'warning'
      )
            return;
         }
      }
   });
});

function getOriginalName(fileName) {
   if (checkImageType(fileName)) {
      return;
   }
   var idx = fileName.indexOf("_") + 1;
   return fileName.substr(idx);
}


function checkImageType(fileName) {
   var pattern = /jpg|gif|png|jpeg/i;
   return fileName.match(pattern); // 패턴과 일치하면 true (너 이미지 맞구나?)
}

</script>            
            
            
            
            
            
            
            