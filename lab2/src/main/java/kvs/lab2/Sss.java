package kvs.lab2;

import java.io.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

public class Sss extends HttpServlet {
    private String message;
    public Sss() {
        message = "Servlet constructor!";
        System.out.println(message);
    }

    public void init() {
        message = "Servlet init!";
        System.out.println(message);
    }

//    @Override
//    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        message = "Servlet service!";
//        System.out.println(message);
//
//        PrintWriter pw = resp.getWriter();
//        pw.println("Method: " + req.getMethod());
//        pw.println("Service " + req.getMethod());
//        pw.println("ServerName: " + req.getServerName());
//        pw.println("Local Address: " + req.getLocalAddr());
//        pw.close();
//        System.out.println("Sss: service");
//        if(rq.getMethod().equals("GET")) {
//            serveGet(rq, rs);
//        } else if(rq.getMethod().equals("POST")) {
//            servePost(rq, rs);
//        }
//    }

    protected void doPost(HttpServletRequest rq, HttpServletResponse rs) throws ServletException, IOException {
        rs.setContentType("text/html");
        PrintWriter pw = rs.getWriter();
        System.out.println("Sss: servePost");
        pw.println("<html><body>"
                + "<br>Ppp:doPost:firstname = " + rq.getParameter("firstname")
                + "<br>Ppp:doPost:lastname = " + rq.getParameter("lastname")
                + "</body></html>");
        pw.close();
    }

    protected void doGet(HttpServletRequest rq, HttpServletResponse rs) throws ServletException, IOException {
        rs.setContentType("text/html");
        PrintWriter pw = rs.getWriter();
        System.out.println("Sss: serveGet");
        pw.println("<html><body>"
                +"<br>Sss: FirstName = " + rq.getParameter("firstname")
                +"<br>Sss: LastName = " + rq.getParameter("lastname")
                +"<br>Sss: getQueryString: " + rq.getQueryString()
                +"</body></html>");
        pw.close();
    }

    public void destroy() {
        message = "Servlet destroy!";
        System.out.println(message);
    }
}