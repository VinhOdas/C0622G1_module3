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
    private static final String INSERT_EMPLOYEE_SQL = "INSERT INTO employee(`name`, `date_of_birth`, `id_card`, `salary`, `phone_number`, `email`, `address`, `position_id`, `education_degree_id`, `division_id`,`username`) VALUES(?,?,?,?,?,?,?,?,?,?,?)";
    private static final String FIND_BY_ID = "select * from employee where id = ?";
    private static final String DELETE_EMPLOYEES_SQL = " update employee set is_delete=1 where id = ?;";
    private static final String DISPLAY_ALL_EMPLOYEE = "SELECT * FROM employee where is_delete = 0 ";
    private static final String UPDATE_EMPLOYEES_SQL = "update employee set name = ?,date_of_birth= ?,id_card =?,salary =?,phone_number =?,email =?,address =? ,position_id =?,education_degree_id =?,division_id =?  where id = ? and is_delete = 0";

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
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }

    private void printSQLException(SQLException e) {

    }

    @Override
    public List<Employee> selectAllEmployee() {
        List<Employee> employees = new ArrayList<>();
        try (Connection connection = getConnection();

             PreparedStatement preparedStatement = connection.prepareStatement(DISPLAY_ALL_EMPLOYEE);) {
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
        boolean rowDelete = false;
        Connection connection = getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE_EMPLOYEES_SQL);
            preparedStatement.setInt(1, id);
            rowDelete = preparedStatement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return rowDelete;
    }

    @Override
    public boolean updateEmployee(Employee employee) {
        boolean rowUpdated = false;
        try {
            try (Connection connection = getConnection();
            ) {
                try {
                    try (PreparedStatement statement = connection.prepareStatement(UPDATE_EMPLOYEES_SQL);) {
                        statement.setString(1, employee.getNameEmployee());
                        statement.setString(2, employee.getBirthDay());
                        statement.setString(3, employee.getIdCardEmployee());
                        statement.setString(4, String.valueOf(employee.getSalaryEmployee()));
                        statement.setString(5, employee.getPhoneNumberEmployee());
                        statement.setString(6, employee.getEmailEmployee());
                        statement.setString(7, employee.getAddressEmployee());
                        statement.setString(8, String.valueOf(employee.getIdPosition()));
                        statement.setString(9, String.valueOf(employee.getIdEducationDegree()));
                        statement.setString(10, String.valueOf(employee.getIdDivision()));
                        statement.setString(11, String.valueOf(employee.getIdEmployee()));

                        rowUpdated = statement.executeUpdate() > 0;
                    }
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return rowUpdated;
    }

    @Override
    public Employee findEmployeeById(int id) {
        Employee employee = null;
        Connection connection = getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(FIND_BY_ID);
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int employeeId = resultSet.getInt("id");
                String employeeName = resultSet.getString("name");
                String employeeBirthday = resultSet.getString("date_of_birth");
                String employeeIdCard = resultSet.getString("id_card");
                double employeeSalary = resultSet.getInt("salary");
                String employeePhone = resultSet.getString("phone_number");
                String employeeEmail = resultSet.getString("email");
                String employeeAddress = resultSet.getString("address");
                int positionId = resultSet.getInt("position_id");
                int educationDegreeId = resultSet.getInt("education_degree_id");
                int divisionId = resultSet.getInt("division_id");
                String username = resultSet.getString("username");

                employee = new Employee(employeeId, employeeName, employeeBirthday, employeeIdCard, employeeSalary,
                        employeePhone, employeeEmail, employeeAddress, positionId, educationDegreeId, divisionId, username);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return employee;
    }
}


