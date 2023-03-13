package Filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebFilter(filterName = "filter.CharFilter",urlPatterns ="/*")
public class CharFilter implements Filter {
    public void init(FilterConfig fConfig) throws ServletException {
        System.out.println("非法文字过滤器初始化！");
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) resp;

        //加：设置编码格式
        req.setCharacterEncoding("utf-8");

        // 接受聊天内容
        String charContent = request.getParameter("charContent");
        String[] words = {"垃圾","笨蛋","毒"};
        if (charContent != null) {
            boolean flag = false;
            for(int i=0;i<words.length;i++) {
                flag = charContent.contains(words[i]);
                if (flag) {
                    break;
                }
            }
                if(!flag){
                    chain.doFilter(request,response);
                }
                else {
                    request.getRequestDispatcher("SendFailure.jsp").forward(request, response);
                }
            }
        else {
            chain.doFilter(request, response);
        }
    }

    public void destroy() {
        System.out.println("非法文字过滤器销毁！");
    }

}

