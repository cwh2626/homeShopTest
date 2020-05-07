package kr.com.shop.dao;

import kr.com.shop.vo.Member;

public interface MemberMapper {
	public int insert(Member member);
	
	public Member emailAllInformation(String email);



}
