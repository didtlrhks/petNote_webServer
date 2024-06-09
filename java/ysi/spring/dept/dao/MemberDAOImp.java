package ysi.spring.dept.dao;



import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import ysi.spring.dept.dto.MemberDTO;

@Repository
@RequiredArgsConstructor

public class MemberDAOImp implements MemberDAO{

	@Autowired
	private final SqlSessionTemplate sqlSessionTemplate;


	@Override
	public MemberDTO memberLogin(String id,String password) {
		Map<String, Object> params = new HashMap<String, Object>();
	    params.put("id", id);
	    params.put("password", password);
	    return sqlSessionTemplate.selectOne("ysi.spring.dept.login", params);
	}

	@Override
	public void memberInsert(MemberDTO memberDTO) {
		sqlSessionTemplate.insert("ysi.spring.dept.memberinsert",memberDTO);
	}
	
	@Override
	public MemberDTO memberId(String id) {
		return sqlSessionTemplate.selectOne("ysi.spring.dept.id",id);
	}

	@Override
	public MemberDTO memberSearchId(String name, String email) {
		Map<String, Object> params = new HashMap<String, Object>();
	    params.put("name", name);
	    params.put("email", email);
	    return sqlSessionTemplate.selectOne("ysi.spring.dept.idcheck", params);
	}

	@Override
	public MemberDTO memberSearchPassword(String id, String email) {
		Map<String, Object> params = new HashMap<String, Object>();
	    params.put("id", id);
	    params.put("email", email);
	    return sqlSessionTemplate.selectOne("ysi.spring.dept.passwordcheck", params);
	}


	
}

