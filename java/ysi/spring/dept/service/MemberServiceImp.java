package ysi.spring.dept.service;




import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Service;

import ysi.spring.dept.dao.MemberDAO;
import ysi.spring.dept.dto.MemberDTO;

@Service

public class MemberServiceImp implements MemberService {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberServiceImp.class);
	private final MemberDAO memberDAO;
	@Autowired

	public MemberServiceImp( @Qualifier("memberDAOImp") MemberDAO memberDAO) {
	this.memberDAO = memberDAO;
	
	}

	@Override
	public MemberDTO memberLogin(String id,String password) {
		
		MemberDTO member=memberDAO.memberLogin(id, password);
		
		if (member == null /* && member.getPassword().equals(password) */) {
			
			return null;
			//return memberDAO.memberLogin(id,password);
			
		}
		return member;
	
	}

	@Override
	public MemberDTO memberInsert(MemberDTO memberDTO) {
		try {
			memberDAO.memberInsert(memberDTO);
		}catch (DataIntegrityViolationException e) {
			e.printStackTrace();
		}
		return memberDTO;
	}
	
	@Override
	public  int memberIdCheck(HttpServletRequest request, HttpServletResponse response) {
		logger.info("============= 서비스imp 아이디 중복확인 메서드==========");

		int idcheck = 0;
		String id = request.getParameter("id");
		memberDAO.memberId(id);

		if (memberDAO.memberId(id) == null) {
			idcheck = 0;
		} else {
			idcheck = 1;
		}
		return idcheck;
	}
		
	
	
	@Override
	public MemberDTO memberSearchId(String name, String email) {
		MemberDTO idcheck=memberDAO.memberSearchId(name, email);
		
		if (idcheck == null /* && member.getPassword().equals(password) */) {
			
			return null;
			//return memberDAO.memberLogin(id,password);
			
		}
		return idcheck;
	
	}
	

	@Override
	public MemberDTO memberSearchPassword(String id, String email) {
			MemberDTO passcheck=memberDAO.memberSearchPassword(id, email);
		
		if (passcheck == null /* && member.getPassword().equals(password) */) {
			
			return null;
			//return memberDAO.memberLogin(id,password);
			
		}
		return passcheck;
	
	}
}


