package case_study.service;

import case_study.model.ClassSub.Employee;

import java.sql.SQLException;
import java.util.List;

public interface IEmployeeService {
    public void insertEmployee(Employee employee) throws SQLException;

    public List<Employee> selectAllEmployee();

    public boolean deleteEmployee(int id) throws SQLException;

    public boolean updateEmployee(Employee employee) throws SQLException;
}
