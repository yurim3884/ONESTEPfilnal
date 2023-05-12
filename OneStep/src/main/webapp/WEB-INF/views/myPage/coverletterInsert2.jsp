<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!--  Navbar Starts / Breadcrumb Area  -->
<div class="sub-header-container">
    <header class="header navbar navbar-expand-sm">
        <ul class="navbar-nav flex-row">
            <li>
                <div class="page-header">
                    <nav class="breadcrumb-one" aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item active" aria-current="page"><span>자기소개서 항목 등록</span></li>
                        </ol>
                    </nav>
                </div>
            </li>
        </ul>
        <ul class="navbar-nav d-flex align-center ml-auto right-side-filter">
            <li class="">
                <p class="current-time" id="currentTime"></p>
                <p class="current-date" id="currentDate"></p>
            </li>
        </ul>
    </header>
</div>
<!--  Navbar Ends / Breadcrumb Area  -->

<form:form action="/myPage/coverletter/insertItem" method="post" modelAttribute="covltrItem">
	<input type="hidden" name="memId" value="${sessionScope.memberVO.memId }" />
	<c:if test="${status eq 'u' }">
		<input type="hidden" name="covltrItemId" value="${covltrItem.covltrItemId }" />
	</c:if>

<!-- Main Body Starts -->

<div class="layout-px-spacing">
    <div class="layout-top-spacing mb-2">
        <div class="col-md-12">
            <div class="row">
                <div class="container p-0">
                    <div class="row layout-top-spacing">
                        <div class="col-lg-9 layout-spacing">
                        
                            <div class="statbox widget box box-shadow">
<!--                             	<div class="widget-header"> -->
<!-- 	                               <div class="row"> -->
<!-- 	                                   <div class="col"> -->
<!-- <!-- 	                                       <h4>경력</h4> -->
<!-- 	                                   </div> -->
<!-- 	                                   <div class="col-5"> -->
<!-- 	                                       <button type="button" class="btn btn-outline-info btn-rounded">저장된 항목 불러오기</button> -->
<!--                                            <button type="button" class="btn btn-outline-warning btn-rounded">삭제</button> -->
<!-- 	                                   </div> -->
<!-- 	                               </div> -->
<!-- 	                           </div> -->

								<div class="widget-content widget-content-area" >
                                    <div class="form-group row">
	                                    <label for="covltrItemTitle">자기소개서 제목 
	                                    <span class="text-danger">*</span></label>
	                                    <input type="text" name="titleList" class="form-control" placeholder="항목 제목을 입력하세요.">
	                                </div>
                                </div>


                                <div class="widget-content widget-content-area" >
                                    <div class="form-group row">
	                                    <label for="covltrItemTitle">항목 
	                                    <span class="text-danger">*</span></label>
	                                    <input type="text" name="titleList" class="form-control" placeholder="항목 제목을 입력하세요.">
	                                </div>
	                                
        	                        <div class="form-group row">
                                        <label for="covltrItemContent">내용 
                                        <span class="text-danger">*</span></label>
                                        <textarea class="form-control" name="contentList" rows="6" placeholder="내용을 입력하세요."></textarea>
	                                	<span>글자수: (공백 포함) 자 </span>
	                                </div>
	                                <div class="form-group row">
                                   		<button type="button" class="btn btn-outline-warning btn-rounded" >삭제</button>
                                	</div>
                                </div>
                            </div>
                            <br><br>
                            <div class="statbox widget box box-shadow">
                                <div class="widget-content widget-content-area">
                                    <div class="form-group row">
	                                    <label for="covltrItemTitle">항목 
	                                    <span class="text-danger">*</span></label>
	                                    <input type="text" id="covltrItemTitle" name="titleList" class="form-control" placeholder="항목 제목을 입력하세요.">
	                                </div>
	                                
        	                        <div class="form-group row">
                                        <label for="covltrItemContent">내용 
                                        <span class="text-danger">*</span></label>
                                        <textarea class="form-control" name="contentList" id="covltrItemContent" rows="6" placeholder="내용을 입력하세요."></textarea>
	                                	<span>글자수: (공백 포함) 자 </span>
	                                	<span style="color:#aaa;" id="counter">(0 / 최대 200자)</span>
	                                </div>
	                                <div class="form-group row">
                                   		<button type="button" class="btn btn-outline-warning btn-rounded" >삭제</button>
                                	</div>
                                </div>
                            </div>
                            
                            <div class="container text-center" >
                            	<button type="button" class="btn btn-outline-primary" style="width:100%;"><i class="far fa-plus-square fa-lg"></i> 추가</button><br>
                            </div>
                        </div>
