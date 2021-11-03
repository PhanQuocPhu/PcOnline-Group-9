package filters;

import entity.Admins;
import entity.Users;
import utils.ServletUtils;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(filterName = "GuestFilter", urlPatterns = {"/homa/cart/checkout"})
public class GuestFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) resp;

        String cpath = request.getContextPath();
        String reqAction = request.getRequestURI().replace(cpath, "");

        HttpSession session = request.getSession();

        Users user= (Users) session.getAttribute("user");

        if (user == null && !request.getRequestURI().endsWith("home/login")) {
            /*req.getRequestDispatcher("/WEB-INF/views/Admin/account/login.jsp").forward(req, resp);*/
            ServletUtils.redirect("/home/login", request, response);
        } else {
            chain.doFilter(req, resp);
        }
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
