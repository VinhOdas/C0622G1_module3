package case_study.repository;

import case_study.model.ClassSub.Customer;

import java.util.List;

public interface ICustomerRepository {
    boolean updateCustomer(Customer customer);

    boolean deleteCustomer(int id);

    List<Customer> selectAllCustomer();

    void insertCustomer(Customer customer);

    Customer getCustomerById(int id);
}
