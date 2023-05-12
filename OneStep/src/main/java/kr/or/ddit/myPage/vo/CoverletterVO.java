package kr.or.ddit.myPage.vo;

import java.util.List;

import lombok.Data;

@Data
public class CoverletterVO {
	
	/* 자기소개서 */
	private int covltrId;								// 자기소개서ID
	private String covltrTitle; 						// 자기소개서 제목
	private List<CoverletterItemVO> covltrItemList;		// 자기소개서항목ID 리스트
	private String memId; 									// 회원번호
	private String covltrInsertDate;					// 작성날짜
	private String covltrDeleteDate;					// 삭제날짜
	
}
