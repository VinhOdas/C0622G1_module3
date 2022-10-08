package case_study.controller;

import case_study.model.Employee;
import case_study.service.impl.EmployeeService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "EmployeeServlet", urlPatterns = "/employee")
public class EmployeeServlet extends HttpServlet {

    private static EmployeeService employeeService = new EmployeeService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "add":
                insertEmployee(request, response);
                break;
            case "edit":
                editEmployee(request, response);
                break;
            default:
                listEmployee(request, response);
                break;

        }
    }

    private void editEmployee(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("idEmployee"));
        String nameEdit = request.getParameter("nameEmployee");
        String birthDay = request.getParameter("birthDay");
        String idCardEmployee = request.getParameter("idCardEmployee");
        double salaryEmployee = Double.parseDouble(request.getParameter("salaryEmployee"));
        String phone = request.getParameter("phoneNumberEmployee");
        String email = request.getParameter("emailEmployee");
        String address = request.getParameter("addressEmployee");
        int idPosition = Integer.parseInt(request.getParameter("idPosition"));
        int idEducationDegree = Integer.parseInt(request.getParameter("idEducationDegree"));
        int idDivision = Integer.parseInt(request.getParameter("idDivision"));
        String userName = request.getParameter("userName");
        Employee employee = new Employee(id,nameEdit, birthDay, idCardEmployee, salaryEmployee, phone, email, address, idPosition,
                idEducationDegree, idDivision, userName);
        employeeService.updateEmployee(employee);
        response.sendRedirect("/employee");
//        try {
////            RequestDispatcher dispatcher = request.getRequestDispatcher("view/employee/editEmployee.jsp");
////            dispatcher.forward(request, response);
//        } catch (ServletException | IOException e) {
//            e.printStackTrace();
//        }
    }

    private void insertEmployee(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter("nameEmployee");
        String birthDay = request.getParameter("birthDay");
        String idCardEmployee = request.getParameter("idCardEmployee");
        double salaryEmployee = Double.parseDouble(request.getParameter("salaryEmployee"));
        String phone = request.getParameter("phoneNumberEmployee");
        String email = request.getParameter("emailEmployee");
        String address = request.getParameter("addressEmployee");
        int idPosition = Integer.parseInt(request.getParameter("idPosition"));
        int idEducationDegree = Integer.parseInt(request.getParameter("idEducationDegree"));
        int idDivision = Integer.parseInt(request.getParameter("idDivision"));
        String userName = request.getParameter("userName");
        Employee employee = new Employee(name, birthDay, idCardEmployee, salaryEmployee, phone, email, address, idPosition,
                idEducationDegree, idDivision, userName);

            employeeService.insertEmployee(employee);
            RequestDispatcher dispatcher = request.getRequestDispatcher("view/employee/addEmployee.jsp");
            try {
                dispatcher.forward(request, response);
            } catch (ServletException | IOException e) {
                e.printStackTrace();
            }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {

            case "add":
                addFormEmployee(request, response);
                break;
            case "edit":
                showEditForm(request, response);
                break;
            case "delete":
                deleteEmployee(request, response);
                break;
            default:
                listEmployee(request, response);
                break;

        }

    }

    private void deleteEmployee(HttpServletRequest request, HttpServletResponse response) {
        int idEmployee = Integer.parseInt(request.getParameter("id"));
        boolean check = false;
        check = employeeService.deleteEmployee(idEmployee);
        String message = "Không xóa được";
        if (check) {
            message = "Xóa nhân viên thành công";
        }
        request.setAttribute("message", message);
        request.setAttribute("check", check);
        listEmployee(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        Employee employee = employeeService.findEmployeeById(id);

        try {
            request.setAttribute("employee", employee);
            request.getRequestDispatcher("view/employee/editEmployee.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void addFormEmployee(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/employee/addEmployee.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }


    }

    private void homeEmployee(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/employee/employee.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void listEmployee(HttpServletRequest request, HttpServletResponse response) {
        List<Employee> employeeList = employeeService.selectAllEmployee();
        request.setAttribute("listEmployee", employeeList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/employee/employee.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