<!--                     </div>  -->
                        <div class="col-lg-3 layout-spacing">
                        	<!-- ONGOING TASK -->
		                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 layout-spacing">
		                        <div class="widget widget-three add-project">
		                            <div class="widget-heading mb-0">
		                                <h5>채용공고 자소서 작성</h5>
		                            </div>
		                            <div class="widget-content">
		                                <ul class="task-lists m-0 p-0 mt-4">
		                                    <li class="d-flex mb-4 align-items-center">
		                                    	<p>(주)경남은행 2023 상반기 신입행원 채용</p><br>
<!-- 		                                    	<button type="button" class="btn btn-success">작성</button> -->
		                                    </li>
		                                    <li class="d-flex mb-4 align-items-center">
		                                    	<p class="mb-0">CJ제일제당(주) 하반기 신입 품질관리자</p>
		                                    </li>
		                                    <li class="d-flex mb-4 align-items-center">
		                                        <p class="mb-0">(주)코웨이 2022 하반기 신입 해외영업</p>
		                                    </li>
		                                    <li class="d-flex mb-4 align-items-center">
		                                        <p class="mb-0">삼성전자(주) 하반기 신입 제품디자이너</p>
		                                    </li>
		                                    <li class="d-flex mb-4 align-items-center">
		                                        <p class="mb-0">NE능률 2023 상반기 신입 교재개발/교수설계</p>
		                                    </li>
		                                    <li class="d-flex mb-4 align-items-center">
		                                        <p class="mb-0">(주)GS글로벌 2022 하반기 신입 해외영업</p>
		                                    </li>
		                                </ul>
		                           </div>
		                       </div>
			                   <div class="button-list"></br>
			                       <button type="button" class="btn btn-outline-primary" style="width:100%;">저장된 항목 불러오기</button><br><br>
			                       <button type="button" id="btnList" class="btn btn-outline-primary" style="width:100%;">목록</button><br><br>
			                       <button type="button" id="btnInsert" class="btn btn-primary" style="width:100%;">등록</button><br>
			                       
			                   </div>
		                   </div>
		                   <!-- ONGOING TASK ENDS-->
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Main Body Ends -->
</form:form>	


<script type="text/javascript">
//서류사항 textarea 체크
$('#covltrItemContent').keyup(function (e){
    var content = $(this).val();
    $('#counter').html("("+ content.length +" / 최대 500자)");    //글자수 실시간 카운팅

    if (content.length > 500){
        alert("최대 500자까지 입력 가능합니다.");
        $(this).val(content.substring(0, 500));
        $('#counter').html("(500 / 최대 500자)");
    }
});

var covltrItem = $("#covltrItem");
var btnInsert = $("#btnInsert");
var btnPreview = $("#btnPreview");
var btnList = $("#btnList");

btnList.on("click", function(){
	location.href = '/myPage/coverletter/itemList';
});

btnInsert.on("click", function() {
//		if ($("#coverletterTitle").val() == null || $("#coverletterTitle").val() == "") {
//			alert("항목 제목을 입력해 주세요.");
//			return false;
//		}
	if (btnInsert.text() == "선택 수정") {
		covltrItem.attr("action", "/myPage/coverletter/modifyItem");
	}
	covltrItem.submit();	
});

btnInsert.on("click", function() {
	covltrItem.submit();
});

</script>



