package kr.com.shop.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import kr.com.shop.vo.Member;

/**
 * 사용자 로그인 확인 인터셉터. HandlerInterceptorAdapter를 상속받아서 정의.
 */
public class LoginInterceptor extends HandlerInterceptorAdapter {
	private static final Logger logger = LoggerFactory.getLogger(LoginInterceptor.class);
	
	//request -> preHandle -> controller -> postHandle -> afterCompletion -> view 실행순서

	
	//콘트롤러의 메서드 실행 전에 처리
	//상속은 범위 는 public은 그윗단계로 바꿔도됨 매게변수 도 똑같이 이름도 똑같이  예외는 슈퍼의 밑에 단계로 바꾸어되됨
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		logger.debug("LoginInterceptor 실행");
		//세션의 로그인 정보 읽기
		HttpSession session = request.getSession(); //request 더블클릭 이면 getSession은 session 이란 하드디스크를 클릭해서  왼쪽에 담는거
		Member loginId = (Member) session.getAttribute("login");
		
		//로그인되지 않은 경우 로그인 페이지로 이동
		if (loginId == null) {
			//request.getContextPath()로 루트 경로를 구하여 절대 경로로 처리 즉 현재 웹의 최고 루트 예를 들어 localhost:8888/web5를 예로 들 수 있다
			response.sendRedirect(request.getContextPath() + "/member/loginMain"); //response 그 클릭한 하드디스크 안의  데이터들을 조작해서 보여주는 반환하는 것
			return false;
		}
		//로그인 된 경우 요청한 경로로 진행//기억나죠? this하고 super의 차이? 디스는 오버라이딩한 이놈이고 슈퍼는 부모 클래스 알죠?
		//그리고 if안이 false니까 당연이 밑은 true가나와야하죠 저희가 원래는 인터셉터가 있는데 이렇게 조작 못했어요 원래 그냥 원초적인것은 
		//이렇게 걸르는 과정이 없기에 바로 컨트롤러갈 수 있었습니다 그러니깐 그뜻은 부모의 것을 사용하면 무조건 true이기에 return 값을 저렇게 쓴것이다
		//저 값 대신 그냥 true라고 해도 상관없다.
		return super.preHandle(request, response, handler); //부모클래스의 메소드를 실행하여 반환해 오는것이다 // boolean 형 반환
	}

}
