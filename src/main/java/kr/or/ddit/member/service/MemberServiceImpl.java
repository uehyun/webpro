package kr.or.ddit.member.service;

import java.util.List;

import kr.or.ddit.member.dao.IMemberDao;
import kr.or.ddit.member.dao.MemberDaoImpl;
import kr.or.ddit.member.vo.MemberVO;
/*
 	dao객체의 메소드를 호출 실행 - dao객체가 필요
	자기 자신의 객체를 생성하여 리턴
 */
public class MemberServiceImpl implements IMemberService {
	private static MemberServiceImpl service;
	private IMemberDao dao;
	
	private MemberServiceImpl() {
		dao = MemberDaoImpl.getInstance();
	}
	public static MemberServiceImpl getInstance() {
		if(service == null) service = new MemberServiceImpl();
		return service;
	}

	@Override
	public List<MemberVO> getAllMember() {
		return dao.getAllMember();
	}

}
