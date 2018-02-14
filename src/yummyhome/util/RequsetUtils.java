package yummyhome.util;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RequsetUtils {

	public static void forward(String target, HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException
	{
		RequestDispatcher dispatcher = request.getRequestDispatcher(target);
		dispatcher.forward(request, response);
	}
}
