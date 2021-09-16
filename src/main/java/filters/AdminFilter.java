package filters;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(filterName = "AdminFilter", urlPatterns = {"/admin/*"})
public class AdminFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest httpServletRequest = (HttpServletRequest) req;
        HttpServletResponse httpServletResponse = (HttpServletResponse) resp;
        HttpSession session = httpServletRequest.getSession();
        if (session.getAttribute("username_admin") == null && !httpServletRequest.getRequestURI().endsWith("admin/login")) {
            /* req.getRequestDispatcher("/WEB-INF/views/Admin/account/login.jsp").forward(req, resp);*/
            httpServletResponse.sendRedirect("admin/login");

        } else {
            chain.doFilter(req, resp);
        }
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
