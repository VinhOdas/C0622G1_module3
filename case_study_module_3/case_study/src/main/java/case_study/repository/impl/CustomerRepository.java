package case_study.repository.impl;

import case_study.model.ClassSub.Customer;
import case_study.model.ClassSub.Employee;
import case_study.repository.ICustomerRepository;

import java.math.BigDecimal;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepository implements ICustomerRepository {
    private String URL = "jdbc:mysql://localhost:3306/data_furama ?useSSL=false";
    private String Username = "root";
    private String Password = "Vinh1010";
    private static final String SELECT_ALL_CUSTOMER = "select * from customer where is_delete = 0";
    private static final String INSERT_CUSTOMER_SQL = "INSERT INTO customer (name, date_of_birth,gender,id_card,phone_number,email,address,customer_type_id) VALUES (?, ?, ?,?,?, ?, ?,?)";
    private static final String DELETE_CUSTOMERS_SQL = "update customer  set is_delete= 1 where id = ?;";
    private static final String FIND_BY_ID = "select * from customer where id = ?";
    private static final String UPDATE_CUSTOMER_SQL = "update customer set name = ?,date_of_birth= ?,gender =?,id_card =?,phone_number =?,email =?,address =? ,customer_type_id =?  where id = ? and is_delete = 0";
    ;

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
    public boolean updateCustomer(Customer customer) {
        boolean rowUpdated = false;
        try {
            try (Connection connection = getConnection();
            ) {
                try {
                    try (PreparedStatement statement = connection.prepareStatement(UPDATE_CUSTOMER_SQL);) {
                        statement.setString(1, customer.getNameCustomer());
                        statement.setString(2, customer.getBirthDay());
                        statement.setBoolean(3, customer.isGender());
                        statement.setString(4, String.valueOf(customer.getIdCard()));
                        statement.setString(5, String.valueOf(customer.getPhone()));
                        statement.setString(6, customer.getEmail());
                        statement.setString(7, customer.getAddress());
                        statement.setString(8, String.valueOf(customer.getCustomerTypeId()));
                        statement.setString(9, String.valueOf(customer.getIdCustomer()));
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
    public boolean deleteCustomer(int id) {
        boolean rowDeleted = false;
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(DELETE_CUSTOMERS_SQL);) {
            statement.setInt(1, id);
            rowDeleted = statement.executeUpdate() > 0;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return rowDeleted;
    }

    @Override
    public List<Customer> selectAllCustomer() {
        List<Customer> customers = new ArrayList<>();
        BigDecimal bd;
        try (Connection connection = getConnection();

             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_CUSTOMER);) {
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String birthDay = rs.getString("date_of_birth");
                Boolean gender = rs.getBoolean("gender");
                int idCard = rs.getInt("id_card");
                int phone = rs.getInt("phone_number");
                String email = rs.getString("email");
                String address = rs.getString("address");
                int customerTypeId = rs.getInt("customer_type_id");
                customers.add(new Customer(id, name, birthDay, gender, idCard, phone, email, address, customerTypeId));
            }
        } catch (SQLException e) {

        }
        return customers;
    }

    @Override
    public void insertCustomer(Customer customer) {
        System.out.println(INSERT_CUSTOMER_SQL);
        try (Connection connection = getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(INSERT_CUSTOMER_SQL)) {
            preparedStatement.setString(1, customer.getNameCustomer());
            preparedStatement.setString(2, customer.getBirthDay());
            preparedStatement.setBoolean(3, customer.isGender());
            preparedStatement.setString(4, String.valueOf(customer.getIdCard()));
            preparedStatement.setString(5, String.valueOf(customer.getPhone()));
            preparedStatement.setString(6, customer.getEmail());
            preparedStatement.setString(7, customer.getAddress());
            preparedStatement.setString(8, String.valueOf(customer.getCustomerTypeId()));
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }


    }

    @Override
    public Customer getCustomerById(int id) {
        Customer customer = null;
        Connection connection = getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(FIND_BY_ID);
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int idCustomer = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String date_of_birth = resultSet.getString("date_of_birth");
                Boolean gender = Boolean.valueOf(resultSet.getString("gender"));
                int id_card = resultSet.getInt("id_card");
                int phone_number = Integer.parseInt(resultSet.getString("phone_number"));
                String email = resultSet.getString("email");
                String address = resultSet.getString("address");
                int customer_type_id = resultSet.getInt("customer_type_id");
                customer = new Customer(idCustomer,name,date_of_birth,gender,id_card,phone_number,email,address,customer_type_id);

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customer;
    }
}
