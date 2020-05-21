package kr.com.shop.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.com.shop.vo.Member;

@Repository
public class MemberDAO {
	@Autowired
	SqlSession sqlSession;
	
	public int insert(Member member) {
		MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
		
		int result = mapper.insert(member);
		
		return result;
	}

	public Member emailAllInformation(String email) {
		MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
		
		Member result = mapper.emailAllInformation(email);
		
		return result;
	}
	
	public Member nicknameAllInformation(String nickname) {
		MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
		
		Member result = mapper.nicknameAllInformation(nickname);
		
		return result;
	}
	

}
