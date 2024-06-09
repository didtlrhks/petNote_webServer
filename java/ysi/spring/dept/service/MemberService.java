package ysi.spring.dept.service;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ysi.spring.dept.dto.MemberDTO;

public interface MemberService {
	
public MemberDTO memberInsert(MemberDTO memberDTO);
	
public MemberDTO memberLogin(String id,String password);
	
public int memberIdCheck(HttpServletRequest request, HttpServletResponse response);
	
public MemberDTO memberSearchId(String name, String email);
	
public MemberDTO memberSearchPassword(String id, String email);



}
