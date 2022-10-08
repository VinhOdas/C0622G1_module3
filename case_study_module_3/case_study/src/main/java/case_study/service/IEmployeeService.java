package case_study.service;

import case_study.model.Employee;

import java.sql.SQLException;
import java.util.List;

public interface IEmployeeService {
     void insertEmployee(Employee employee) throws SQLException;

     List<Employee> selectAllEmployee();

     boolean deleteEmployee(int id) throws SQLException;

     boolean updateEmployee(Employee employee) throws SQLException;

    Employee findEmployeeById(int id);
}
