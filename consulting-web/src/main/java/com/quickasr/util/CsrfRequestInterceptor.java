package com.quickasr.util;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class CsrfRequestInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws IOException, Exception {
		if (!StringUtils.containsIgnoreCase(request.getPathInfo(), ".htm") && !StringUtils.equalsIgnoreCase("POST", request.getMethod()) 
				) {
			return true;
		}else if(StringUtils.containsIgnoreCase(request.getRequestURI(), "paymentSuccess") || StringUtils.containsIgnoreCase(request.getRequestURI(), "paymentFailure")){
			return true;
		}
			else {
			String sesToken = CsrfTokenGenerator.getTokenForSession(request.getSession(false));
			String reqToken = CsrfTokenGenerator.getTokenFromRequest(request);
			if (StringUtils.equals(sesToken, reqToken)) {
				return true;
			} else {
				SecurityContextHolder.clearContext();
				SecurityContextHolder.getContext().setAuthentication(null);
				throw new Exception("Invalid Token - Potential Csrf Attack");
			}
		}

	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
		if (request.getSession() != null) {
			request.setAttribute("Csrf_RQ_PARAM_NAME", CsrfTokenGenerator.getTokenForSession(request.getSession(false)));
		}
	}

}
