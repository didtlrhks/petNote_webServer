package ysi.spring.dept.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import ysi.spring.dept.dao.MemberDAO;
import ysi.spring.dept.dto.MemberDTO;
import ysi.spring.dept.service.MemberServiceImp;

@Controller
@RequiredArgsConstructor
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Autowired
	private final MemberServiceImp memberServiceImp;

	@GetMapping("/pets")
	public String PetMainView() {

		return "./pets";

	}

	@GetMapping("/MemberLogin")

	public String login() {

		return "./login/login";

	}

	@PostMapping("/MemberLoginView")

	public String loginview(Model model, MemberDTO memberDTO) {

		model.addAttribute("login", memberServiceImp.memberLogin(memberDTO.getId(), memberDTO.getPassword()));
		logger.info("login", model);

		return "./login/login_check";

	}

	@GetMapping("/MemberInsert")

	public String memberinsert() {

		return "./member/member_insert";

	}

	@PostMapping("/MemberInsert")

	public String memberinsert(Model model, MemberDTO memberDTO) {

		model.addAttribute("member", memberServiceImp.memberInsert(memberDTO));
		/*
		 * MemberDTO instedmember=memberServiceImp.memberInsert(memberDTO);
		 * model.addAttribute("member",instedmember);
		 */
		return "./member/member_insert_view";

	}

	
	  @GetMapping(value="/IdCheck",produces="application/json")
	  @ResponseBody
		public Map<String, Integer> idcheck(HttpServletRequest request, HttpServletResponse response) {
			logger.info("=============아이디 중복확인 get컨트롤러================");
			Map<String, Integer>resultMap = new HashMap<>();
			int result = memberServiceImp.memberIdCheck(request,response);

				if (result == 0) {
					logger.info("등록 가능한 아이디 ");
				}else if (result == 1) {
					logger.info("이미 등록된 아이디");
				}	
				resultMap.put("result", result);
			return resultMap;
		}

	/*
	 * logger.info("■■■■■■■■■■ 아이디체크들어옴"); int result =
	 * memberServiceImp.memberIdCheck(id);
	 * 
	 * 
	 * //리절트가 0과 1로 변형 되는 무언가가 없음 //리절트가 비어있으면 1 리절트가 비어있지 않으면 0?
	 * 
	 * 
	 * logger.info("■■■■■■■■■■ 아이디체크 쿼리 동작하고옴"); if (result == 1) {
	 * model.addAttribute("id", "존재하는 이름" + id);
	 * logger.info("■■■■■■■■■■ 아이디체크 리절트가 1일때 "); } else if (result == 0) {
	 * model.addAttribute("id", "존재하지않는 이름" + id);
	 * logger.info("■■■■■■■■■■ 아이디체크 리절트가 1이 아닐때 "); } return
	 * "./member/member_insert"; }
	 */
	  

	@GetMapping("/IdSearchCheck")

	public String idsearchcheck() {

		return "./login/id_search";

	}

	@PostMapping("/IdSearchCheck")

	public String idsearchcheck(Model model, MemberDTO memberDTO) {

		model.addAttribute("login", memberServiceImp.memberSearchId(memberDTO.getName(), memberDTO.getEmail()));
		return "./login/id_search_view";

	}

	@GetMapping("/PasswordCheck")

	public String passwordcheck() {

		return "./login/password_search";

	}

	@PostMapping("/PasswordCheck")

	public String passwordcheck(Model model, MemberDTO memberDTO) {

		model.addAttribute("login", memberServiceImp.memberSearchPassword(memberDTO.getId(), memberDTO.getEmail()));
		return "./login/password_search_view";

	}

}
