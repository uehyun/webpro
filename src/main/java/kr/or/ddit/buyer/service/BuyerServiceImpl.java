package kr.or.ddit.buyer.service;

import java.util.List;

import kr.or.ddit.buyer.dao.BuyerDaoImpl;
import kr.or.ddit.buyer.dao.IBuyerDao;
import kr.or.ddit.buyer.vo.BuyerVO;

public class BuyerServiceImpl implements IBuyerService{
	private static BuyerServiceImpl bsi;
	private IBuyerDao dao;
	
	private BuyerServiceImpl() {
		dao = BuyerDaoImpl.getInstance();
	}
	public static BuyerServiceImpl getInstance() {
		if(bsi == null) bsi = new BuyerServiceImpl();
		return bsi;
	}

	@Override
	public List<BuyerVO> selectIdName() {
		return dao.selectIdName();
	}

	@Override
	public BuyerVO selectById(String id) {
		return dao.selectById(id);
	}
	

}
