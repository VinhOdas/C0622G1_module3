package case_study.repository.impl;

import case_study.model.ClassSub.Employee;
import case_study.repository.IEmployeeRepository;

import java.math.BigDecimal;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class EmployeeRepository implements IEmployeeRepository {
    private String URL = "jdbc:mysql://localhost:3306/data_furama ?useSSL=false";
    private String Username = "root";
    private String Password = "Vinh1010";
    private static final String INSERT_EMPLOYEE_SQL = "INSERT INTO employee" +
            " ( name, date_of_birth, id_card,salary," +
            "phone_number,email,address," +
            "position_id,education_degree_id,division_id,username) VALUES (?,?,?,?,?,?,?,?,?,?,?);";
    private static final String SELECT_ALL_EMPLOYEE = "select * from employee";

    public EmployeeRepository() {

    }

    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(URL, Username, Password);
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
            preparedStatement.setString(1, employee.getNameEmployee());
            preparedStatement.setString(2, employee.getBirthDay());
            preparedStatement.setString(3, employee.getIdCardEmployee());
            preparedStatement.setString(4, String.valueOf(employee.getSalaryEmployee()));
            preparedStatement.setString(5, employee.getPhoneNumberEmployee());
            preparedStatement.setString(6, employee.getEmailEmployee());
            preparedStatement.setString(7, employee.getAddressEmployee());
            preparedStatement.setString(8, String.valueOf(employee.getIdPosition()));
            preparedStatement.setString(9, String.valueOf(employee.getIdEducationDegree()));
            preparedStatement.setString(10, String.valueOf(employee.getIdDivision()));
            preparedStatement.setString(11, employee.getUserName());
            System.out.println(preparedStatement);
            preparedStatement.executeLargeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }

    private void printSQLException(SQLException e) {

    }

    @Override
    public List<Employee> selectAllEmployee() {
        List<Employee> employees = new ArrayList<>();
        BigDecimal bd;
        try (Connection connection = getConnection();

             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_EMPLOYEE);) {
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String birthDay = rs.getString("date_of_birth");
                String idCard = rs.getString("id_card");
                double salary = rs.getDouble("salary");

                String phone = rs.getString("phone_number");
                String email = rs.getString("email");
                String address = rs.getString("address");
                int positionId = rs.getInt("position_id");
                int educationDegreeId = rs.getInt("education_degree_id");
                int divisionId = rs.getInt("division_id");
                String userName = rs.getString("username");
                employees.add(new Employee(id, name, birthDay, idCard, salary, phone, email, address, positionId,
                        educationDegreeId, divisionId, userName));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return employees;
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
