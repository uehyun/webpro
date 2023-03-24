package kr.or.ddit.member.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.member.vo.MemberVO;
import kr.or.ddit.mybatis.config.mybatisSqlSessionFactory;
// mapper에 접근하여 sql문을 실행 - SqlSession 객체가 필요 -SqlSessionFactory이 생성
public class MemberDaoImpl implements IMemberDao {
	private static IMemberDao dao;
	private SqlSession session = null;
	
	private MemberDaoImpl() {
	}
	
	public static IMemberDao getInstance() {
		if(dao == null) dao = new MemberDaoImpl();
		return dao;
	}

	@Override
	public List<MemberVO> getAllMember() {
		// SqlSession 객체가 필요
		session = mybatisSqlSessionFactory.getSqlSession();
		List<MemberVO> memList = null;
		try {
			memList = session.selectList("member.getAllMember");
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return memList;
	}

}
