package kr.or.ddit.lprod.service;

import java.util.List;

import kr.or.ddit.lprod.dao.ILprodDao;
import kr.or.ddit.lprod.dao.LprodDaoImpl;
import kr.or.ddit.lprod.vo.LprodVO;

public class LprodServiceImpl implements ILprodService {
	private static LprodServiceImpl lsi;
	private ILprodDao dao;
	
	private LprodServiceImpl() {
		dao = LprodDaoImpl.getInstance();
	}
	
	public static LprodServiceImpl getInstance() {
		if(lsi == null) lsi = new LprodServiceImpl();
		return lsi;
	}

	@Override
	public List<LprodVO> selectAll() {
		return dao.selectAll();
	}

}
