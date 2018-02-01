package yummyhome.back.filter;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import yummyhome.entity.Admin;

public class AdminLoginFilter implements Filter {

	private List<String> encludeList = new ArrayList<String>();
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain filterChain)
			throws IOException, ServletException 
	{	
		//获得session
		HttpServletRequest httpRequest = (HttpServletRequest)request;
		HttpSession session = httpRequest.getSession();
		
		HttpServletResponse httpRespone = (HttpServletResponse)response;
		
		String requestURI = httpRequest.getRequestURI();
		String uriLast = requestURI.substring(requestURI.lastIndexOf("/")+1);
		
		Admin admin = (Admin)session.getAttribute("adminLogined");
	
		//判断session中的admin是否为空
		if(admin!=null || encludeList.contains(uriLast))
		{
			filterChain.doFilter(request, response);
		}
		else
		{
			httpRespone.sendRedirect(httpRequest.getContextPath()+"/controller/back_control/tobackLogin.jsp");
		}
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		String encludes = filterConfig.getInitParameter("encludes");
		if(null!=encludes && !encludes.isEmpty()){
			String[] ss = encludes.split(",");
			encludeList.addAll(Arrays.asList(ss));
		}
	}

	
}
