package kr.or.ddit.buyer.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.buyer.vo.BuyerVO;
import kr.or.ddit.mybatis.config.mybatisSqlSessionFactory;

public class BuyerDaoImpl implements IBuyerDao {
	private static BuyerDaoImpl bdi;
	
	private BuyerDaoImpl() {
	}
	
	public static BuyerDaoImpl getInstance() {
		if(bdi == null) bdi = new BuyerDaoImpl();
		return bdi;
	}

	@Override
	public List<BuyerVO> selectIdName() {
		SqlSession session = null;
		List<BuyerVO> list = null;
		try {
			session = mybatisSqlSessionFactory.getSqlSession();
			list = session.selectList("buyer.selectIdName");
		} finally {
			session.close();
		}
		return list;
	}

	@Override
	public BuyerVO selectById(String id) {
		SqlSession session = null;
		BuyerVO vo = null;
		try {
			session = mybatisSqlSessionFactory.getSqlSession();
			vo = session.selectOne("buyer.selectById", id);
		} finally {
			session.close();
		}
		return vo;
	}

}
