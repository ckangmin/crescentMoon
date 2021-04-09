package org.ict.mapper;

import org.ict.domain.LoginDTO;
import org.ict.domain.MemberVO;

public interface MemberMapper {
	public MemberVO login(LoginDTO dto) throws Exception;
	
	public void join(MemberVO vo);
	
	public void update(MemberVO vo);
	
	public MemberVO idChk(String mid);
	
	public MemberVO findPw(MemberVO vo);
	
	public void updatePw(MemberVO vo);
	
	public MemberVO findId(MemberVO vo);
	
	public MemberVO select(int mno);
}
