package com.calaisweb.framework.base.interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;  
import org.springframework.web.servlet.ModelAndView;

import com.calaisweb.calaisweb.website.entity.extend.NavigationExtend;
import com.calaisweb.calaisweb.website.service.navigation.NavigationServiceImpl;  
   

public class SessionInter implements HandlerInterceptor {

	
	@Autowired
	private NavigationServiceImpl navigationServiceImpl;
	
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		  HttpSession session = request.getSession(true);  
		  // 从session 里面获取用户名的信息  
		  /*Object obj = session.getAttribute(Config.Passport.SESSION_NAME_LOGIN_RESULT);  
		  // 判断如果没有取到用户信息，就跳转到登陆页面，提示用户进行登陆  
		  if (obj == null || "".equals(obj.toString())) {  
			  response.sendRedirect(LOGIN_URL);  
		  }*/  
		  //初始化菜单导航存储到Session中
		  List<NavigationExtend> navigation=(List<NavigationExtend>) request.getSession().getAttribute("navigation");
		  if(navigation==null||navigation.size()==0) {
			//主导航菜单
			    List<NavigationExtend> navigationList=navigationServiceImpl.getNavigationShow();
			    request.getSession().setAttribute("navigation", navigationList);
		  }
		  return true;  
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

}
