<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>

<!-- 공지사항 리스트 -->

	<div class="row">
		<div class="col-12 layout-spacing" > 
			<div>
				<div class="widget-heading">
					<h2 align="center">공지사항</h2>
				</div>
				<div class="widget-content">
					<div class="table-responsive">
						<table id="basic-dt" class="table table-hover">
							<thead>
								<tr>
									<th><div class="th-content">분류</div></th>
									<th><div class="th-content">제목</div></th>
									<th><div class="th-content">작성일</div></th>
									<th><div class="th-content">조회수</div></th>
								</tr>
							</thead>
							<tbody id="tbody">
							<c:forEach items="${noticeList }" var="list">
								<tr onclick="location.href='/master/noticeDetail?boardId=${list.boardId}'">
									<td>${list.boardCal }</td>
									<td>${list.boardTitle }</td>
									<td><fmt:formatDate value="${list.boardStart }" pattern="yyyy-MM-dd"/></td>
									<td>${list.boardHit }</td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
				<button type="button" id="insertBtn" class="btn btn-primary mr-2" style="float: right; margin-top: 10px;">작성하기</button>
		</div>
	</div>
<script type="text/javascript">
$(function(){
	var insertBtn = $("#insertBtn");
	
	insertBtn.on("click", function(){
		location.href = "/master/noticeForm";
	});
});
</script>