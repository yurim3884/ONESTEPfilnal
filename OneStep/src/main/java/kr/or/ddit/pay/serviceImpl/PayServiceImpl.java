package kr.or.ddit.pay.serviceImpl;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import kr.or.ddit.company.vo.CompanyVO;
import kr.or.ddit.mapper.PayMapper;
import kr.or.ddit.pay.service.IPayService;
import kr.or.ddit.pay.vo.PayVO;
import kr.or.ddit.prod.vo.ProdVO;

@Service
public class PayServiceImpl implements IPayService {

	
	@Resource(name="uploadPath")
	String uploadPath;
	
	@Inject
	private PayMapper mapper;

	@Override
	public void insertMem(ProdVO pay) {
		mapper.updateMem(pay);
		mapper.insertMem(pay);
	}

	@Override
	public void insertCom(HttpServletRequest req, ProdVO pay) throws Exception {
		mapper.insertCom(pay);

		if (pay.getAttProd().getSize() > 0) {
			String uuid = UUID.randomUUID().toString();
			String fileName = pay.getAttProd().getOriginalFilename().replaceAll(" ", "_");
//			String path = req.getSession().getServletContext().getRealPath("/resources/upload");
			String savePath = uploadPath;
			fileName += "_" + uuid;

			File file = new File(savePath);
			if (!file.exists()) {
				file.mkdirs();
			}

			savePath += "/" + fileName;
			File saveFile = new File(savePath);

			pay.setProdAtt(fileName);
			System.out.println("아아앙 :" + pay.getProdId());
			mapper.insertAttFile(pay);

			// 방법1
			pay.getAttProd().transferTo(saveFile); // 파일 복사

		}

	}

	@Override
	public void insertComp(ProdVO pay) {
		mapper.insertComp(pay);
		
	}

}
