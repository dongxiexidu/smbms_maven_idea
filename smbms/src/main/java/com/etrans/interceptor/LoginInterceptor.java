package com.etrans.interceptor;


import com.etrans.util.Constants;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request,HttpServletResponse response,Object handler) throws IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        Object obj = (Object) request.getSession().getAttribute(Constants.USER_SESSION);

        System.out.println("preHandle------------拦截"+obj);
//        if (obj == null || obj == ""){
//            response.sendRedirect("../error.jsp");
//            return false;
//        }
        return true;
    }
}
