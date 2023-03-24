package kr.or.ddit.lprod.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.lprod.vo.LprodVO;
import kr.or.ddit.mybatis.config.mybatisSqlSessionFactory;

public class LprodDaoImpl implements ILprodDao {
	private static LprodDaoImpl ldi;
	
	private LprodDaoImpl() {
	}

	public static LprodDaoImpl getInstance() {
		if(ldi == null) ldi = new LprodDaoImpl();
		return ldi;
	}

	@Override
	public List<LprodVO> selectAll() {
		SqlSession session = null;
		List<LprodVO> list = null;
		try {
			session = mybatisSqlSessionFactory.getSqlSession();
			list = session.selectList("lprod.selectAll");
		} finally {
			session.close();
		}
		return list;
	}

}
