package kr.or.ddit.myPage.vo;

import lombok.Data;

@Data
public class DesiredEmplVO {
	
	/* 희망근무조건 */
	private int desiredId;				// 희망근무조건ID
	private String desiredEmplForm;			// 고용형태
	private int desiredSalary;			// 희망연봉
	private String desiredCity1;			// 희망근무지_대분류
	private String desiredCity2;			// 희망근무지_소분류
	private String desiredIndustry1;		// 산업키워드_대분류
	private String desiredIndustry2;		// 산업키워드_중분류
	private String desiredIndustry3;		// 산업키워드_소분류
	private String desiredInsertDate;		// 작성날짜
	private String desiredDeleteDate;		// 삭제날짜
	private int resumeId;				// 이력서번호
	
}
