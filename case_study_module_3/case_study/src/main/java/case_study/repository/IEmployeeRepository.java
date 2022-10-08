package case_study.repository;

import case_study.model.Employee;

import java.util.List;

public interface IEmployeeRepository {
    void insertEmployee(Employee employee);

    List<Employee> selectAllEmployee();

    boolean deleteEmployee(int id);

    boolean updateEmployee(Employee employee);

    Employee findEmployeeById(int id);

}
