package kr.com.shop.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.com.shop.dao.MemberDAO;
import kr.com.shop.vo.Member;

@RequestMapping("member")
@Controller
public class MemberController {
	
	@Autowired
	MemberDAO mdao;
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@RequestMapping(value ="signUpMain", method = RequestMethod.GET)
	public String signUpMain() {
		return "member/signUp";
	}
	
	@RequestMapping(value ="signUp", method = RequestMethod.POST)
	public String signUp(Member member) {
		logger.debug("Meber ==> {}", member);
		int result = mdao.insert(member);
		
		if(result != 0) {
			return "redirect:/member/loginMain";
		}
		
		return "member/signUp";
	}
	
	@RequestMapping(value ="loginMain", method = RequestMethod.GET)
	public String loginMain() {
		return "member/login";
	}
	
	@RequestMapping(value ="login", method = RequestMethod.POST)
	public String login(Member member,HttpSession session) {
		logger.debug("Meber ==> {}", member);
		Member result = mdao.login(member.getEmail());
		
		if(result != null && result.getPassword().equals(member.getPassword())) {
			session.setAttribute("login", result);
			session.setAttribute("loginNickname", result.getNickname());
			session.setAttribute("loginName", result.getName());
			session.setAttribute("loginEmail", result.getEmail());
		}else {
			return "member/login";
		}
		return "redirect:/";
	}
	
	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}

}
