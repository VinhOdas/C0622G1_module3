package controller;

import model.Customer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

    @WebServlet(name = "DisplayLibraryListServlet", urlPatterns = "/display")
public class DisplayLibraryListServlet extends HttpServlet {
    private static List<Customer> customerList = new ArrayList<>();

    static {
        customerList.add(new Customer(1,"Mai Văn Hoàn","1983-08-05","Hà Nội"));
        customerList.add(new Customer(2,"Mai Văn Hoàn1","1983-08-05","Đà Nẵng"));
        customerList.add(new Customer(3,"Mai Văn Hoàn2","1983-08-05","Hà Nội"));
        customerList.add(new Customer(4,"Mai Văn Hoàn3","1983-08-05","Hà Nội"));
        customerList.add(new Customer(5,"Mai Văn Hoàn4","1983-08-05","Hà Nội"));
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        request.setAttribute("listServlet",customerList);
        request.getRequestDispatcher("display.jsp").forward(request,response);
    }
}
