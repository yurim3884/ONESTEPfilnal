package kr.or.ddit.master.service;

import java.time.LocalDate;
import java.util.List;
import java.util.Map;

import kr.or.ddit.ServiceResult;
import kr.or.ddit.master.vo.SeoVO;
import kr.or.ddit.member.vo.MemberVO;
import kr.or.ddit.vo.ReportVO;

public interface IMasterService {

	public List<MemberVO> list() throws Exception;

	public ServiceResult status(String memStatus,String memId) throws Exception;

	public List<ReportVO> reportList() throws Exception;

	public List<ReportVO> reportCnt() throws Exception;

	public void insertBlack(String memId) throws Exception;

	public void updateBlack1(String memId) throws Exception;

	public String selectOneId(String memId) throws Exception;

	public void updateBlack2(String memId);

	public ServiceResult reportStatus(int reportId);

	public List<ReportVO> reportAllCnt();

	public List<MemberVO> companyList();

	public SeoVO selectYearData(int year);



}
