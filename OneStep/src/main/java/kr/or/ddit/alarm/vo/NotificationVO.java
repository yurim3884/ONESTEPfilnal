package kr.or.ddit.alarm.vo;

import java.util.Date;

import lombok.Data;

@Data
public class NotificationVO {
	
	private int notificationId;          // 알림 번호
	private String notificationContent;  // 알림 내용
	private Date notificationDate;       // 알림 일시 
	private int notificationRead;        // 읽었는지 여부 
	private String notificationUrl;      // 알림 온 곧 URL
	private String postId;               // 보낸 사람
	private String getId;                // 받은 사람
	
	
	private String cnt;                  // 안읽은 알림 숫자
	private String memId;                // 회원아이디
	
	
}
