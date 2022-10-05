package case_study.repository.impl;

import case_study.model.ClassSub.Employee;
import case_study.repository.IEmployeeRepository;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

public class EmployeeRepository implements IEmployeeRepository {
    private String URL = "jdbc:mysql://localhost:3306/demo ?useSSL=false";
    private String Username = "root";
    private String Password = "Vinh1010";
    private static final String INSERT_EMPLOYEE_SQL = "INSERT INTO employee" +
            " (id_employee, name_employee, date_of_birth_employee, id_card_employee,salary_employee," +
            "phone_number_employee,email_employee,address_employee) VALUES (?,?,?,?,?,?,?,?);";

    public EmployeeRepository() {

    }

    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(URL,Username,Password);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return connection;
    }

    @Override
    public void insertEmployee(Employee employee) {
        System.out.println(INSERT_EMPLOYEE_SQL);
        // try-with-resource statement will auto close the connection.
        try (Connection connection = getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(INSERT_EMPLOYEE_SQL)) {
            preparedStatement.setString(1, String.valueOf(employee.getIdEmployee()));
            preparedStatement.setString(2, employee.getNameEmployee());
            preparedStatement.setString(3, employee.getBirthDay());
            preparedStatement.setString(4, employee.getIdCardEmployee());
            preparedStatement.setString(5, String.valueOf(employee.getSalaryEmployee()));
            preparedStatement.setString(6, employee.getPhoneNumberEmployee());
            preparedStatement.setString(7, employee.getEmailEmployee());
            preparedStatement.setString(8, employee.getAddressEmployee());
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }

    private void printSQLException(SQLException e) {

    }

    @Override
    public List<Employee> selectAllEmployee() {
        return null;
    }

    @Override
    public boolean deleteEmployee(int id) {
        return false;
    }

    @Override
    public boolean updateEmployee(Employee employee) {
        return false;
    }
}
