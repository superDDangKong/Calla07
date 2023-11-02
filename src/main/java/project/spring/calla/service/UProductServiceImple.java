package project.spring.calla.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import project.spring.calla.domain.ProductVO;
import project.spring.calla.domain.UProductVO;
import project.spring.calla.pageutil.PageCriteria;
import project.spring.calla.persistence.ProductDAO;
import project.spring.calla.persistence.UProductDAO;

@Service
public class UProductServiceImple implements UProductService {
	private static final Logger logger = 
			LoggerFactory.getLogger(UProductServiceImple.class);
	
	@Autowired
	private UProductDAO dao;
	
	@Override
	public int create(UProductVO vo) {
		logger.info("create() ȣ�� : vo = " + vo.toString());
		return dao.insert(vo);
	}

	@Override
	public List<UProductVO> read(PageCriteria criteria) {
		logger.info("read() ȣ��");
		logger.info("start = " + criteria.getStart());
		logger.info("end = " + criteria.getEnd());
		return dao.select(criteria);
	}

	@Override
	public UProductVO read(int uProductId) {
		logger.info("read() ȣ�� : boardId = " + uProductId);
		return dao.select(uProductId);
	}

	@Override
	public int update(UProductVO vo) {
		logger.info("update() ȣ�� : vo = " + vo.toString());
		return dao.update(vo);
	}

	@Override
	public int delete(int uProductId) {
		logger.info("delete() ȣ�� : uProductId = " + uProductId);
		return dao.delete(uProductId);
	}

	@Override
	public int getTotalCounts() {
		logger.info("getTotalCounts() ȣ��");
		return dao.getTotalCount();
	}

	@Override
	public List<UProductVO> readByCategoriorName(PageCriteria criteria, String keyword) {
		logger.info("readByTitleOrContent() ȣ��");
		logger.info("start = " + criteria.getStart());
		logger.info("end = " + criteria.getEnd());
		logger.info("keyword = " + keyword);
		
		return dao.selectByCategoriorName(criteria, keyword);
	}

	@Override
	public int getTotalCountsByByCategoriorName(String keyword) {
		logger.info("getTotalCountsByTitleContent() ȣ��");
		return dao.getTotalCountsByCategoriorName(keyword);
	}

	@Override
	public List<UProductVO> readdate(PageCriteria criteria) {
		logger.info("readdate() ȣ��");
		logger.info("start = " + criteria.getStart());
		logger.info("end = " + criteria.getEnd());
		
		return dao.selectByUproductCreatedDate(criteria);
		
	}

	@Override
	public int getTotalCountsBydate() {
		logger.info("getTotalCountsBydate() ȣ��");
		return dao.getTotalCountsByUproductCreatedDate();
	}

	@Override
	public List<UProductVO> readByAddress(PageCriteria criteria, String keyword) {
		logger.info("readByTitleOrContent() ȣ��");
		logger.info("start = " + criteria.getStart());
		logger.info("end = " + criteria.getEnd());
		logger.info("keyword = " + keyword);
		return dao.selectByAddress(criteria, keyword);
	}

	@Override
	public int getTotalCountsByAddress(String keyword) {
		logger.info("getTotalCountsByTitleContent() ȣ��");
		return dao.getTotalCountsByAddress(keyword);
	}

	@Override
	public List<UProductVO> readrecommend(String uProductCategori, int uProductId) {
		logger.info("readrecommend() ȣ��");
		return dao.recommendCategori(uProductCategori, uProductId);
	}

	

}