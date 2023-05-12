<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!-- 구직자 관리 -->
	<div class="row">
		<div class="col-xl-11 col-lg-11 col-md-11 col-sm-11 col-11 layout-spacing" style="margin: 0 auto;">
			<div >
				<div class="widget-heading">
					<h2 align="center">구직회원</h2> <br>
				</div>
				<div class="widget-content">
					<div class="table-responsive">
						<table id="basic-dt" class="table table-hover"  style="width:100%">
							<thead>
								<tr>
									<th><div class="th-content">아이디</div></th>
									<th><div class="th-content">이름</div></th>
									<th><div class="th-content">전화번호</div></th>
									<th><div class="th-content">상세보기</div></th>
									<th><div class="th-content">신고목록</div></th>
									<th><div class="th-content">누적신고수</div></th>
									<th><div class="th-content">상태</div></th>
									<th><div class="th-content">차단일</div></th>
								</tr>
							</thead>
							<tbody id="tbody">
							<c:forEach items="${list }" var="list">
								<tr id="cl">
									<td>${list.memId }</td>
									<td>${list.memName }</td>
									<td>${list.memTel }</td>
									<td><button type="button" class="btn btn-primary mb-2 mr-2" data-toggle="modal" data-target="#exampleModalCenter${list.memId }">상세</button></td>
									<td><button type="button" class="btn btn-primary mb-2 mr-2" data-toggle="modal" data-target="#exampleModalCenter2${list.memId }">신고목록</button>
										<c:forEach items="${reportCnt }" var="report">
	                                   		<c:if test="${report.memId eq list.memId}">
												<span style="color: red;">(${report.cnt })</span>
	                                   		</c:if>
                                   		</c:forEach>
									</td>
									<td>
										<c:forEach items="${reportAllCnt }" var="reportAllCnt">
	                                   		<c:if test="${reportAllCnt.memId eq list.memId}">
												<span style="color: red;">${reportAllCnt.cnt }</span>
	                                   		</c:if>
                                   		</c:forEach>
									</td>
									<td>
										<input type="hidden" id="memId" name="memId" value="${list.memId }">
										<select class="form-control" style="width:150px;" id="memStatus" name="memStatus">
											<c:choose>
												<c:when test="${list.memStatus == 5 }">
												    <option value="1">일반</option>
												    <option value="5" selected="selected">차단</option>
												</c:when>
												<c:when test="${list.memStatus == 1 }">
												    <option value="1" selected="selected">일반</option>
												    <option value="5">차단</option>
												</c:when>												
											</c:choose>
										</select>
										<div class="modal fade" id="exampleModalCenter${list.memId }" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
				                           <div class="modal-dialog modal-dialog-centered" role="document">
				                               <div class="modal-content" >
				                                   <div class="modal-body" style="margin: 15px">
				                                   		<table class="modal-text table table-hover">
				                                   			<tr>
				                                   				<td>아이디</td>
				                                   				<td>${list.memId }</td>
				                                   			</tr>
				                                   			<tr>
				                                   				<td>이름</td>
				                                   				<td>${list.memName }</td>
				                                   			</tr>
				                                   			<tr>
				                                   				<td>닉네임</td>
				                                   				<td>${list.memNick }</td>
				                                   			</tr>
				                                   			<tr>
				                                   				<td>생년월일</td>
				                                   				<td><fmt:formatDate value="${list.memBirth }" pattern="yyyy-MM-dd"/></td>
				                                   			</tr>
				                                   			<tr>
				                                   				<td>성별</td>
				                                   				<td>
				                                   				<c:choose>
				                                   					<c:when test="${list.memGender == 'male' }">
				                                   					남자
				                                   					</c:when>
				                                   					<c:otherwise>
				                                   					여자
				                                   					</c:otherwise>
				                                   				</c:choose>
				                                   				</td>
				                                   			</tr>
				                                   			<tr>
				                                   				<td>주소</td>
				                                   				<td>${list.memAddr1 } ${list.memAddr2 }</td>
				                                   			</tr>
				                                   			<tr>
				                                   				<td>이메일</td>
				                                   				<td>${list.memEmail }</td>
				                                   			</tr>
				                                   			<tr>
				                                   				<td>전화번호</td>
				                                   				<td>${list.memTel }</td>
				                                   			</tr>
				                                   			<tr>
				                                   				<td>가입일</td>
				                                   				<td><fmt:formatDate value="${list.memStart }" pattern="yyyy-MM-dd"/></td>
				                                   			</tr>
				                                   			<tr>
				                                   				<td>프리랜서여부</td>
				                                   			<c:choose>
				                                   				<c:when test="${list.memFree eq 'Y'}">
				                                   					<td>등록함</td>				                                   				
				                                   				</c:when>
				                                   				<c:otherwise>
				                                   					<td>등록안함</td>
				                                   				</c:otherwise>
				                                   			</c:choose>
				                                   			</tr>
				                                   		</table>
				                                   </div>
				                                   <div class="modal-footer">
				                                       <button class="btn" data-dismiss="modal"><i class="flaticon-cancel-12"></i>닫기</button>
				<!--                                        <button type="button" class="btn btn-primary">Save</button> -->
				                                   </div>
				                               </div>
				                           </div>
				                       </div>
										<div class="modal fade" id="exampleModalCenter2${list.memId }" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
				                           <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
				                               <div class="modal-content">
				                                   <div class="modal-body">
				                                   		<table class="table table-hover">
					                                   		<thead>
																<tr>
																	<th><div class="th-content">카테고리</div></th>
																	<th><div class="th-content">게시물제목</div></th>
																	<th><div class="th-content">신고사유</div></th>
																	<th><div class="th-content">신고일자</div></th>
																	<th><div class="th-content">신고자</div></th>
																	<th><div class="th-content">읽음안읽음</div></th>
																	<th><div class="th-content">게시물 내용확인</div></th>
																	<th><div class="th-content">게시물 삭제</div></th>
																</tr>
															</thead>
															<tbody>
				                                   		<c:forEach items="${reportList }" var="report">
					                                   		<c:if test="${report.reportMem eq list.memId }">
					                                   			<tr>
					                                   				<td>${report.boardCategory }</td>
					                                   				<td>${report.boardTitle }</td>
					                                   				<td>${report.reportContent }</td>
					                                   				<td>${report.reportDate }</td>
					                                   				<td>${report.memId }</td>
					                                   				<td>${report.reportStatus }</td>
					                                   				<td>
					                                   				<input type="hidden" id="reportId" name="reportId" value="${report.reportId }">
					                                   				<button type="button" class="btn btn-primary mb-2 mr-2" data-toggle="modal" data-target="#exampleModalCenter${report.reportId }" id="reportStatus" value="${report.reportStatus }">내용</button>
																		<div class="modal fade" id="exampleModalCenter${report.reportId }" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
																			<div class="modal-dialog modal-dialog-centered" role="document">
																				<div class="modal-content">
																					<div class="modal-header">
																					<h5 class="modal-title" id="exampleModalCenterTitle">${report.boardTitle }</h5>
																					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
																					    <i class="las la-times"></i>
																					</button>
																					</div>
																					<div class="modal-body">
																					   	${report.boardContent }
																					</div>
																						<div class="modal-footer">
																						    <button class="btn" data-dismiss="modal" onclick="location.reload()"><i class="flaticon-cancel-12"></i>닫기</button>
																						<!--                                        <button type="button" class="btn btn-primary">Save</button> -->
																				        </div>
																				    </div>
																			</div>
																		</div>
					                                   				</td>
					                                   				<td>
					                                   				<button type="button" class="btn btn-primary mb-2 mr-2" id="boardDelete" value="${report.boardId }">삭제</button>
					                                   				</td>
					                                   			</tr>
					                                   		</c:if>
				                                   		</c:forEach>
															</tbody>
				                                   		</table>
				                                   </div>
				                                   <div class="modal-footer">
				                                       <button class="btn" data-dismiss="modal"><i class="flaticon-cancel-12"></i>닫기</button>
				<!--                                        <button type="button" class="btn btn-primary">Save</button> -->
				                                   </div>
				                               </div>
				                           </div>
				                       </div>
									</td>
									<td style="color: red;">
									<c:if test="${list.blacklistCheck == '1' }">
									<fmt:formatDate value="${list.blacklistStart }" pattern="yyyy-MM-dd"/>
									</c:if>
									</td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Main Body Ends -->
