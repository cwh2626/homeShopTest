package kr.com.shop.interceptor;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import kr.com.shop.dao.MemberDAO;
import kr.com.shop.vo.Member;

public class AutoLoginInterceptor extends HandlerInterceptorAdapter {
	
	@Autowired
	MemberDAO mdao;
	
	private static final Logger logger = LoggerFactory.getLogger(AutoLoginInterceptor.class);

	//request -> preHandle -> controller -> postHandle -> afterCompletion -> view 실행순서
	
	
	//콘트롤러의 메서드 실행 전에 처리 
	//상속은 범위 는 public은 그윗단계로 바꿔도됨 매게변수 도 똑같이 이름도 똑같이  예외는 슈퍼의 밑에 단계로 바꾸어되됨
	//자동로그인 쿠키 존재유무 확인 인터셉터
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		logger.debug("autoLoginInterceptor 실행");
		
		// 먼저 로그인세션 확인
		HttpSession session = request.getSession(); //request 더블클릭 이면 getSession은 session 이란 하드디스크를 클릭해서  왼쪽에 담는거
		Member loginId = (Member) session.getAttribute("login");
		
		// 로그인이 세션이 없는것을 확인 후 자동로그인쿠키가 있는지 확인
		if (loginId == null) {
			
			Cookie[] myCookies = request.getCookies(); 
		    for(Cookie cook : myCookies) {
		    	if(cook.getName().equals("cookieEmail")){ // 자동로그인쿠키 이름은 cookiEmail 
		    		if(cook.getValue()!=null) {	 // 해당 쿠키가 있으면 값이 있는지 확인
		    			
		    			// 값이 있다는것은 즉 자동로그인을 선택했었다는 의미로 바로 이메일값을 이용해 DB에서 회원데이터를 갖고와서 세션이 담아준다.
		    			Member result = mdao.emailAllInformation(cook.getValue());
		    			session.setAttribute("login", result);
		    			session.setAttribute("loginNickname", result.getNickname());
		    			session.setAttribute("loginName", result.getName());
		    			session.setAttribute("loginEmail", result.getEmail());
		    			logger.debug("autoLoginInterceptor emil ===> {}",result.getEmail());
		    			break;
		    		}
		    	}
		    }
		    
		}		
		
		return super.preHandle(request, response, handler); //부모클래스의 메소드를 실행하여 반환해 오는것이다 // boolean 형 반환
	}

}
