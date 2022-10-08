package case_study.service.impl;

import case_study.model.ClassSub.Employee;
import case_study.repository.IEmployeeRepository;
import case_study.repository.impl.EmployeeRepository;
import case_study.service.IEmployeeService;

import java.sql.SQLException;
import java.util.List;

public class EmployeeService implements IEmployeeService {
    private IEmployeeRepository employeeRepository = new EmployeeRepository();
    @Override
    public void insertEmployee(Employee employee)  {
        employeeRepository.insertEmployee(employee);
    }

    @Override
    public List<Employee> selectAllEmployee() {
        return employeeRepository.selectAllEmployee();
    }

    @Override
    public boolean deleteEmployee(int id)  {
        return employeeRepository.deleteEmployee(id);
    }

    @Override
    public boolean updateEmployee(Employee employee)  {
        return employeeRepository.updateEmployee(employee);
    }

    @Override
    public Employee findEmployeeById(int id) {
        return employeeRepository.findEmployeeById(id);
        
    }
}
