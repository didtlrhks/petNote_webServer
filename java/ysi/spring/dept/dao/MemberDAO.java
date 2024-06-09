package ysi.spring.dept.dao;


import ysi.spring.dept.dto.MemberDTO;

public interface MemberDAO {
	
	public void memberInsert(MemberDTO memberDTO);
	public MemberDTO memberLogin(String id,String password);
	public MemberDTO memberId(String id);
	public MemberDTO memberSearchId(String name, String email);
	public MemberDTO memberSearchPassword(String id, String email);
	

}
