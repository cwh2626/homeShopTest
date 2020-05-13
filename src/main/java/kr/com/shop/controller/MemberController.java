package kr.com.shop.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.com.shop.dao.MemberDAO;
import kr.com.shop.service.UserMailSendService;
import kr.com.shop.vo.Member;

@RequestMapping("member")
@Controller
public class MemberController {
	
	/**
	 *스프링은 보통 싱글톤이라고 하여 보통의 한 스레드당 한개의 객체를 이용하지만 스프링에서는 좀 더 효울적으로 여러 스레드를 한 객체로 처리하려고 하는 속성이 있다.
	 *그렇기에 여러 어너테이션이 있으며 객체를 한번만 생성하여 모두 공유하려 사용하려고 한다 그렇기에 root-context에 클래스를 빈으로 설정하여 한번 실행할떄 객체가 생성되어 어느 곳에서 
	 * new 형식으로 객체를 생성하지않고도 한 객체로 자유롭게 공유하여 사용 할 수 있는 것이다. 
	 * 여기서 @Autowired는 빈에 생성된 객체를 불러오는 기능이다 이 기능을 이용하면 new 객체를 만들지 않고도 한번 생성되어있는 객체를 바로 사용할 수 있는것이다.
	 * 그리고 현재 @Autowired 한 MemberDAO는 원래 같으면 root-context에 been설정이 되어있어야하지만 MemberDAO클래스는 @Repository 어너테이션으로 지정 했기에 빈에 설정을 안해도
	 * 빈에 설정한거같은 기능을 나타낸다
	 * @Repository 를 좀 더 구체적으로 들어가보자
	 * 비슷한 기능으로 @Controller,@repository @service가 있다 이 기능들은 @Component의 자식격이라고 생각하면 된다 기능은 대부분 비슷하지만 미세하게 차이나며
	 * 모든 클래스에 그냥 @Component로 통일해도 되지만 미세한 기능차와 가독성을 위해 저렇게 세분화해서 사용되고있다고 한다.
	 */
	@Autowired //주의!!: @Autowired 개당 하나씩만 가능
	MemberDAO mdao;
	@Autowired 
	UserMailSendService mailsender;


	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	/**
	 * 회원가입 페이지로 이동
	 * @param session 로그인 확인용
	 * @return
	 */
	@RequestMapping(value ="signUpMain", method = RequestMethod.GET)
	public String signUpMain(HttpSession session) {
		
		// 로그인되어있는 상태이면 홈으로 이동
		if(session.getAttribute("login") != null) {
			return "redirect:/";

		}
		return "member/signUp";
	}
	
	/**
	 * 회원등록 컨트롤러
	 * @param member 넘어온 회원 데이터
	 * @param detailAddress 상세주소 
	 * @return
	 */
	@RequestMapping(value ="signUp", method = RequestMethod.POST)
	public String signUp(Member member, @RequestParam(value="detailAddress", defaultValue="") String detailAddress) {
	
		// 상세주소 붙이기
		if(!detailAddress.equals("")) member.setAddress(member.getAddress()+" , "+detailAddress);
		
		logger.debug("Meber ==> {}", member);
		logger.debug("detailAddress ==> {}", detailAddress);
		logger.debug("newAddress==> {}", member.getAddress());
		
		// 회원등록 확인 
		int result = mdao.insert(member);
		 
		// 음 회원등록 화면을 만들어볼까? 
		if(result != 0) {
			return "redirect:/member/loginMain";
		}
		
		return "member/signUp";
	}
	
	/**
	 * 이메일 인증체크 함수 
	 * @param email 체크할 이메일
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value ="signUpEmailCheck", method = RequestMethod.POST)
	public String signUpEmailCheck(String email) {
		logger.debug("email ==> {}", email);
		
		// 이메일 존재유무 확인
		Member result = mdao.emailAllInformation(email);
		
		// 존재하면 등록된 메일이므로 등록불가를 뜻하는 1를 반환
		if(result != null) { 
			return "1";
			
		}else {
			
			// 존재하지 않으면 등록가능한 메일이므로 바로 해당메일로 인증번호를 보내고 인증번호값을 반환
			String key = mailsender.mailSendWithUserKey(email);
			
			return key;
			
		}
	}
	
	@ResponseBody
	@RequestMapping(value ="signUpNicknameCheck", method = RequestMethod.POST)
	public String signUpNicknameCheck(String nickname) {
		logger.debug("nickname ==> {}", nickname);
		Member result = mdao.nicknameAllInformation(nickname);
		if(result != null) {
			
			return "1";
			
		}else {
			
			return "0";
		}
	}
	

	/**
	 * 로그인 메인화면
	 * @param session 로그인되었는지 확인 세션
	 * @return
	 */
	@RequestMapping(value ="loginMain", method = RequestMethod.GET)
	public String loginMain(HttpSession session) {
		
		// 로그인이 되었다면 홈으로 리다이렉트
		if(session.getAttribute("login") != null ) {
			return "redirect:/";
			
		}
		return "member/login";
	}
	
	
	/**
	 * 로그인 함수
	 * @param member 회원으로부터 이메일과 비밀번호를 받음
	 * @param session 로그인 성공시 저장용 세션
	 * @param autologinCheck 자동로그인 
	 * @param response 쿠키용 
	 * @return
	 */
	@RequestMapping(value ="login", method = RequestMethod.POST)
	public String login(Member member,HttpSession session,String autologinCheck, HttpServletResponse response, Model model) {
		logger.debug("Meber ==> {}", member);
		
		// 받아온 이메일로 회원데이터 가져옮
		Member result = mdao.emailAllInformation(member.getEmail());
		
		// 가져온 데이터의 비밀번호와 회원이 입력한 비밀번호를 대조
		if(result != null && result.getPassword().equals(member.getPassword())) {
			
			// true면 로그인 세션에 저장
			session.setAttribute("login", result);
			session.setAttribute("loginNickname", result.getNickname());
			session.setAttribute("loginName", result.getName());
			session.setAttribute("loginEmail", result.getEmail());
			
			// 자동로그인 true면 쿠키실행
			if(autologinCheck != null) {
				
				// 쿠키값은 해당회원의 이메일을 저장
				Cookie myCookie = new Cookie("cookieEmail", result.getEmail());
			    myCookie.setMaxAge(60*60*24*30); // 수명설정(초단위) 30일
			    myCookie.setPath("/"); // 모든 경로에서 접근 가능 하도록 설정
			    response.addCookie(myCookie);
			}
		}else {
			model.addAttribute("loginMiss", "1");
			return "member/login";
		}
		return "redirect:/";
	}
	
	/**
	 * 로그아웃 함수
	 * @param session 제거용 세션
	 * @param response 쿠키 제거용
	 * @return
	 */
	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String logout(HttpSession session, HttpServletResponse response) {
		
		// 쿠키는 따로 제거 메서드가 없기에 똑같은 이름으로 만들어서 생명주기를 0으로 해주고 그것을 회원에게 다시 덮여씌어서 저장하므로 없앰
		Cookie myCookie = new Cookie("cookieEmail", null);
	    myCookie.setMaxAge(0); // 수명설정(초단위)
	    myCookie.setPath("/"); // 모든 경로에서 접근 가능 하도록 설정
	    response.addCookie(myCookie);
	    
	    // 모든 세션 제거
		session.invalidate();
		return "redirect:/";
	}
	
  
}
