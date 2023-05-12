<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<fmt:formatDate value="${now }" pattern="yyyy-MM-dd" var="today" />
<div class="layout-px-spacing">
	<div class="layout-top-spacing mb-2">
		<div class="col-md-12">
			<div class="row">
				<div class="container p-0">
					<div class="row layout-top-spacing">
						<div class="col-lg-12 layout-spacing">
							<div class="statbox widget box box-shadow">
								<div class="widget-content widget-content-area">
									<div class="form-group row">
										<div class="col-lg-12 col-md-12 col-sm-12">
											<div class="card multiple-form-one px-0 pb-0 mb-3">
												<h3 class="text-center">
													<strong>공고 등록하기</strong>
												</h3>
												<p class="text-center">Fill all form field to go to next
													step</p>
												<div align="right">
													<button type="button" onclick="fu_click();">자동완성</button>
												</div>
												<div class="row">
													<div class="col-md-12 mx-0">
														<form id="msform" action="/company/insert" method="post"
															enctype="multipart/form-data">
															<div class="col-xl-4 col-lg-12 col-md-12 col-sm-12">
																<input class="form-control form-control-solid"
																	type="hidden" name="annoType" value="1" required>
															</div>
															<ul id="progressbar">
																<li class="active" id="account"><strong>공고
																		기본 정보</strong></li>
																<li id="personal"><strong>회사 및 담당자정보</strong></li>
																<li id="payment"><strong>우대조건</strong></li>
																<li id="confirm"><strong>finish</strong></li>
															</ul>
															<fieldset>
																<div class="form-card">
																	<h5 class="fs-title mb-4">공고 기본 정보</h5>
																	<p>
																		기본 정보를 입력해 주세요. <br>
																	</p>
																	<br> <br>
																	<div class="form-group row">
																		<label
																			class="col-form-label text-left col-lg-2 col-sm-12">공고
																			제목</label>
																		<div class="col-xl-4 col-lg-12 col-md-12 col-sm-12">
																			<input class="form-control form-control-solid"
																				type="text" name="annoTitle" value="" id="annoTitle"
																				required>
																		</div>
																		<label
																			class="col-form-label text-left col-lg-2 col-sm-12">공고
																			내용</label>
																		<div class="col-xl-4 col-lg-12 col-md-12 col-sm-12">
																			<input class="form-control form-control-solid"
																				type="text" name="annoContent" value=""
																				id="annoContent" required>
																		</div>
																	</div>

																	<div class="form-group row">
																		<label
																			class="col-form-label text-left col-lg-2 col-sm-12">고용형태</label>
																		<div class="col-xl-4 col-lg-12 col-md-12 col-sm-12">
																			<select class="form-control form-control-sm"
																				id="exampleSelects" name="annoStaly" required>
																				<option>인턴</option>
																				<option>정규직</option>
																				<option>임원</option>
																			</select>
																		</div>
																		<label
																			class="col-form-label text-left col-lg-2 col-sm-12">공고키워드
																		</label>
																		<div class="col-xl-4 col-lg-12 col-md-12 col-sm-12">
																			<select class="form-control multiple"
																				id="exampleSelects" name="keyword"
																				multiple="multiple" required>
																				<c:forEach items="${keyword }" var="keyword">
																					<option value="${keyword.annoKname }">${keyword.annoKname }</option>
																				</c:forEach>
																			</select>
																		</div>

																	</div>
																	<div class="form-group row">
																		<label
																			class="col-form-label text-left col-lg-2 col-sm-12">모집분야</label>
																		<div class="col-xl-4 col-lg-12 col-md-12 col-sm-12">
																			<input class="form-control form-control-solid"
																				type="text" name="annoMb" value="" id="annoMb"
																				required>
																		</div>
																		<label
																			class="col-form-label text-left col-lg-2 col-sm-12">모집인원</label>
																		<div class="col-xl-4 col-lg-12 col-md-12 col-sm-12">
																			<input class="form-control" type="number" value="0"
																				id="example-number-input" name="annoMem" required>
																		</div>
																	</div>
																	<div class="form-group row">
																		<label
																			class="col-form-label text-left col-lg-2 col-sm-12">수습기간
																			(개월)</label>
																		<div class="col-xl-4 col-lg-12 col-md-12 col-sm-12">
																			<input class="form-control" type="number" value="0"
																				id="example-number-input" name="annoProbation"
																				required>
																		</div>
																		<label
																			class="col-form-label text-left col-lg-2 col-sm-12">급여
																			(만원)</label>
																		<div class="col-xl-4 col-lg-12 col-md-12 col-sm-12">
																			<input class="form-control" type="number"
																				value="3000" id="example-number-input"
																				name="annoSalary" required>
																		</div>
																	</div>
																	<div class="form-group row">
																		<label
																			class="col-form-label text-left col-lg-2 col-sm-12">공고
																			시작 날짜 </label>
																		<div class="col-xl-4 col-lg-12 col-md-12 col-sm-12">
																			<input class="form-control" type="date"
																				value="${today }" id="example-date-input"
																				name="annoStartDate" required>
																		</div>
																		<label
																			class="col-form-label text-left col-lg-2 col-sm-12">공고
																			종료 날짜 </label>
																		<div class="col-xl-4 col-lg-12 col-md-12 col-sm-12">
																			<input class="form-control" type="date"
																				value="${today }" id="example-date-input"
																				name="annoEndDate" required>
																		</div>
																	</div>

																	<div class="form-group row">
																		<label
																			class="col-form-label text-left col-lg-2 col-sm-12">공고
																			이미지</label>
																		<div class="col-9 ">
																			<div class="widget-content widget-content-area">
																				<div class="form-group row">
																					<div class="col-lg-12 col-md-12 col-sm-12">
																						<div class="attached-files">
																							<img id="image-preview" width="320">
																						</div>
																						<label for="file-upload"
																							class="custom-file-upload mb-0"> <a
																							title="Attach a file"
																							class="mr-2 pointer text-primary"> <i
																								class="las la-paperclip font-20"></i> <span
																								class="font-17">클릭하여 이미지를 넣어주세요</span>
																						</a>
																						</label> <input id="file-upload" name="attAnno"
																							type="file" accept="image/*"
																							style="display: none;">
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>

																<input type="button" name="next"
																	class="next action-button btn btn-primary" value="다음" />
															</fieldset>

															<fieldset>
																<div class="form-card">
																	<h5 class="fs-title mb-4">회사 및 담당자정보</h5>

																	<div class="form-group row">
																		<label
																			class="col-form-label text-left col-lg-2 col-sm-12">담당자
																			이름</label>
																		<div class="col-xl-4 col-lg-12 col-md-12 col-sm-12">
																			<input class="form-control form-control-solid"
																				type="text" name="annoManager" value=""
																				id="annoManager" required>
																		</div>
																		<label
																			class="col-form-label text-left col-lg-2 col-sm-12">담당자
																			전화번호</label>
																		<div class="col-xl-4 col-lg-12 col-md-12 col-sm-12">
																			<div class="input-group input-group-solid">
																				<div class="input-group-prepend">
																					<span class="input-group-text"> <i
																						class="la la-phone"></i>
																					</span>
																				</div>
																				<input type="text"
																					class="form-control form-control-solid"
																					placeholder="Phone" value="" name="annoTel"
																					id="annoTel" required>
																			</div>
																		</div>
																	</div>


																	<div class="form-group row">
																		<label
																			class="col-form-label text-left col-lg-2 col-sm-12">담당자
																			이메일</label>
																		<div class="col-xl-4 col-lg-12 col-md-12 col-sm-12">
																			<div class="input-group input-group-solid">
																				<div class="input-group-prepend">
																					<span class="input-group-text"> <i
																						class="la la-at"></i>
																					</span>
																				</div>
																				<input type="text"
																					class="form-control form-control-solid"
																					placeholder="Email" value="" id="annoEmail"
																					name="annoEmail" required>
																			</div>
																		</div>
																		<label
																			class="col-form-label text-left col-lg-2 col-sm-12">근무
																			환경</label>
																		<div class="col-xl-4 col-lg-12 col-md-12 col-sm-12">
																			<input class="form-control form-control-solid"
																				type="text" name="annoWork" value="" id="annoWork"
																				required>
																		</div>
																	</div>
																	<div class="form-group row">
																		<label
																			class="col-form-label text-left col-lg-2 col-sm-12">담당업무</label>
																		<div class="col-xl-4 col-lg-12 col-md-12 col-sm-12">
																			<select class="form-control form-control-sm"
																				id="exampleSelects" name="annoDm1" required>
																				<option>기획·전략</option>
																				<option>법무·사무·총무</option>
																				<option>인사·HR</option>
																				<option>회계·세무</option>
																				<option>마케팅·광고·MD</option>
																				<option>개발·데이터</option>
																				<option>디자인</option>
																				<option>물류·무역</option>
																				<option>운전·운송·배송</option>
																				<option>영업</option>
																				<option>고객상담·TM</option>
																				<option>금융·보험</option>
																				<option>식·음료</option>
																				<option>고객서비스·리테일</option>
																				<option>엔지니어링·설계</option>
																				<option>제조·생산</option>
																				<option>교육</option>
																				<option>건축·시설</option>
																				<option>의료·바이오</option>
																				<option>미디어·문화·스포츠</option>
																				<option>공공·복지</option>
																			</select> <select class="form-control form-control-sm"
																				id="exampleSelects" name="annoDm2" required>
																				<option>경영·비즈니스기획</option>
																				<option>웹기획</option>
																				<option>마케팅기획</option>
																			</select>

																		</div>
																		<label
																			class="col-form-label text-left col-lg-2 col-sm-12">근무부서</label>
																		<div class="col-xl-4 col-lg-12 col-md-12 col-sm-12">
																			<input class="form-control form-control-solid"
																				type="text" name="annoGb" value="" id="annoGb"
																				required>
																		</div>
																	</div>
																	<div class="form-group row">
																		<label
																			class="col-form-label text-left col-lg-2 col-sm-12">근무요일</label>
																		<div class="col-xl-4 col-lg-12 col-md-12 col-sm-12">
																			<select class="form-control form-control-sm"
																				id="exampleSelects" name="annoDay" required>
																				<option>주 6일</option>
																				<option>주 5일</option>
																			</select>
																		</div>
																		<label
																			class="col-form-label text-left col-lg-2 col-sm-12">근무
																			시간</label>
																		<div class="col-xl-4 col-lg-12 col-md-12 col-sm-12">
																			<input class="form-control" type="number" value="8"
																				id="example-number-input" name="annoTime" required>
																		</div>
																	</div>
																	<div class="form-group row">
																		<label
																			class="col-form-label text-left col-lg-2 col-sm-12">업종</label>
																		<div class="col-xl-4 col-lg-12 col-md-12 col-sm-12">
																			<select class="form-control form-control-sm"
																				id="exampleSelects" name="industryCode" required>
																				<option>서비스업</option>
																				<option>금융·은행업</option>
																				<option>IT·정보통신업</option>
																				<option>판매·유통업</option>
																				<option>제조·생산·화학업</option>
																				<option>교육업</option>
																				<option>건설업</option>
																				<option>의료·제약업</option>
																				<option>미디어·광고업</option>
																				<option>문화·예술·디자인업</option>
																				<option>기관·협회</option>
																			</select>
																		</div>
																		<label
																			class="col-form-label text-left col-lg-2 col-sm-12">지역</label>
																		<div class="col-xl-4 col-lg-12 col-md-12 col-sm-12">
																			<input class="form-control form-control-solid"
																				type="text" name="annoWd" required>
																		</div>
																	</div>


																</div>
																<input type="button" name="previous"
																	class="previous action-button-previous btn btn-outline-primary"
																	value="이전" /> <input type="button" name="next"
																	class="next action-button btn btn-primary" value="다음" />
															</fieldset>
															<fieldset>
																<div class="form-card">
																	<h5 class="fs-title mb-4">우대조건</h5>
																	<div class="form-group row">
																		<label
																			class="col-form-label text-left col-lg-2 col-sm-12">연령
																			제한</label>
																		<div class="col-xl-4 col-lg-12 col-md-12 col-sm-12">
																			<input class="form-control" type="number" value="0"
																				id="example-number-input" name="annoAge" required>
																		</div>
																		<label
																			class="col-form-label text-left col-lg-2 col-sm-12">성별</label>
																		<div class="col-xl-4 col-lg-12 col-md-12 col-sm-12">
																			<select class="form-control form-control-sm"
																				id="exampleSelects" name="annoGender" required>
																				<option>상관없음</option>
																				<option>남성</option>
																				<option>여성</option>
																			</select>
																		</div>
																	</div>
																	<div class="form-group row">
																		<label
																			class="col-form-label text-left col-lg-2 col-sm-12">학력</label>
																		<div class="col-xl-4 col-lg-12 col-md-12 col-sm-12">
																			<select class="form-control form-control-sm"
																				id="exampleSelects" name="annoStu" required>
																				<option>상관없음</option>
																				<option>석/박사</option>
																				<option>대학교 (4년제)</option>
																				<option>대학 (2~3년제)</option>
																				<option>고등학교</option>
																			</select>
																		</div>
																		<label
																			class="col-form-label text-left col-lg-2 col-sm-12">경력</label>
																		<div class="col-xl-4 col-lg-12 col-md-12 col-sm-12">
																			<select class="form-control form-control-sm"
																				id="exampleSelects" name="annoCareer" required>
																				<option>신입</option>
																				<option>경력</option>
																				<option>신입 경력</option>
																			</select>
																		</div>
																	</div>
																	<div class="form-group row">
																		<label
																			class="col-form-label text-left col-lg-2 col-sm-12">지원조건</label>
																		<div class="col-xl-4 col-lg-12 col-md-12 col-sm-12">
																			<input class="form-control form-control-solid"
																				type="text" name="annoJo" value="java" required>
																		</div>
																		<label
																			class="col-form-label text-left col-lg-2 col-sm-12">우대사항
																		</label>
																		<div class="col-xl-4 col-lg-12 col-md-12 col-sm-12">
																			<input class="form-control form-control-solid"
																				type="text" name="annoUd" value="정보처리기사" required>
																		</div>
																	</div>
																	<div class="form-group row">
																		<label
																			class="col-form-label text-left col-lg-2 col-sm-12">자기소개서
																			항목</label>
																		<div class="col-xl-4 col-lg-12 col-md-12 col-sm-12">
																			<input class="form-control form-control-solid"
																				type="text" name="annoIntro" id="annoIntro" required>
																		</div>
																	</div>


																</div>
																<input type="hidden" value="${comId }" name="comId">
																<input type="button" name="previous"
																	class="previous action-button-previous btn btn-outline-primary"
																	value="이전" /> <input type="submit" name="make_payment"
																	class="next action-button btn btn-primary" value="완료" />
															</fieldset>
															<fieldset>
																<div class="form-card">
																	<h5 class="fs-title mb-4 text-center">Congrats !</h5>
																	<br>
																	<div class="row justify-content-center">
																		<div class="col-md-3">
																			<svg class="checkmark"
																				xmlns="http://www.w3.org/2000/svg"
																				viewBox="0 0 52 52">
                                                                                                <circle
																					class="checkmark__circle" cx="26" cy="26" r="25"
																					fill="none" />
                                                                                                <path
																					class="checkmark__check" fill="none"
																					d="M14.1 27.2l7.1 7.2 16.7-16.8" />
                                                                                            </svg>
																		</div>
																	</div>
																	<br> <br>
																</div>
															</fieldset>
														</form>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


<script type="text/javascript">
	function fu_click() {

		$('input[name=annoTitle]')
				.attr('value', "2023년 5월  직무별 신입/경력 대규모 인재채용");
		$('input[name=annoContent]').attr('value',
				"2023년 5월  직무별 신입/경력 대규모 인재채용");
		$('input[name=annoMb]').attr('value', "개발");
		$('input[name=annoManager]').attr('value', "인사담당자");
		$('input[name=annoTel]').attr('value', "010-0000-0000");
		$('input[name=annoEmail]').attr('value', "insa@onestep.com");
		$('input[name=annoWork]').attr('value', "개발");
		$('input[name=annoGb]').attr('value', "개발");
		$('input[name=annoIntro]')
				.attr('value', "2023년 5월  직무별 신입/경력 대규모 인재채용");
		$('input[name=annoWd]').attr('value', "대전 중구");

	}
</script>