<script type="text/javascript">
// function changeSelect(event){
// 	var memStatus = event.target.parentNode.parentNode.childNodes[11].childNodes[1].value;
// 	var memId = event.target.parentNode.parentNode.childNodes[1].innerHTML;
// 	console.log("체크:", memStatus, memId);
// 	$.ajax({
// 		url : "/master/status",
// 		type : 'post',
// 		data : {
// 			"memStatus" : memStatus,
// 			"memId" : memId
// 		},
// 		success : function(data){
// 			alert("변경되었습니다.");
// 		}
// 	});
// }
$(function(){
	$("#tbody").on("change", "#memStatus", function(){
		var memStatus = $(this).val();
		var memId = $(this).prev("#memId").val(); 
	 	$.ajax({
			url : "/master/status",
			type : 'post',
			data : {
				"memStatus" : memStatus,
				"memId" : memId
			},
			success : function(data){
				location.reload();
			}
		});
	});
	
	$("#tbody").on("click", "#reportStatus", function(){
		var reportStatus = $(this).val();
		var reportId = $(this).prev("#reportId").val();
		console.log(reportStatus);
		console.log(reportId);
		$.ajax({
			url : "/master/reportStatus",
			type : 'post',
			data : {
				"reportStatus" : reportStatus,
				"reportId" : reportId
			},
			success : function(data){
				
			}
		});
	});
});
</script>
